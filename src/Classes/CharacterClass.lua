do
-- App locals
local appName,app = ...;
local Colorize = app.Modules.Color.Colorize;

-- Global locals
local C_CreatureInfo_GetClassInfo, C_CreatureInfo_GetRaceInfo
	= C_CreatureInfo.GetClassInfo, C_CreatureInfo.GetRaceInfo;
local RAID_CLASS_COLORS, GetPlayerInfoByGUID, UnitClass, UnitGUID, UnitIsGroupLeader, UnitRace
	= RAID_CLASS_COLORS, GetPlayerInfoByGUID, UnitClass, UnitGUID, UnitIsGroupLeader, UnitRace;
local math_floor, rawget, rawset, setmetatable, strsplit
	= math.floor, rawget, rawset, setmetatable, strsplit;

-- Class Info Helpers
local ClassIcons = {
	[1] = app.asset("ClassIcon_Warrior"),
	[2] = app.asset("ClassIcon_Paladin"),
	[3] = app.asset("ClassIcon_Hunter"),
	[4] = app.asset("ClassIcon_Rogue"),
	[5] = app.asset("ClassIcon_Priest"),
	[6] = app.asset("ClassIcon_DeathKnight"),
	[7] = app.asset("ClassIcon_Shaman"),
	[8] = app.asset("ClassIcon_Mage"),
	[9] = app.asset("ClassIcon_Warlock"),
	[10] = app.asset("ClassIcon_Monk"),
	[11] = app.asset("ClassIcon_Druid"),
	[12] = app.asset("ClassIcon_DemonHunter"),
	[13] = app.asset("ClassIcon_Evoker"),
};
local ClassInfoByID, ClassInfoByClassFile, ClassInfoByClassName = {}, {}, {};
local GetSpecializationInfoByID, SpecInfoMetatable = GetSpecializationInfoByID;
if GetSpecializationInfoByID then
	SpecInfoMetatable = { __index = function(t, key)
		local specID = math_floor(key);
		if specID ~= key then
			specID = math_floor((1000 * (key - specID)) + 0.00001);
		end
		local specID, name, description, icon, role, classFile = GetSpecializationInfoByID(specID);
		if name then
			local specInfo = {
				name = name,
				specID = specID,
				description = description,
				icon = icon,
				role = role
			};
			local classInfo = ClassInfoByClassFile[classFile];
			if classInfo then
				setmetatable(specInfo, { __index = classInfo });
				specInfo.text = Colorize(name, classInfo.colorStr);
			else
				specInfo.text = Colorize(name, app.Colors.SourceIgnored);
			end
			specInfo.icontext = "|T" .. icon .. ":0|t " .. specInfo.text;
			rawset(t, key, specInfo);
			return specInfo;
		end
		
		local info = {
			icon = ClassIcons[key] or "Interface\\Icons\\INV_Misc_QuestionMark",
			file = "WARRIOR",
			name = UNKNOWN,
			classID = key,
			colorStr = app.Colors.SourceIgnored,
			text = Colorize(UNKNOWN, app.Colors.SourceIgnored),
			isValid = false,
			c = { key },
		};
		info.icontext = "|T" .. info.icon .. ":0|t " .. info.text;
		rawset(t, key, info);
		return info;
	end };
else
	SpecInfoMetatable = { __index = function(t, key)
		local info;
		local specID = math_floor(key);
		if specID ~= key then
			info = rawget(t, specID);
		end
		if not info then
			info = {
				icon = ClassIcons[key] or "Interface\\Icons\\INV_Misc_QuestionMark",
				file = "WARRIOR",
				name = UNKNOWN,
				classID = specID,
				colorStr = app.Colors.SourceIgnored,
				text = Colorize(UNKNOWN, app.Colors.SourceIgnored),
				isValid = false,
			};
			info.icontext = "|T" .. info.icon .. ":0|t " .. info.text;
		end
		rawset(t, specID, info);
		return info;
	end };
end
local ClassInfoMetatableAfterCache = { __index = function(t, key)
	local info = {
		icon = "Interface\\Icons\\INV_Misc_QuestionMark",
		file = WARRIOR,
		name = UNKNOWN,
		classID = 0,
		colorStr = app.Colors.SourceIgnored,
		text = Colorize(UNKNOWN, app.Colors.SourceIgnored),
		isValid = false,
	};
	info.icontext = "|T" .. info.icon .. ":0|t " .. info.text;
	rawset(t, key, info);
	return info;
end };
local ClassInfoMetatable = { __index = function(t, key)
	for classID,_ in pairs(ClassIcons) do
		local info = C_CreatureInfo_GetClassInfo(classID);
		if info then
			local colors = RAID_CLASS_COLORS[info.classFile];
			local colorStr = (colors and colors.colorStr) or app.Colors.SourceIgnored;
			info = {
				icon = ClassIcons[classID],
				file = info.classFile,
				name = info.className,
				classID = classID,
				colorStr = colorStr,
				text = Colorize(info.className, colorStr),
				isValid = not not colors,
				c = { classID },
			};
			info.icontext = "|T" .. info.icon .. ":0|t " .. info.text;
			
			rawset(ClassInfoByID, classID, info);
			rawset(ClassInfoByClassFile, info.file, info);
			rawset(ClassInfoByClassName, info.name, info);
		end
	end
	setmetatable(ClassInfoByID, SpecInfoMetatable);
	setmetatable(ClassInfoByClassFile, ClassInfoMetatableAfterCache);
	setmetatable(ClassInfoByClassName, ClassInfoMetatableAfterCache);
	return t[key];
end };
setmetatable(ClassInfoByID, ClassInfoMetatable);
setmetatable(ClassInfoByClassFile, ClassInfoMetatable);
setmetatable(ClassInfoByClassName, ClassInfoMetatable);

-- Implementation
app.CreateCharacterClass = app.CreateClassWithInfo("CharacterClass", "classID", ClassInfoByID, {
	["nmc"] = function(t)
		return t.classID ~= app.ClassIndex;
	end,
	["ignoreSourceLookup"] = function(t)
		return true;
	end,
});
app.CreateUnit = app.CreateClass("Unit", "unit", {
	["text"] = function(t)
		return t.classText;
	end,
	["info"] = function(t)
		local unit = t.unit;
		for guid,character in pairs(ATTCharacterData) do
			if guid == unit or character.name == unit then
				rawset(t, "guid", character.guid);
				rawset(t, "name", character.name);
				rawset(t, "lvl", character.lvl);
				if character.classID then
					rawset(t, "classID", character.classID);
					local classInfo = ClassInfoByID[character.classID];
					if classInfo then
						rawset(t, "className", classInfo.name);
						rawset(t, "classFile", classInfo.file);
					end
				end
				if character.raceID then
					rawset(t, "raceID", character.raceID);
					rawset(t, "race", C_CreatureInfo_GetRaceInfo(character.raceID).raceName);
				end
				return t;
			end
		end
		local name, guid, className, classFile, classID, raceName, raceFile, raceID;
		if #{strsplit("-", unit)} > 1 then
			-- It's a GUID.
			guid = unit;
			className, classFile, raceName, raceFile, raceID, name = GetPlayerInfoByGUID(guid);
			if classFile then classID = ClassInfoByClassFile[classFile].classID; end
		else
			name = UnitName(unit);
			if name then
				guid = UnitGUID(unit);
				className, classFile, classID = UnitClass(unit);
				raceName, raceFile, raceID = UnitRace(unit);
			else
				rawset(t, "name", unit);
				return t;
			end
		end
		if name then
			rawset(t, "name", name);
			rawset(t, "guid", guid);
			if classID then
				rawset(t, "className", className);
				rawset(t, "classFile", classFile);
				rawset(t, "classID", classID);
			end
			if raceID then
				rawset(t, "raceID", raceID);
				rawset(t, "race", C_CreatureInfo_GetRaceInfo(raceID).raceName);
			end
		end
		return t;
	end,
	["name"] = function(t)
		return rawget(t.info, "name");
	end,
	["icon"] = function(t)
		local classID = rawget(t.info, "classID");
		if classID then return ClassInfoByID[classID].icon; end
	end,
	["guid"] = function(t)
		local guid = rawget(t.info, "guid");
		if guid then return guid; end
	end,
	["title"] = function(t)
		if IsInGroup() then
			if rawget(t, "isML") then return MASTER_LOOTER; end
			if UnitIsGroupLeader(t.unit, "raid") then return RAID_LEADER; end
		end
	end,
	["lvl"] = function(t)
		return UnitLevel(t.unit);
	end,
	["race"] = function(t)
		return rawget(t.info, "race");
	end,
	["className"] = function(t)
		return rawget(t.info, "className");
	end,
	["classFile"] = function(t)
		return rawget(t.info, "classFile");
	end,
	["classText"] = function(t)
		local classFile = t.classFile;
		if classFile then return "|c" .. RAID_CLASS_COLORS[classFile].colorStr .. t.name .. "|r"; end
		return t.name or RETRIEVING_DATA;
	end,
	["tooltipText"] = function(t)
		local text = t.text;
		local icon = t.icon;
		if icon then text = "|T" .. icon .. ":0|t " .. text; end
		return text;
	end,
	["ignoreSourceLookup"] = function(t)
		return true;
	end,
});

-- External API
app.ClassInfoByClassFile = ClassInfoByClassFile;
app.ClassInfoByClassName = ClassInfoByClassName;
app.ClassInfoByID = ClassInfoByID;
end