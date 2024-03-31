local app = select(2, ...);
local L = app.L;

-- App locals
local contains, IsQuestFlaggedCompleted = app.contains, app.IsQuestFlaggedCompleted;

-- Global locals
local coroutine, ipairs, pairs, rawset, tinsert, tonumber, math_floor, math_sqrt
	= coroutine, ipairs, pairs, rawset, tinsert, tonumber, math.floor, math.sqrt;
local CreateVector2D, GetRealZoneText, GetSubZoneText, InCombatLockdown
	= CreateVector2D, GetRealZoneText, GetSubZoneText, InCombatLockdown;
local C_Map_GetMapArtID = C_Map.GetMapArtID;
local C_Map_GetMapLevels = C_Map.GetMapLevels;
local C_Map_GetBestMapForUnit = C_Map.GetBestMapForUnit;
local C_Map_GetPlayerMapPosition = C_Map.GetPlayerMapPosition;
local C_Map_GetMapInfo, C_Map_GetAreaInfo = C_Map.GetMapInfo, C_Map.GetAreaInfo;
local C_Map_GetMapChildrenInfo = C_Map.GetMapChildrenInfo;
local C_Map_GetWorldPosFromMapPos = C_Map.GetWorldPosFromMapPos;
local C_MapExplorationInfo_GetExploredMapTextures = C_MapExplorationInfo.GetExploredMapTextures;
local C_MapExplorationInfo_GetExploredAreaIDsAtPosition = C_MapExplorationInfo.GetExploredAreaIDsAtPosition;

-- Current Map Detection
local CurrentMapID;
local MapIDToMapName = setmetatable({}, {
	__index = L.MAP_ID_TO_ZONE_TEXT,
});
local function distance( x1, y1, x2, y2 )
	return math_sqrt( (x2-x1)^2 + (y2-y1)^2 )
end
local function GetCurrentMapID()
	local originalMapID = C_Map_GetBestMapForUnit("player");
	if originalMapID then
		local remap = app.MapRemapping[originalMapID];
		if not remap then return originalMapID; end
		
		local info = C_Map_GetMapInfo(originalMapID);
		--print("GetCurrentMapID (original): ", originalMapID, info and info.name, not not remap);
		
		local substitutions = remap.artIDs;
		if substitutions then
			local artID = C_Map_GetMapArtID(originalMapID);
			if artID then
				local mapID = substitutions[artID];
				if mapID then
					--print(" SUBBED (artID): ", artID, mapID);
					return mapID;
				end
			end
		end
		
		local zoneTexts = {};
		local name = GetRealZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		name = GetSubZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		name = GetZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		
		substitutions = remap.areaIDs;
		if substitutions then
			for areaID,mapID in pairs(substitutions) do
				local info = C_Map_GetAreaInfo(areaID);
				if info and zoneTexts[info] then
					--print(" SUBBED (areaID): ", areaID, info, mapID);
					return mapID;
				end
			end
		end
		substitutions = remap.names;
		if remap.isContinent and not remap.compiledList then
			remap.compiledList = true;
			local childMaps = C_Map_GetMapChildrenInfo(originalMapID);
			if childMaps then
				if not substitutions then
					substitutions = {};
					remap.names = substitutions;
				end
				for j,childMapInfo in ipairs(childMaps) do
					substitutions[childMapInfo.name] = childMapInfo.mapID;
					local subChildMaps = C_Map_GetMapChildrenInfo(childMapInfo.mapID);
					if subChildMaps then
						for k,subChildMapInfo in ipairs(subChildMaps) do
							substitutions[subChildMapInfo.name] = subChildMapInfo.mapID;
						end
					end
				end
			end
		end
		if substitutions then
			for name,mapID in pairs(substitutions) do
				if zoneTexts[name] then
					--print(" SUBBED (name): ", name, info, mapID);
					return mapID;
				end
			end
			if remap.isContinent then
				-- Attempt to find the closest map.
				local position = C_Map_GetPlayerMapPosition(originalMapID, "player");
				if position then
					local continentID, worldPosition = C_Map_GetWorldPosFromMapPos(originalMapID, position);
					local closestDistance, closestMapID = 99999999;
					local px, py = worldPosition:GetXY();
					for _,mapID in pairs(substitutions) do
						position = C_Map_GetPlayerMapPosition(mapID, "player")
						if position then
							continentID, worldPosition = C_Map_GetWorldPosFromMapPos(mapID, position);
							if worldPosition then
								local dist = distance(px, py, worldPosition:GetXY());
								if dist < closestDistance then
									closestDistance = dist;
									closestMapID = mapID;
								end
							end
						end
					end
					if closestMapID then
						--print(" SUBBED (closest): ", closestMapID);
						return closestMapID;
					end
				end
			end
		end
	else
		local zoneTexts,substitutions = {};
		local name = GetRealZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		name = GetSubZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		name = GetZoneText();
		if name and name:len() > 0 then
			zoneTexts[name] = 1;
		end
		for mapID,remap in pairs(app.MapRemapping) do
			substitutions = remap.areaIDs;
			if substitutions then
				for areaID,mapID in pairs(substitutions) do
					local info = C_Map_GetAreaInfo(areaID);
					if info and zoneTexts[info] then
						--print(" SUBBED (areaID): ", areaID, info, mapID);
						return mapID;
					end
				end
			end
			substitutions = remap.names;
			if substitutions then
				for name,mapID in pairs(substitutions) do
					if zoneTexts[name] then
						--print(" SUBBED (name): ", name, info, mapID);
						return mapID;
					end
				end
			end
		end
	end
	return originalMapID;
end
local function GetMapName(mapID)
	if mapID then
		local mapName = MapIDToMapName[mapID];
		if mapName then return mapName; end

		local info = C_Map_GetMapInfo(mapID);
		return (info and info.name) or ("Map ID #" .. mapID);
	else
		return "Map ID #???";
	end
end
local UpdateLocationCoroutine;
if app.GameBuildVersion < 30000 then
	-- Before Wrath Classic we didn't have mapIDs in the world proper, so ATT had to make a guess.
	-- This relied on the map name and stuff.
	UpdateLocationCoroutine = function()
		-- Wait a second, will ya? The position detection is BAD.
		for i=1,30,1 do coroutine.yield(); end

		-- Acquire the new map ID.
		local mapID = GetCurrentMapID();
		while not mapID do
			coroutine.yield();
			mapID = GetCurrentMapID();
		end
		if CurrentMapID ~= mapID then
			CurrentMapID = mapID;
			app.CurrentMapID = mapID;
			app.CurrentMapInfo = C_Map_GetMapInfo(mapID);
			app.HandleEvent("OnCurrentMapIDChanged");
		end
	end
else
	-- After Wrath Classic you don't need to wait for a bit before checking.
	UpdateLocationCoroutine = function()
		-- Acquire the new map ID.
		local mapID = GetCurrentMapID();
		while not mapID do
			coroutine.yield();
			mapID = GetCurrentMapID();
		end
		if CurrentMapID ~= mapID then
			CurrentMapID = mapID;
			app.CurrentMapID = mapID;
			app.CurrentMapInfo = C_Map_GetMapInfo(mapID);
			app.HandleEvent("OnCurrentMapIDChanged");
		end
	end
end
local function UpdateLocation()
	app:StartATTCoroutine("UpdateLocation", UpdateLocationCoroutine);
end
app.events.ZONE_CHANGED = UpdateLocation;
app.events.ZONE_CHANGED_INDOORS = UpdateLocation;
app.events.ZONE_CHANGED_NEW_AREA = UpdateLocation;
app.events.PLAYER_INTERACTION_MANAGER_FRAME_HIDE = UpdateLocation;
app:RegisterEvent("ZONE_CHANGED");
app:RegisterEvent("ZONE_CHANGED_INDOORS");
app:RegisterEvent("ZONE_CHANGED_NEW_AREA");
pcall(app.RegisterEvent, app, "PLAYER_INTERACTION_MANAGER_FRAME_HIDE");
app.AddEventHandler("OnReady", UpdateLocation);
app.GetMapName = GetMapName;
UpdateLocation();

-- Exploration
local AreaExplorationMeta = {
	__index = function(t, areaID)
		local coords = {};
		t[areaID] = coords;
		return coords;
	end
};
local ExplorationDB = setmetatable(app.ExplorationDB or {}, {
	__index = function(t, mapID)
		local data = {};
		t[mapID] = data;
		return data;
	end
});
local ExplorationAreaPositionDB = app.ExplorationAreaPositionDB or {};
app.CreateExploration = app.CreateClass("Exploration", "explorationID", {
	["text"] = function(t)
		return C_Map_GetAreaInfo(t.explorationID) or RETRIEVING_DATA;
	end,
	["description"] = function(t)
		if not TomTom then
			return "You can use Alt+Right Click to plot the coordinates with TomTom installed. If this refuses to be marked collected for you in ATT, try reloading your UI or relogging.";
		else
			return "You can use Alt+Right Click to plot the coordinates. If this refuses to be marked collected for you in ATT, try reloading your UI or relogging.";
		end
	end,
	["artID"] = function(t)
		return t.parent and (t.parent.artID or (t.parent.parent and t.parent.parent.artID));
	end,
	["icon"] = function(t)
		return app.asset("Category_Exploration");
	end,
	["mapID"] = function(t)
		return t.parent and (t.parent.mapID or (t.parent.parent and t.parent.parent.mapID));
	end,
	["collectible"] = function(t)
		return app.Settings.Collectibles.Exploration;
	end,
	["collected"] = function(t)
		if app.CurrentCharacter.Exploration[t.explorationID] then return 1; end
		
		local coords = t.coords;
		if coords and #coords > 0 then
			local c = coords[1];
			local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(c[3], CreateVector2D(c[1] / 100, c[2] / 100));
			if explored then
				for _,areaID in ipairs(explored) do
					if areaID == t.explorationID then
						app.SetCollected(nil, "Exploration", areaID, true);
						return 1;
					end
				end
			end
		end
		if app.Settings.AccountWide.Exploration and ATTAccountWideData.Exploration[t.explorationID] then return 2; end
	end,
	["coords"] = function(t)
		return ExplorationAreaPositionDB[t.explorationID];
	end,
});

-- Reporting
local ReportedAreas = {};
local function PrintDiscordInformationForExploration(o)
	local areaID = o.explorationID;
	if not areaID or ReportedAreas[areaID] then return; end
	ReportedAreas[areaID] = true;
	
	local text = o.text;
	local mapID = o.mapID;
	if mapID then text = text .. " (" .. GetMapName(mapID) .. ")"; end
	
	-- Create an information object.
	local info = {
		"### new-area:" .. areaID,
		"```elixir",	-- discord fancy box start
		text or "???",
	};
	tinsert(info, "areaID: " .. (areaID or "??"));
	tinsert(info, "mapID: " .. (mapID or "??"));
	
	local coords = o.coords;
	if coords and #coords > 0 then
		tinsert(info, "coords:");
		for i,coord in ipairs(coords) do
			tinsert(info, coord[1] .. ", " .. coord[2]);
		end
	end

	tinsert(info, "ver: "..app.Version);
	tinsert(info, "build: "..app.GameBuildVersion);
	tinsert(info, "```");	-- discord fancy box end
	
	local popupID = "area-" .. areaID;
	app:SetupReportDialog(popupID, text, info);
	print("Found Area:", app:Linkify(text, app.Colors.ChatLinkError, "dialog:" .. popupID));
end
local function CheckExplorationForMapID(mapID)
	local pos = C_Map_GetPlayerMapPosition(mapID, "player");
	if pos then
		local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(mapID, pos);
		if explored then
			local newArea = false;
			for _,areaID in ipairs(explored) do
				if not app.CurrentCharacter.Exploration[areaID] then
					app.SetCollected(nil, "Exploration", areaID, true);
					newArea = true;
				end
				if not ReportedAreas[areaID] then
					if #app.SearchForField("explorationID", areaID) < 1 then
						PrintDiscordInformationForExploration(app.CreateExploration(areaID, { mapID = mapID}));
					end
				end
			end
			if newArea then app:RefreshDataQuietly("RefreshExploration", true); end
		end
	end
end
local function CheckExplorationForCurrentLocation()
	app:StartATTCoroutine("Check Exploration", function()
		while not CurrentMapID do
			coroutine.yield();
		end
		CheckExplorationForMapID(CurrentMapID);
	end);
end
app.CheckExplorationForCurrentLocation = CheckExplorationForCurrentLocation;

-- Event Handlering (Classic Only, until this feature as a while is supported by Retail!)
app.SetupExplorationEvents = function()
app.SetupExplorationEvents = nil;
app.AddEventHandler("OnRecalculate", CheckExplorationForCurrentLocation);
app.events.MAP_EXPLORATION_UPDATED = CheckExplorationForCurrentLocation;
app.events.UI_INFO_MESSAGE = function(messageID)
	if messageID == 372 then CheckExplorationForCurrentLocation(); end
end
app:RegisterEvent("MAP_EXPLORATION_UPDATED");
app:RegisterEvent("UI_INFO_MESSAGE");
end
if app.IsClassic then app.SetupExplorationEvents(); end

-- Harvesting
local OnClickForExplorationHeader = function(row, button)
	if button == "RightButton" and IsControlKeyDown() then
		local info = {};
		for i,exploration in ipairs(row.ref.g) do
			tinsert(info, "exploration(" .. exploration.explorationID .. "),\t-- " .. exploration.text);
		end
		app:ShowPopupDialogWithMultiLineEditBox(app.TableConcat(info, nil, nil, "\n"), nil, "Exploration Data");
		return true;
	end
end
local SimplifyExplorationData = function(rawExplorationAreaPositionDB)
	while InCombatLockdown() do coroutine.yield(); end
	app.print("Simplifying Exploration Data...");
	local allMapData = {};
	local explorationDB = {};
	for areaID,coords in pairs(rawExplorationAreaPositionDB) do
		for i,coord in ipairs(coords) do
			local mapID = coord[3];
			if mapID then
				local x, y = math_floor(coord[1] * 100), math_floor(coord[2] * 100);
				local hash = x .. ":" .. y;
				local mapData = allMapData[mapID];
				if not mapData then
					mapData = {};
					mapData.areas = {};
					mapData.areaList = {};
					mapData.hits = {};
					allMapData[mapID] = mapData;
					explorationDB[mapID] = mapData.areaList;
				end
				if not mapData.areas[areaID] then
					mapData.areas[areaID] = 1;
					tinsert(mapData.areaList, areaID);
				end
				if not mapData.hits[hash] then
					mapData.hits[hash] = { areaID };
				else
					tinsert(mapData.hits[hash], areaID);
				end
			end
		end
	end
	app.print("Determining best coordinates for areas...");
	local sortMethod = function(a, b)
		return a[1] > b[1];
	end;
	local explorationAreaPositionDB = {};
	for mapID,mapData in pairs(allMapData) do
		app.print("Determining best coordinates for map ".. mapID);
		local hitsByAreaID, hitsByCount = setmetatable({}, AreaExplorationMeta), {};
		for hash,hits in pairs(mapData.hits) do
			tinsert(hitsByCount, { #hits, hash, hits});
		end
		app.Sort(hitsByCount, sortMethod);
		repeat
			coroutine.yield();
		until(not InCombatLockdown());

		-- Now randomly grab hashes until every area has a few hashes
		local timer = 0;
		while #hitsByCount > 0 do
			local index = math.random(#hitsByCount);
			local hit = hitsByCount[index];
			tremove(hitsByCount, index);
			for i,areaID in ipairs(hit[3]) do
				local hits = hitsByAreaID[areaID];
				if #hits < 10 then tinsert(hits, hit[2]); end
			end
			timer = timer + 1;
			if timer >= 1000 then
				timer = 0;
				repeat
					coroutine.yield();
				until(not InCombatLockdown());
			end
		end

		-- Now that each has some hashes (probably), let's simplfy that data table.
		for areaID,hits in pairs(hitsByAreaID) do
			local coords = explorationAreaPositionDB[areaID];
			if not coords then
				coords = {};
				explorationAreaPositionDB[areaID] = coords;
			end
			for i,hash in ipairs(hits) do
				local x, y = hash:match("(%d+):(%d+)");
				tinsert(coords, { tonumber(x) * 0.01, tonumber(y) * 0.01, mapID });
			end
		end
	end
	AllTheThingsAD.ExplorationAreaPositionDB = explorationAreaPositionDB;
	ExplorationAreaPositionDB = explorationAreaPositionDB;
	app.print("Done Simplifying Exploration Data.");
end
local function HarvestExploration(simplify)
	app.SetupExplorationEvents();
	app.print("Harvesting Exploration...");
	local grid, Granularity = {}, 200;
	for i=0,Granularity,1 do
		for j=0,Granularity,1 do
			tinsert(grid, CreateVector2D(i / Granularity, j / Granularity));
		end
	end
	local rawExplorationAreaPositionDB = {};
	for mapID,objects in pairs(app.SearchForFieldContainer("mapID")) do
		if C_Map_GetMapArtID(mapID) then
			--app.print("Harvesting Map " .. mapID .. "...");
			-- Find all points on the grid that have explored an area and make note of them.
			local any, hits = false, setmetatable({}, AreaExplorationMeta);
			local explorationByID = {};
			for _,pos in ipairs(grid) do
				local explored = C_MapExplorationInfo_GetExploredAreaIDsAtPosition(mapID, pos);
				if explored then
					local coord = {pos.x * 100, pos.y * 100, mapID};
					for _,areaID in ipairs(explored) do
						tinsert(hits[areaID], coord);
						any = true;
					end
				end
			end
			if any then
				-- For each of these hits, add it to our raw positional DB.
				for areaID,coords in pairs(hits) do
					explorationByID[areaID] = true;
					
					-- Mark as collected and record all the coordinates.
					app.SetCollected(nil, "Exploration", areaID, true);
					local positions = rawExplorationAreaPositionDB[areaID];
					if not positions then
						rawExplorationAreaPositionDB[areaID] = coords;
					else
						for i,coord in ipairs(coords) do
							tinsert(positions, coord);
						end
					end
				end
			end
			
			-- Now take the ones from our previously harvested DBs.
			local areaIDs = ExplorationDB[mapID];
			for _,areaID in ipairs(areaIDs) do
				if not explorationByID[areaID] then
					explorationByID[areaID] = true;
					any = true;
					
					-- Reuse any coordinates linked for the area if we didn't just acquire new ones.
					local coords = ExplorationAreaPositionDB[areaID];
					if coords then
						local positions = rawExplorationAreaPositionDB[areaID];
						if not positions then
							rawExplorationAreaPositionDB[areaID] = coords;
						else
							for i,coord in ipairs(coords) do
								tinsert(positions, coord);
							end
						end
					end
				end
			end
			
			if any then
				-- Now regenerate the areaIDs for this map.
				wipe(areaIDs);
				local count = 1;
				for areaID,_ in pairs(explorationByID) do
					areaIDs[count] = areaID;
					count = count + 1;
				end
			
				-- If any were found, update the content of the explocation headers.
				for i,object in ipairs(objects) do
					if object.key == "mapID" and (object.mapID == mapID or (object.maps and contains(object.maps, mapID))) then
						-- Cache or Create the Exploration Header
						local explorationHeader = nil;
						if object.g then
							for j,o in ipairs(object.g) do
								if o.headerID == app.HeaderConstants.EXPLORATION then
									explorationHeader = o;
									break;
								end
							end
						else
							object.g = {};
						end
						local byExplorationID;
						if explorationHeader then
							byExplorationID = explorationHeader.ByExplorationID;
							if not byExplorationID then
								byExplorationID = {};
								explorationHeader.ByExplorationID = byExplorationID;
							end
							if explorationHeader.g then
								for j,o in ipairs(explorationHeader.g) do
									local areaID = o.explorationID;
									if areaID then byExplorationID[areaID] = o; end
								end
							else
								explorationHeader.g = {};
							end
						else
							byExplorationID = {};
							explorationHeader = app.CreateNPC(app.HeaderConstants.EXPLORATION);
							explorationHeader.ByExplorationID = byExplorationID;
							explorationHeader.g = {};
							explorationHeader.u = object.u;
							explorationHeader.parent = object;
							tinsert(object.g, 1, explorationHeader);
						end
						explorationHeader.OnClick = OnClickForExplorationHeader;
						explorationHeader.SortType = "text";
						
						-- Make sure the exploration header has all the objects
						for _,areaID in ipairs(areaIDs) do
							if not byExplorationID[areaID] then
								o = app.CreateExploration(areaID);
								o.mapID = mapID;
								o.parent = explorationHeader;
								tinsert(explorationHeader.g, o);
								byExplorationID[areaID] = o;
								local searchResults = app.SearchForField("explorationID", areaID);
								if #searchResults < 1 then
									PrintDiscordInformationForExploration(o);
								end
								tinsert(searchResults, o);
							end
						end
					end
				end
			end
			repeat
				coroutine.yield();
			until(not InCombatLockdown());
		end
	end
	AllTheThingsAD.ExplorationDB = ExplorationDB;
	app.print("Exploration Harvest complete. You can now Ctrl+Right Click on an Exploration header to copy its content.");
	if simplify then SimplifyExplorationData(rawExplorationAreaPositionDB); end
end
app.HarvestExploration = function(simplify)
	app:StartATTCoroutine("Harvest Exploration", function()
		HarvestExploration(simplify);
		collectgarbage();
	end);
end

-- Maps
app.CreateMap = app.CreateClass("Map", "mapID", {
	["text"] = function(t)
		return t.isRaid and ("|c" .. app.Colors.Raid .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		return GetMapName(t.mapID);
	end,
	["icon"] = function(t)
		return app.asset("Category_Zones");
	end,
	["back"] = function(t)
		if t.isCurrentMap then
			return 1;
		end
	end,
	["artID"] = function(t)
		return C_Map_GetMapArtID(t.mapID);
	end,
	["lvl"] = function(t)
		return C_Map_GetMapLevels(t.mapID);
	end,
	["playerCoord"] = function(t)
		local position = C_Map_GetPlayerMapPosition(t.mapID, "player")
		if position then
			local x,y = position:GetXY()
			return { math_floor(x * 1000) / 10, math_floor(y * 1000) / 10, t.mapID };
		end
	end,
	["isCurrentMap"] = function(t)
		if CurrentMapID == t.mapID then
			return true;
		end
		local maps = t.maps;
		if maps and contains(maps, CurrentMapID) then
			return true;
		end
	end,
	["ignoreSourceLookup"] = function(t)
		return true;
	end,
},
"WithHeader", {
	["name"] = function(t)
		return app.NPCNameFromID[t.headerID] or GetMapName(t.mapID);
	end,
	["icon"] = function(t)
		return L.HEADER_ICONS[t.headerID] or app.asset("Category_Zones");
	end,
	["lore"] = function(t)
		return L.HEADER_LORE[t.headerID];
	end,
	["description"] = function(t)
		return L.HEADER_DESCRIPTIONS[t.headerID];
	end,
}, (function(t)
	local creatureID = t.creatureID or t.npcID;
	if creatureID and creatureID < 0 then
		t.headerID = creatureID;
		t.creatureID = nil;
		t.npcID = nil;
		return true;
	elseif t.headerID then
		return true;
	end
end));
app.CreateMapWithStyle = function(id)
	local mapObject = app.CreateMap(id, { progress = 0, total = 0 });
	for _,data in ipairs(app.SearchForField("mapID", id)) do
		if data.mapID and data.icon then
			mapObject.text = data.text;
            mapObject.icon = data.icon;
            mapObject.lvl = data.lvl;
            mapObject.lore = data.lore;
            mapObject.description = data.description;
			break;
		end
	end

	if not mapObject.text then
		local mapInfo = C_Map_GetMapInfo(id);
		if mapInfo then
			mapObject.text = mapInfo.name;
		end
	end
	return mapObject;
end

-- Instances
local instanceFields = {
	["text"] = function(t)
		return t.isRaid and ("|c" .. app.Colors.Raid .. t.name .. "|r") or t.name;
	end,
	["name"] = function(t)
		local mapID = t.mapID;
		return mapID and GetMapName(mapID);
	end,
	["icon"] = function(t)
		return app.asset("Category_Zones");
	end,
	["back"] = function(t)
		if t.isCurrentMap then
			return 1;
		end
	end,
	["mapID"] = function(t)
		return t.maps and t.maps[1];
	end,
	["lvl"] = function(t)
		local mapID = t.mapID;
		return mapID and C_Map_GetMapLevels(mapID);
	end,
	["locks"] = function(t)
		local savedInstanceID = t.savedInstanceID;
		if savedInstanceID then
			local lockouts = app.CurrentCharacter.Lockouts;
			local locks = lockouts[savedInstanceID];
			if locks then
				t.locks = locks;
				return locks;
			end
		end
	end,
	["saved"] = function(t)
		return t.locks;
	end,
	["isCurrentMap"] = function(t)
		if CurrentMapID == t.mapID then
			return true;
		end
		local maps = t.maps;
		if maps and contains(maps, CurrentMapID) then
			return true;
		end
	end,
	["isLockoutShared"] = app.ReturnFalse,
	["ignoreSourceLookup"] = function(t)
		return true;
	end,
};
local EJ_GetInstanceInfo = EJ_GetInstanceInfo;
if EJ_GetInstanceInfo then
	local cache = app.CreateCache("instanceID");
	local function CacheInfo(t, field)
		local _t, id = cache.GetCached(t);
		local name, lore, _, _, _, icon, _, link = EJ_GetInstanceInfo(id);
		_t.name = name;
		_t.lore = lore;
		_t.icon = icon;
		_t.link = link;
		if field then return _t[field]; end
	end
	instanceFields.icon = function(t) return cache.GetCachedField(t, "icon", CacheInfo); end;
	instanceFields.name = function(t) return cache.GetCachedField(t, "name", CacheInfo); end;
	instanceFields.lore = function(t) return cache.GetCachedField(t, "lore", CacheInfo); end;
	instanceFields.silentLink = function(t) return cache.GetCachedField(t, "link", CacheInfo); end;
end
app.CreateInstance = app.CreateClass("Instance", "instanceID", instanceFields,
"WithHeader", {
	["name"] = function(t)
		return app.NPCNameFromID[t.headerID] or instanceFields.name(t);
	end,
	["icon"] = function(t)
		return L.HEADER_ICONS[t.headerID] or app.asset("Category_Zones");
	end,
	["lore"] = function(t)
		return L.HEADER_LORE[t.headerID];
	end,
	["description"] = function(t)
		return L.HEADER_DESCRIPTIONS[t.headerID];
	end,
}, (function(t)
	local creatureID = t.creatureID;
	if creatureID and creatureID < 0 then
		t.headerID = creatureID;
		t.creatureID = nil;
		t.npcID = nil;
		return true;
	end
end));