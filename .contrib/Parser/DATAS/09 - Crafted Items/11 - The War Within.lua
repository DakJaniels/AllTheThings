---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
-- Simple function for First Craft tracking Quests
-- ex. FirstCraft(QUESTID, RECIPEID);	-- RECIPE_NAME
local function FirstCraft(questID, recipeID, added)
	local t = { ["questID"] = questID, ["type"] = HEADERS.Spell..":"..recipeID };
	if added then
		t.timeline = { added };
	end
	return t;
end
local function FirstSkin(questID, creatureID, added, group)
	local t = { ["questID"] = questID, ["type"] = HEADERS.NPC..":"..creatureID, };
	if added then
		t.timeline = { added };
	end
	if group then
		t.group = { group };
	end
	return t;
end

root(ROOTS.Craftables, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_1_LAUNCH } }, {
	i(ARTISANS_ACUITY),
	prof(ALCHEMY, {
		n(DISCOVERY, {
			spell(430345, {	-- Meticulous Experimentation
				i(211958, {	-- Meticulous Experimentation
					r(430595),	-- Draught of Shocking Revelations
					r(430594),	-- Draught of Silent Footfalls
					r(430605),	-- Flask of Alchemical Chaos
					r(430612),	-- Flask of Saving Graces
					r(430601),	-- Flask of Tempered Aggression
					r(430604),	-- Flask of Tempered Mastery
					r(430602),	-- Flask of Tempered Swiftness
					r(430603),	-- Flask of Tempered Versatility
					r(430598),	-- Frontline Potion
					r(430596),	-- Grotesque Vial
					r(430617),	-- Phial of Bountiful Seasons
					r(430616),	-- Phial of Enhanced Ambidextry
					r(430614),	-- Phial of Focused Inspiration
					r(430615),	-- Phial of Truesight
					r(430600),	-- Potion of the Reborn Cheetah
					r(430597),	-- Potion of Unwavering Focus
					r(430599),	-- Tempered Potion
				}),
			}),
			spell(430315, {	-- Thaumaturgy
				i(211796, {	-- Thaumaturgy
					r(430618),	-- Mercurial Blessings
					r(449571),	-- Mercurial Herbs
					r(430619),	-- Mercurial Storms
					r(430622),	-- Ominous Call
					r(430623),	-- Ominous Gloom
					r(449572),	-- Ominous Herbs
					r(430621),	-- Volatile Stone
					r(430620),	-- Volatile Weaving
				}),
			}),
			spell(427174, {	-- Wild Experimentation
				i(210813,{	-- Wild Experimentation
					r(430591),	-- Algari Mana Potion
					r(430592),	-- Cavedweller's Delight
					r(430345),	-- Meticulous Experimentation
					r(430593),	-- Slumbering Soul Serum
				}),
			}),
		}),
		filter(CONSUMABLES, {
			i(212719, {	-- Algari Flask Cauldron+
				i(212739),	-- Fleeting Flask of Alchemical Chaos+
				i(212745),	-- Fleeting Flask of Saving Graces+
				i(212775),	-- Fleeting Flask of Tempered Aggression+
				i(212735),	-- Fleeting Flask of Tempered Mastery+
				i(212729),	-- Fleeting Flask of Tempered Swiftness+
				i(212732),	-- Fleeting Flask of Tempered Versatility+
			}),
			i(212720, {	-- Algari Flask Cauldron++
				i(212740),	-- Fleeting Flask of Alchemical Chaos++
				i(212746),	-- Fleeting Flask of Saving Graces++
				i(212776),	-- Fleeting Flask of Tempered Aggression++
				i(212736),	-- Fleeting Flask of Tempered Mastery++
				i(212730),	-- Fleeting Flask of Tempered Swiftness++
				i(212733),	-- Fleeting Flask of Tempered Versatility++
			}),
			i(212721, {	-- Algari Flask Cauldron+++
				i(212741),	-- Fleeting Flask of Alchemical Chaos+++
				i(212747),	-- Fleeting Flask of Saving Graces+++
				i(212777),	-- Fleeting Flask of Tempered Aggression+++
				i(212738),	-- Fleeting Flask of Tempered Mastery+++
				i(212731),	-- Fleeting Flask of Tempered Swiftness+++
				i(212734),	-- Fleeting Flask of Tempered Versatility+++
			}),
			i(212239),	-- Algari Mana Potion+
			i(212240),	-- Algari Mana Potion++
			i(212241),	-- Algari Mana Potion+++
			i(212751, {	-- Algari Potion Cauldron+
				i(212942),	-- Fleeting Algari Healing Potion+
				i(212945),	-- Fleeting Algari Mana Potion+
				i(212948),	-- Fleeting Cavedweller's Delight+
				i(212957),	-- Fleeting Draught of Shocking Revelations+
				i(212954),	-- Fleeting Draught of Silent Footfalls+
				i(212960),	-- Fleeting Grotesque Vial+
				i(212966),	-- Fleeting Frontline Potion+
				i(212972),	-- Fleeting Potion of the Reborn Cheetah+
				i(212963),	-- Fleeting Potion of Unwavering Focus+
				i(212951),	-- Fleeting Slumbering Soul Serum+
				i(212969),	-- Fleeting Tempered Potion+
			}),
			i(212752, {	-- Algari Potion Cauldron++
				i(212943),	-- Fleeting Algari Healing Potion++
				i(212946),	-- Fleeting Algari Mana Potion++
				i(212949),	-- Fleeting Cavedweller's Delight++
				i(212958),	-- Fleeting Draught of Shocking Revelations++
				i(212955),	-- Fleeting Draught of Silent Footfalls++
				i(212961),	-- Fleeting Grotesque Vial++
				i(212967),	-- Fleeting Frontline Potion++
				i(212973),	-- Fleeting Potion of the Reborn Cheetah++
				i(212964),	-- Fleeting Potion of Unwavering Focus++
				i(212952),	-- Fleeting Slumbering Soul Serum++
				i(212970),	-- Fleeting Tempered Potion++
			}),
			i(212753, {	-- Algari Potion Cauldron+++
				i(212944),	-- Fleeting Algari Healing Potion+++
				i(212947),	-- Fleeting Algari Mana Potion+++
				i(212950),	-- Fleeting Cavedweller's Delight+++
				i(212959),	-- Fleeting Draught of Shocking Revelations+++
				i(212956),	-- Fleeting Draught of Silent Footfalls+++
				i(212962),	-- Fleeting Grotesque Vial+++
				i(212968),	-- Fleeting Frontline Potion+++
				i(212974),	-- Fleeting Potion of the Reborn Cheetah+++
				i(212965),	-- Fleeting Potion of Unwavering Focus+++
				i(212953),	-- Fleeting Slumbering Soul Serum+++
				i(212971),	-- Fleeting Tempered Potion+++
			}),
			i(211878),	-- Algari Healing Potion+
			i(211879),	-- Algari Healing Potion++
			i(211880),	-- Algari Healing Potion+++
			i(212242),	-- Cavedweller's Delight+
			i(212243),	-- Cavedweller's Delight++
			i(212244),	-- Cavedweller's Delight+++
			i(212251),	-- Draught of Shocking Revelations+
			i(212252),	-- Draught of Shocking Revelations++
			i(212253),	-- Draught of Shocking Revelations+++
			i(212248),	-- Draught of Silent Footfalls+
			i(212249),	-- Draught of Silent Footfalls++
			i(212250),	-- Draught of Silent Footfalls+++
			i(212281),	-- Flask of Alchemical Chaos+
			i(212282),	-- Flask of Alchemical Chaos+
			i(212283),	-- Flask of Alchemical Chaos+++
			i(212299),	-- Flask of Saving Graces+
			i(212300),	-- Flask of Saving Graces++
			i(212301),	-- Flask of Saving Graces+++
			i(212269),	-- Flask of Tempered Aggression+
			i(212270),	-- Flask of Tempered Aggression++
			i(212271),	-- Flask of Tempered Aggression+++
			i(212278),	-- Flask of Tempered Mastery+
			i(212279),	-- Flask of Tempered Mastery++
			i(212280),	-- Flask of Tempered Mastery+++
			i(212272),	-- Flask of Tempered Swiftness+
			i(212273),	-- Flask of Tempered Swiftness++
			i(212274),	-- Flask of Tempered Swiftness+++
			i(212275),	-- Flask of Tempered Versatility+
			i(212276),	-- Flask of Tempered Versatility++
			i(212277),	-- Flask of Tempered Versatility+++
			i(212260),	-- Frontline Potion+
			i(212261),	-- Frontline Potion++
			i(212262),	-- Frontline Potion+++
			i(212254),	-- Grotesque Vial+
			i(212255),	-- Grotesque Vial++
			i(212256),	-- Grotesque Vial+++
			i(212314),	-- Phial of Bountiful Seasons+
			i(212315),	-- Phial of Bountiful Seasons++
			i(212316),	-- Phial of Bountiful Seasons+++
			i(212311),	-- Phial of Enhanced Ambidextry+
			i(212312),	-- Phial of Enhanced Ambidextry++
			i(212313),	-- Phial of Enhanced Ambidextry+++
			i(212305),	-- Phial of Focused Inspiration+
			i(212306),	-- Phial of Focused Inspiration++
			i(212307),	-- Phial of Focused Inspiration+++
			i(212308),	-- Phial of Truesight+
			i(212309),	-- Phial of Truesight++
			i(212310),	-- Phial of Truesight+++
			i(212266),	-- Potion of the Reborn Cheetah+
			i(212267),	-- Potion of the Reborn Cheetah++
			i(212268),	-- Potion of the Reborn Cheetah+++
			i(212257),	-- Potion of Unwavering Focus+
			i(212258),	-- Potion of Unwavering Focus++
			i(212259),	-- Potion of Unwavering Focus+++
			i(212245),	-- Slumbering Soul Serum+
			i(212246),	-- Slumbering Soul Serum++
			i(212247),	-- Slumbering Soul Serum+++
			i(212263),	-- Tempered Potion+
			i(212264),	-- Tempered Potion++
			i(212265),	-- Tempered Potion+++
			i(212289),	-- Vicious Flask of Classical Spirits
			i(212292),	-- Vicious Flask of Honor
			i(212295),	-- Vicious Flask of Manifested Fury
			i(212298),	-- Vicious Flask of the Wrecking Ball
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ALCHEMY,
		},{
			-- Alchemy Essentials
			FirstCraft(81132, 433087);	-- Formulated Courage
			--FirstCraft(QuestID, 430345);	-- Meticulous Experimentation
			FirstCraft(81090, 430315);	-- Thaumaturgy
			--FirstCraft(QuestID, 427174);	-- Wild Experimentation
			-- Reagents
			FirstCraft(81129, 432204);	-- Harmonious Horticulture
			-- Basic Concoctions
			FirstCraft(81095, 430590);	-- Algari Healing Potion
			FirstCraft(81096, 430591);	-- Algari Mana Potion
			FirstCraft(81097, 430592);	-- Cavedweller's Delight
			FirstCraft(81098, 430593);	-- Slumbering Soul Serum
			-- Potions
			FirstCraft(81100, 430595);	-- Draught of Shocking Revelations
			FirstCraft(81099, 430594);	-- Draught of Silent Footfalls
			FirstCraft(81103, 430598);	-- Frontline Potion
			FirstCraft(81101, 430596);	-- Grotesque Vial
			FirstCraft(81105, 430600);	-- Potion of the Reborn Cheetah
			FirstCraft(81102, 430597);	-- Potion of Unwavering Focus
			FirstCraft(81104, 430599);	-- Tempered Potion
			-- Flasks
			FirstCraft(81110, 430605);	-- Flask of Alchemical Chaos
			FirstCraft(81116, 430612);	-- Flask of Saving Graces
			FirstCraft(81109, 430604);	-- Flask of Tempered Mastery
			FirstCraft(81108, 430603);	-- Flask of Tempered Versatility
			FirstCraft(81106, 430601);	-- Flask of Tempered Aggression
			FirstCraft(81107, 430602);	-- Flask of Tempered Swiftness
			-- Vicious Flasks
			--FirstCraft(QuestID, 430607);	-- Vicious Flask of Classical Spirits
			--FirstCraft(QuestID, 430608);	-- Vicious Flask of Honor
			--FirstCraft(QuestID, 430610);	-- Vicious Flask of Manifested Fury
			--FirstCraft(QuestID, 430611);	-- Vicious Flask of Wrecking Ball
			-- Phials
			FirstCraft(81121, 430617);	-- Phial of Bountiful Seasons
			FirstCraft(81120, 430616);	-- Phial of Enhanced Ambidextry
			FirstCraft(81118, 430614);	-- Phial of Focused Inspiration
			FirstCraft(81119, 430615);	-- Phial of Truesight
			-- Transmutations
			FirstCraft(81145, 449938);	-- Gleaming Chaos
			FirstCraft(81128, 430624);	-- Gleaming Glory
			FirstCraft(81142, 449573);	-- Mercurial Coalescence
			FirstCraft(81143, 449574);	-- Ominous Coalescence
			FirstCraft(81144, 449575);	-- Volatile Coalescence
			FirstCraft(81122, 430618);	-- Mercurial Blessings
			FirstCraft(81140, 449571);	-- Mercurial Herbs
			FirstCraft(81123, 430619);	-- Mercurial Storms
			FirstCraft(81126, 430622);	-- Ominous Call
			FirstCraft(81127, 430623);	-- Ominous Gloom
			FirstCraft(81141, 449572);	-- Ominous Herbs
			FirstCraft(81125, 430621);	-- Volatile Stone
			FirstCraft(81124, 430620);	-- Volatile Weaving
			-- Alchemist Stones
			FirstCraft(81092, 427185);	-- Algari Alchemist Stone
			-- Cuauldrons
			FirstCraft(81130, 432962);	-- Algari Flask Cauldron
			FirstCraft(81131, 432963);	-- Algari Potion Cauldron
		})),
		filter(MISC, {
			i(212781),	-- Formulated Courage
		}),
		filter(REAGENTS, {
			i(212514),	-- Blasphemite
			i(210815),	-- Coreway Catalyst
			i(211805),	-- Gleaming Transmutagen
			i(212563),	-- Harmonious Horticulture+
			i(212564),	-- Harmonious Horticulture++
			i(212565),	-- Harmonious Horticulture+++
			i(211803),	-- Mercurial Transmutagen
			i(211802),	-- Ominous Transmutagen
			i(211804),	-- Volatile Transmutagen
		}),
		filter(TRINKET_F, {
			i(210816),	-- Algari Alchemist Stone
		}),
	}),
	prof(BLACKSMITHING, {
	n(ARMOR, {
		i(222430), -- Everforged Breastplate
		i(222437), -- Everforged Gauntlets
		i(222431), -- Everforged Greatbelt
		i(222433), -- Everforged Helm
		i(222434), -- Everforged Legplates
		i(222436), -- Everforged Pauldrons
		i(222429), -- Everforged Sabatons
		i(222435), -- Everforged Vambraces
		i(222475), -- Dredger's Developed Helm
		i(222478), -- Dredger's Developed Pauldrons
		i(222476), -- Dredger's Developed Legplates
		i(222479), -- Dredger's Developed Gauntlets
		i(222473), -- Dredger's Developed Greatbelt
		i(222474), -- Dredger's Developed Defender
		i(222477), -- Dredger's Developed Vambraces
		i(222472), -- Dredger's Developed Breastplate
		i(222471), -- Dredger's Developed Sabatons
		i(217150), -- Algari Competitor's Plate Armguards
		i(217143), -- Algari Competitor's Plate Breatplate
		i(217145), -- Algari Competitor's Plate Gauntlets
		i(217147), -- Algari Competitor's Plate Greaves
		i(217146), -- Algari Competitor's Plate Helm
		i(217148), -- Algari Competitor's Plate Pauldrons
		i(217144), -- Algari Competitor's Plate Sabatons
		i(217149), -- Algari Competitor's Plate Waistguard
		i(222458),	-- Sanctified Steps
	}),
	n(FIRST_CRAFTS_HEADER, sharedData({
		["requireSkill"] = BLACKSMITHING,
		},{
			-- Smelting
			FirstCraft(80492, 450216); -- Core Alloy
			FirstCraft(80595, 450217); -- Charged Alloy
			FirstCraft(80596, 450218); -- Sanctified Alloy
			FirstCraft(80597, 450219); -- Ironclaw Alloy
			-- Armor
			FirstCraft(80598, 450220); -- Everforged Sabatons
			FirstCraft(80599, 450221); -- Everforged Breastplate
			FirstCraft(80600, 450222); -- Everforged Greatbelt
			FirstCraft(80601, 450223); -- Everforged Defender
			FirstCraft(80602, 450224); -- Everforged Helm
			FirstCraft(80603, 450225); -- Everforged Legplates
			FirstCraft(80604, 450226); -- Everforged Vambraces
			FirstCraft(80605, 450227); -- Everforged Pauldrons
			FirstCraft(80606, 450228); -- Everforged Gauntlets
			--FirstCraft(XXXXX, 450250); -- Siphoning Stiletto
			--FirstCraft(XXXXX, 450245); -- Sanctified Steps
			--FirstCraft(XXXXX, 450246); -- Beledar's Bulwark
			FirstCraft(80636, 450258); -- Dredger's Plate Sabatons
			FirstCraft(80637, 450259); -- Dredger's Plate Breastplate
			FirstCraft(80638, 450260); -- Dredger's Developed Greatbelt
			FirstCraft(80639, 450261); -- Dredger's Developed Defender
			FirstCraft(80640, 450262); -- Dredger's Developed Helm
			FirstCraft(80641, 450263); -- Dredger's Developed Legplates
			FirstCraft(80642, 450264); -- Dredger's Plate Vambraces
			FirstCraft(80643, 450265); -- Dredger's Developed Pauldrons
			FirstCraft(80644, 450266); -- Dredger's Developed Gauntlets
			-- Weapons
			FirstCraft(80607, 450229); -- Everforged Stabber
			FirstCraft(80608, 450230); -- Everforged Dagger
			FirstCraft(80609, 450231); -- Everforged Longsword
			FirstCraft(80611, 450233); -- Everforged Mace
			FirstCraft(80612, 450234); -- Everforged Greataxe
			FirstCraft(80610, 450232); -- Everforged Warglaive
			FirstCraft(80616, 450238); -- Charged Claymore
			--FirstCraft(XXXXX, 450242); -- Charged Slicers
			--FirstCraft(XXXXX, 450236); -- Charged Runeaxe
			--FirstCraft(XXXXX, 450237); -- Charged Facesmasher
			--FirstCraft(XXXXX, 450240); -- Charged Crusher
			FirstCraft(80613, 450235); -- Charged Hexsword
			FirstCraft(80617, 450239); -- Charged Halberd
			FirstCraft(80619, 450241); -- Charged Invoker
			FirstCraft(80629, 450251); -- Ironclaw Stiletto
			FirstCraft(80630, 450252); -- Ironclaw Dirk
			FirstCraft(80631, 450253); -- Ironclaw Sword
			FirstCraft(80632, 450254); -- Ironclaw Knuckles
			FirstCraft(80633, 450255); -- Ironclaw Great Mace
			FirstCraft(80634, 450256); -- Ironclaw Axe
			FirstCraft(80635, 450257); -- Ironclaw Great Axe
			-- PVP
			--FirstCraft(XXXXX, 455003); -- Algari Competitor's Greatsword
			--FirstCraft(XXXXX, 455004); -- Algari Competitor's Sword
			--FirstCraft(XXXXX, 455002); -- Algari Competitor's Sickle
			--FirstCraft(XXXXX, 455000); -- Algari Competitor's Shield
			--FirstCraft(XXXXX, 454999); -- Algari Competitor's Scepter
			--FirstCraft(XXXXX, 454998); -- Algari Competitor's Dagger
			--FirstCraft(XXXXX, 455001); -- Algari Competitor's Axe
			--FirstCraft(XXXXX, 454997); -- Algari Competitor's Splitter
			--FirstCraft(XXXXX, 438914); -- Algari Competitor's Plate Breastplate
			--FirstCraft(XXXXX, 438920); -- Algari Competitor's Plate Waistguard
			--FirstCraft(XXXXX, 438915); -- Algari Competitor's Plate Sabatons
			--FirstCraft(XXXXX, 438916); -- Algari Competitor's Plate Gauntlets
			--FirstCraft(XXXXX, 438917); -- Algari Competitor's Plate Helm
			--FirstCraft(XXXXX, 438919); -- Algari Competitor's Plate Pauldrons
			--FirstCraft(XXXXX, 438921); -- Algari Competitor's Plate Armguards
			--FirstCraft(XXXXX, 438918); -- Algari Competitor's Plate Greaves
			-- Profession Equipment
			FirstCraft(80645, 450267); -- Proficient Sickle
			FirstCraft(80646, 450268); -- Proficient Pickaxe
			FirstCraft(80647, 450269); -- Proficient Skinning Knife
			FirstCraft(80648, 450270); -- Proficient Needle Set
			FirstCraft(80649, 450271); -- Proficient Leatherworker's Knife
			FirstCraft(80650, 450272); -- Proficient Leatherworker's Toolset
			FirstCraft(80651, 450273); -- Proficient Blacksmith's Hammer
			FirstCraft(80652, 450274); -- Proficient Blacksmith's Toolbox
			FirstCraft(80659, 450281); -- Artisan Blacksmith's Hammer
			FirstCraft(80660, 450282); -- Artisan Blacksmith's Toolbox
			--FirstCraft(XXXXX, 450277);  -- Artisan Skinning Knife
			--FirstCraft(XXXXX, 450276);  -- Artisan Pickaxe
			--FirstCraft(XXXXX, 450275);  -- Artisan Sickle
			--FirstCraft(XXXXX, 450279);  -- Artisan Leatherworker's Knife
			--FirstCraft(XXXXX, 450278);  -- Artisan Needle Set
			--FirstCraft(XXXXX, 450280);  -- Artisan Leatherworker's Toolset
			FirstCraft(80661, 450283); -- Earthen Master's Hammer
			-- Stonework
			FirstCraft(80663, 450285); -- Ironclaw Whetstone
			FirstCraft(80664, 450286); -- Ironclaw Razorstone
			FirstCraft(80665, 450287); -- Ironclaw Weightstone
			--Frameworks
			FirstCraft(80662, 450284); -- Forged Framework
			FirstCraft(80666, 450288); -- Adjustable Framework
			FirstCraft(80667, 450289); -- Tempered Framework
			-- Other
			FirstCraft(83398, 450291); -- Coreforged Repair Hammer
		})),
		filter(MISC, {
			i(222520), -- Coreforged Repair Hammer+
			i(222522), -- Coreforged Repair Hammer++
			i(222521), -- Coreforged Repair Hammer+++
			i(222505), -- Ironclaw Razorstone+
			i(222506), -- Ironclaw Razorstone++
			i(222507), -- Ironclaw Razorstone+++
			i(222508), -- Ironclaw Weightstone+
			i(222509), -- Ironclaw Weightstone++
			i(222510), -- Ironclaw Weightstone+++
			i(222502), -- Ironclaw Whetstone+
			i(222503), -- Ironclaw Whetstone++
			i(222504), -- Ironclaw Whetstone+++
			i(222523), -- Coreforged Skeleton Key
			i(224765), -- Everburning Ignition
			i(225660), -- Earthern Master's Hammer
			i(225660),	-- Earthen Master's Hammer
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(222480, {["requireSkill"] = HERBALISM}), -- Proficient Sickle
			i(222487, {["requireSkill"] = BLACKSMITHING}), -- Proficient Blacksmith's Toolbox
			i(222486, {["requireSkill"] = BLACKSMITHING}), -- Proficient Blacksmith's Hammer
			i(222483, {["requireSkill"] = TAILORING}), -- Proficient Needle Set
			i(222484, {["requireSkill"] = LEATHERWORKING}),	-- Proficient Leatherworker's Knife
			i(222485, {["requireSkill"] = LEATHERWORKING}),	-- Proficient Leatherworker's Toolset
			i(222482, {["requireSkill"] = SKINNING}), -- Proficient Skinning Knife
			i(222481, {["requireSkill"] = MINING}),	-- Proficient Pickaxe
			i(222488, {["requireSkill"] = HERBALISM}), -- Artisan Sickle
			i(222495, {["requireSkill"] = BLACKSMITHING}), -- Artisan Blacksmith's Toolbox
			i(222494, {["requireSkill"] = BLACKSMITHING}), -- Artisan Blacksmith's Hammer
			i(222491, {["requireSkill"] = TAILORING}), -- Artisan Needle Set
			i(222492, {["requireSkill"] = LEATHERWORKING}),	-- Artisan Leatherworker's Knife
			i(222493, {["requireSkill"] = LEATHERWORKING}),	-- Artisan Leatherworker's Toolset
			i(222490, {["requireSkill"] = SKINNING}), -- Artisan Skinning Knife
			i(222489, {["requireSkill"] = MINING}),	-- Artisan Pickaxe
		}),
		filter(REAGENTS, {
			i(222423), -- Sanctified Alloy+
			i(222424), -- Sanctified Alloy++
			i(222425), -- Sanctified Alloy+++
			i(222420), -- Charged Alloy+
			i(222421), -- Charged Alloy++
			i(222422), -- Charged Alloy+++
			i(222426), -- Ironclaw Alloy+
			i(222427), -- Ironclaw Alloy++
			i(222428), -- Ironclaw Alloy+++
			i(222417), -- Core Alloy+
			i(222418), -- Core Alloy++
			i(222419), -- Core Alloy+++
			i(222511), -- Adjustable Framework+
			i(222512), -- Adjustable Framework++
			i(222513), -- Adjustable Framework+++
			i(222514), -- Tempered Framework+
			i(222515), -- Tempered Framework++
			i(222516), -- Tempered Framework+++
			i(222499), -- Forged Framework+
			i(222500), -- Forged Framework++
			i(222501), -- Forged Framework+++
		}),
		n(WEAPONS, {
			i(222439), -- Charged Dagger
			i(222440), -- Charged Longsword
			i(222441), -- Charged Warglaive
			i(222442), -- Charged Mace
			i(222443), -- Charged Greataxe
			i(222444), -- Charged Hexsword
			i(222445), -- Charged Runeaxe
			i(222446), -- Charged Facesmaher
			i(222447), -- Charged Claymore
			i(222448), -- Charged Halberd
			i(222449), -- Charged Crusher
			i(222450), -- Charged Invoker
			i(222451), -- Charged Slicer
			i(222464), -- Ironclaw Stiletto
			i(222465), -- Ironclaw Dirk
			i(222466), -- Ironclaw Sword
			i(222467), -- Ironclaw Knuckles
			i(222468), -- Ironclaw Great Mace
			i(222469), -- Ironclaw Axe
			i(222470), -- Ironclaw Great Axe
			i(225366), -- Algari Competitor's Splitter
			i(225367), -- Algari Competitor's Dagger
			i(225371), -- Algari Competitor's Scepter
			i(225373), -- Algari Competitor's Shield
			i(225374), -- Algari Competitor's Axe
			i(225375), -- Algari Competitor's Sickle
			i(225377), -- Algari Competitor's Sword
			i(225376),	-- Algari Competitor's Greatsword
			i(222459),	-- Beledar's Bulwark
			i(222446),	-- Charged Facesmasher
			i(222463),	-- Siphoning Stiletto
			i(222439),	-- Everforged Dagger
			i(222432), -- Everforged Defender
			i(222443),	-- Everforged Greataxe
			i(222440),	-- Everforged Longsword
			i(222442),	-- Everforged Mace
			i(222438),	-- Everforged Stabber
			i(222441),	-- Everforged Warglaive
		}),
	}),
	--[[
	prof(COOKING, {
	}),
	--]]
	prof(ENCHANTING, {
		spell(455970, {	-- Disenchant
			i(219949),	-- Gleaming Shard+
			i(219950),	-- Gleaming Shard++
			i(219951),	-- Gleaming Shard+++
			i(219952),	-- Refulgent Crystal+
			i(219954),	-- Refulgent Crystal++
			i(219955),	-- Refulgent Crystal+++
			i(219946),	-- Storm Dust+
			i(219947),	-- Storm Dust++
			i(219948),	-- Storm Dust+++
		}),
		spell(445466, {	-- Shatter Essence
			i(220381),	-- Shatter Essence
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(223618),	-- Enchant Boots - Cavalry's March+
			i(223649),	-- Enchant Boots - Cavalry's March++
			i(223650),	-- Enchant Boots - Cavalry's March+++
			i(223654),	-- Enchant Boots - Defender's March+
			i(223655),	-- Enchant Boots - Defender's March++
			i(223656),	-- Enchant Boots - Defender's March+++
			i(223651),	-- Enchant Boots - Scout's March+
			i(223652),	-- Enchant Boots - Scout's March++
			i(223653),	-- Enchant Boots - Scout's March+++
			i(223711),	-- Enchant Bracer - Chant of Armored Avoidance+
			i(223712),	-- Enchant Bracer - Chant of Armored Avoidance++
			i(223713),	-- Enchant Bracer - Chant of Armored Avoidance+++
			i(223717),	-- Enchant Bracer - Chant of Armored Leech+
			i(223718),	-- Enchant Bracer - Chant of Armored Leech++
			i(223719),	-- Enchant Bracer - Chant of Armored Leech+++
			i(223723),	-- Enchant Bracer - Chant of Armored Speed+
			i(223724),	-- Enchant Bracer - Chant of Armored Speed++
			i(223725),	-- Enchant Bracer - Chant of Armored Speed+++
			i(223708),	-- Enchant Bracer - Whisper of Armored Avoidance+
			i(223709),	-- Enchant Bracer - Whisper of Armored Avoidance++
			i(223710),	-- Enchant Bracer - Whisper of Armored Avoidance+++
			i(223714),	-- Enchant Bracer - Whisper of Armored Leech+
			i(223715),	-- Enchant Bracer - Whisper of Armored Leech++
			i(223716),	-- Enchant Bracer - Whisper of Armored Leech+++
			i(223720),	-- Enchant Bracer - Whisper of Armored Speed+
			i(223721),	-- Enchant Bracer - Whisper of Armored Speed++
			i(223722),	-- Enchant Bracer - Whisper of Armored Speed+++
			i(223684),	-- Enchant Chest - Council's Intellect+
			i(223685),	-- Enchant Chest - Council's Intellect++
			i(223686),	-- Enchant Chest - Council's Intellect+++
			i(223690),	-- Enchant Chest - Crystalline Radiance+
			i(223691),	-- Enchant Chest - Crystalline Radiance++
			i(223692),	-- Enchant Chest - Crystalline Radiance+++
			i(223687),	-- Enchant Chest - Oathsworn's Strength+
			i(223688),	-- Enchant Chest - Oathsworn's Strength++
			i(223689),	-- Enchant Chest - Oathsworn's Strength+++
			i(223681),	-- Enchant Chest - Stormrider's Agility+
			i(223682),	-- Enchant Chest - Stormrider's Agility++
			i(223683),	-- Enchant Chest - Stormrider's Agility+++
			i(223798),	-- Enchant Cloak - Chant of Burrowing Rapidity+
			i(223799),	-- Enchant Cloak - Chant of Burrowing Rapidity++
			i(223800),	-- Enchant Cloak - Chant of Burrowing Rapidity+++
			i(223735),	-- Enchant Cloak - Chant of Leeching Fangs+
			i(223736),	-- Enchant Cloak - Chant of Leeching Fangs++
			i(223737),	-- Enchant Cloak - Chant of Leeching Fangs+++
			i(223729),	-- Enchant Cloak - Chant of Winged Grace+
			i(223730),	-- Enchant Cloak - Chant of Winged Grace++
			i(223731),	-- Enchant Cloak - Chant of Winged Grace+++
			i(223726),	-- Enchant Cloak - Whisper of Silken Avoidance+
			i(223727),	-- Enchant Cloak - Whisper of Silken Avoidance++
			i(223728),	-- Enchant Cloak - Whisper of Silken Avoidance+++
			i(223732),	-- Enchant Cloak - Whisper of Silken Leech+
			i(223733),	-- Enchant Cloak - Whisper of Silken Leech++
			i(223734),	-- Enchant Cloak - Whisper of Silken Leech+++
			i(223738),	-- Enchant Cloak - Whisper of Silken Speed+
			i(223739),	-- Enchant Cloak - Whisper of Silken Speed++
			i(223740),	-- Enchant Cloak - Whisper of Silken Speed+++
			i(223785),	-- Enchant Ring - Cursed Critical Strike+
			i(223786),	-- Enchant Ring - Cursed Critical Strike++
			i(223787),	-- Enchant Ring - Cursed Critical Strike+++
			i(223788),	-- Enchant Ring - Cursed Haste+
			i(223789),	-- Enchant Ring - Cursed Haste++
			i(223790),	-- Enchant Ring - Cursed Haste+++
			i(223791),	-- Enchant Ring - Cursed Mastery+
			i(223792),	-- Enchant Ring - Cursed Mastery++
			i(223793),	-- Enchant Ring - Cursed Mastery+++
			i(223794),	-- Enchant Ring - Cursed Versatility+
			i(223795),	-- Enchant Ring - Cursed Versatility++
			i(223796),	-- Enchant Ring - Cursed Versatility+++
			i(223657),	-- Enchant Ring - Glimmering Critical Strike+
			i(223658),	-- Enchant Ring - Glimmering Critical Strike++
			i(223659),	-- Enchant Ring - Glimmering Critical Strike+++
			i(223663),	-- Enchant Ring - Glimmering Haste+
			i(223664),	-- Enchant Ring - Glimmering Haste++
			i(223665),	-- Enchant Ring - Glimmering Haste+++
			i(223666),	-- Enchant Ring - Glimmering Mastery+
			i(223667),	-- Enchant Ring - Glimmering Mastery++
			i(223668),	-- Enchant Ring - Glimmering Mastery+++
			i(223669),	-- Enchant Ring - Glimmering Versatility+
			i(223670),	-- Enchant Ring - Glimmering Versatility++
			i(223671),	-- Enchant Ring - Glimmering Versatility+++
			i(223660),	-- Enchant Ring - Radiant Critical Strike+
			i(223661),	-- Enchant Ring - Radiant Critical Strike++
			i(223662),	-- Enchant Ring - Radiant Critical Strike+++
			i(223672),	-- Enchant Ring - Radiant Haste+
			i(223673),	-- Enchant Ring - Radiant Haste++
			i(223674),	-- Enchant Ring - Radiant Haste+++
			i(223675),	-- Enchant Ring - Radiant Mastery+
			i(223676),	-- Enchant Ring - Radiant Mastery++
			i(223677),	-- Enchant Ring - Radiant Mastery+++
			i(223678),	-- Enchant Ring - Radiant Versatility+
			i(223679),	-- Enchant Ring - Radiant Versatility++
			i(223680),	-- Enchant Ring - Radiant Versatility+++
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ENCHANTING,
		},{
			-- Algari Illusions
			FirstCraft(81040, 445367);	-- Gleeful Glamour - Blood Elf
			FirstCraft(81072, 445400);	-- Gleeful Glamour - Dark Iron Dwarf
			FirstCraft(81063, 445391);	-- Gleeful Glamour - Draenei
			FirstCraft(81074, 445402);	-- Gleeful Glamour - Dwarf
			--FirstCraft(xx, 445382);	-- Gleeful Glamour - Earthen
			FirstCraft(81035, 445362);	-- Gleeful Glamour - Gnome
			FirstCraft(81005, 445332);	-- Gleeful Glamour - Goblin
			FirstCraft(81049, 445377);	-- Gleeful Glamour - Highmountain Tauren
			FirstCraft(81025, 445352);	-- Gleeful Glamour - Human
			FirstCraft(81015, 445342);	-- Gleeful Glamour - Kul Tiran
			FirstCraft(81016, 445343);	-- Gleeful Glamour - Lightforged Draenei
			FirstCraft(81042, 445370);	-- Gleeful Glamour - Mag'har Orc
			FirstCraft(81030, 445357);	-- Gleeful Glamour - Mechagnome
			FirstCraft(81036, 445363);	-- Gleeful Glamour - Night Elf
			FirstCraft(81062, 445390);	-- Gleeful Glamour - Nightborne
			FirstCraft(80992, 445319);	-- Gleeful Glamour - Orc
			FirstCraft(81038, 445365);	-- Gleeful Glamour - Pandaren
			FirstCraft(81039, 445366);	-- Gleeful Glamour - Tauren
			FirstCraft(80999, 445326);	-- Gleeful Glamour - Troll
			FirstCraft(81023, 445350);	-- Gleeful Glamour - Undead
			FirstCraft(81029, 445356);	-- Gleeful Glamour - Void Elf
			FirstCraft(81002, 445329);	-- Gleeful Glamour - Vulpera
			FirstCraft(81069, 445397);	-- Gleeful Glamour - Worgen
			FirstCraft(81018, 445345);	-- Gleeful Glamour - Zandalari Troll
			FirstCraft(81033, 445360);	-- Illusory Adornment: Runes
			FirstCraft(81000, 445327);	-- Illusory Adornment: Crystal
			FirstCraft(81073, 445401);	-- Illusory Adornment: Radiance
			FirstCraft(81010, 445337);	-- Illusory Adornment: Shadow
			-- Arathor Enchantments
			FirstCraft(81004, 445331);	-- Authority of Air
			FirstCraft(81012, 445339);	-- Authority of Radiant Power
			FirstCraft(81075, 445403);	-- Authority of Fiery Resolve
			FirstCraft(81008, 445335);	-- Cavalry's March
			FirstCraft(81068, 445396);	-- Defender's March
			FirstCraft(81031, 445358);	-- Glimmering Critical Strike
			FirstCraft(81056, 445384);	-- Glimmering Haste
			FirstCraft(81053, 445381);	-- Glimmering Mastery
			FirstCraft(81013, 445340);	-- Glimmering Versatility
			FirstCraft(81059, 445387);	-- Radiant Critical Strike
			FirstCraft(80993, 445320);	-- Radiant Haste
			FirstCraft(81047, 445375);	-- Radiant Mastery
			FirstCraft(81022, 445349);	-- Radiant Versatility
			FirstCraft(81041, 445368);	-- Scout's March
			-- Earthen Enchantments
			FirstCraft(81037, 445364);	-- Algari Deftness
			FirstCraft(81001, 445328);	-- Algari Finesse
			FirstCraft(81050, 445378);	-- Algari Ingenuity
			FirstCraft(81052, 445380);	-- Algari Perception
			FirstCraft(81070, 445398);	-- Algari Resourcefulness
			FirstCraft(81009, 445336);	-- Authority of Storms
			FirstCraft(81051, 445379);	-- Council's Guile
			FirstCraft(80995, 445322);	-- Council's Intellect
			FirstCraft(81006, 445333);	-- Crystalline Radiance
			FirstCraft(81024, 445351);	-- Oathsworn Tenacity
			FirstCraft(80994, 445321);	-- Oathsworn's Strength
			FirstCraft(81057, 445385);	-- Stonebound Artistry
			FirstCraft(81026, 445353);	-- Stormrider's Agility
			FirstCraft(80990, 445317);	-- Stormrider's Fury
			-- Mana Oils
			FirstCraft(81011, 445338);	-- Algari Mana Oil
			FirstCraft(80991, 445318);	-- Oil of Beledar's Grace
			FirstCraft(81019, 445346);	-- Oil of Deep Toxins
			-- Nerubian Enchantments
			FirstCraft(81014, 445341);	-- Authority of the Depths
			FirstCraft(81007, 445334);	-- Chant of Armored Avoidance
			FirstCraft(80998, 445325);	-- Chant of Armored Leech
			FirstCraft(81003, 445330);	-- Chant of Armored Speed
			FirstCraft(81061, 445389);	-- Chant of Burrowing Rapidity
			FirstCraft(81065, 445393);	-- Chant of Leeching Fangs
			FirstCraft(81058, 445386);	-- Chant of Winged Grace
			FirstCraft(81066, 445394);	-- Cursed Critical Strike
			FirstCraft(81060, 445388);	-- Cursed Haste
			FirstCraft(81032, 445359);	-- Cursed Mastery
			FirstCraft(81055, 445383);	-- Cursed Versatility
			FirstCraft(81064, 445392);	-- Whisper of Armored Avoidance
			FirstCraft(81046, 445374);	-- Whisper of Armored Leech
			FirstCraft(81048, 445376);	-- Whisper of Armored Speed
			FirstCraft(81017, 445344);	-- Whisper of Silken Avoidance
			FirstCraft(81021, 445348);	-- Whisper of Silken Leech
			FirstCraft(81045, 445373);	-- Whisper of Silken Speed
			-- Reagents
			FirstCraft(81067, 445395);	-- Concentration Concentrate
			--FirstCraft(xx, 445354);	-- Enchanted Gilded Harbinger Crest
			--FirstCraft(xx, 445347);	-- Enchanted Runed Harbinger Crest
			--FirstCraft(xx, 445399);	-- Enchanted Weathered Harbinger Crest
			FirstCraft(81043, 445371);	-- Mirror Powder
			-- Rods and Wants
			--FirstCraft(xx, 445324);	-- Enchanted Spearwood Wand
			FirstCraft(81034, 445361);	-- Runed Bismuth Rod
			FirstCraft(81044, 445372);	-- Runed Ironclaw Rod
			FirstCraft(80996, 445323);	-- Runed Null Stone Rod
			--FirstCraft(xx, 445355);	-- Scepter of Radiant Magics
		})),
		filter(ILLUSIONS, {
		}),
		filter(MISC, {
			i(224105),	-- Algari Mana Oil+
			i(224106),	-- Algari Mana Oil++
			i(224107),	-- Algari Mana Oil+++
			i(227208),	-- Bismuth Rod
			i(224300),	-- Gleeful Glamour - Blood Elf+
			i(224324),	-- Gleeful Glamour - Blood Elf++
			i(224348),	-- Gleeful Glamour - Blood Elf+++
			i(224301),	-- Gleeful Glamour - Dark Iron Dwarf+
			i(224325),	-- Gleeful Glamour - Dark Iron Dwarf++
			i(224349),	-- Gleeful Glamour - Dark Iron Dwarf+++
			i(224302),	-- Gleeful Glamour - Draenei+
			i(224326),	-- Gleeful Glamour - Draenei++
			i(224350),	-- Gleeful Glamour - Draenei+++
			i(224303),	-- Gleeful Glamour - Dwarf+
			i(224327),	-- Gleeful Glamour - Dwarf++
			i(224351),	-- Gleeful Glamour - Dwarf+++
			i(224304),	-- Gleeful Glamour - Earthen+
			i(224328),	-- Gleeful Glamour - Earthen++
			i(224352),	-- Gleeful Glamour - Earthen+++
			i(224305),	-- Gleeful Glamour - Gnome+
			i(224329),	-- Gleeful Glamour - Gnome++
			i(224353),	-- Gleeful Glamour - Gnome+++
			i(224306),	-- Gleeful Glamour - Goblin+
			i(224330),	-- Gleeful Glamour - Goblin++
			i(224354),	-- Gleeful Glamour - Goblin+++
			i(224307),	-- Gleeful Glamour - Highmountain Tauren+
			i(224331),	-- Gleeful Glamour - Highmountain Tauren++
			i(224355),	-- Gleeful Glamour - Highmountain Tauren+++
			i(224308),	-- Gleeful Glamour - Human+
			i(224332),	-- Gleeful Glamour - Human++
			i(224356),	-- Gleeful Glamour - Human+++
			i(224309),	-- Gleeful Glamour - Kul Tiran+
			i(224333),	-- Gleeful Glamour - Kul Tiran++
			i(224357),	-- Gleeful Glamour - Kul Tiran+++
			i(224310),	-- Gleeful Glamour - Lightforged Draenei+
			i(224334),	-- Gleeful Glamour - Lightforged Draenei++
			i(224358),	-- Gleeful Glamour - Lightforged Draenei+++
			i(224311),	-- Gleeful Glamour - Mag'har Orc+
			i(224335),	-- Gleeful Glamour - Mag'har Orc++
			i(224359),	-- Gleeful Glamour - Mag'har Orc+++
			i(224312),	-- Gleeful Glamour - Mechagnome+
			i(224336),	-- Gleeful Glamour - Mechagnome++
			i(224360),	-- Gleeful Glamour - Mechagnome+++
			i(224313),	-- Gleeful Glamour - Night Elf+
			i(224337),	-- Gleeful Glamour - Night Elf++
			i(224361),	-- Gleeful Glamour - Night Elf+++
			i(224314),	-- Gleeful Glamour - Nightborne+
			i(224338),	-- Gleeful Glamour - Nightborne++
			i(224362),	-- Gleeful Glamour - Nightborne+++
			i(224315),	-- Gleeful Glamour - Orc+
			i(224339),	-- Gleeful Glamour - Orc++
			i(224363),	-- Gleeful Glamour - Orc+++
			i(224316),	-- Gleeful Glamour - Pandaren+
			i(224340),	-- Gleeful Glamour - Pandaren++
			i(224364),	-- Gleeful Glamour - Pandaren+++
			i(224317),	-- Gleeful Glamour - Tauren+
			i(224341),	-- Gleeful Glamour - Tauren++
			i(224365),	-- Gleeful Glamour - Tauren+++
			i(224318),	-- Gleeful Glamour - Troll+
			i(224342),	-- Gleeful Glamour - Troll++
			i(224366),	-- Gleeful Glamour - Troll+++
			i(224319),	-- Gleeful Glamour - Undead+
			i(224343),	-- Gleeful Glamour - Undead++
			i(224367),	-- Gleeful Glamour - Undead+++
			i(224320),	-- Gleeful Glamour - Void Elf+
			i(224344),	-- Gleeful Glamour - Void Elf++
			i(224368),	-- Gleeful Glamour - Void Elf+++
			i(224321),	-- Gleeful Glamour - Vulpera+
			i(224345),	-- Gleeful Glamour - Vulpera++
			i(224369),	-- Gleeful Glamour - Vulpera+++
			i(224322),	-- Gleeful Glamour - Worgen+
			i(224346),	-- Gleeful Glamour - Worgen++
			i(224370),	-- Gleeful Glamour - Worgen+++
			i(224323),	-- Gleeful Glamour - Zaldalari Troll+
			i(224347),	-- Gleeful Glamour - Zaldalari Troll++
			i(224371),	-- Gleeful Glamour - Zaldalari Troll+++
			i(223746),	-- Illusory Adornment: Crystal+
			i(223745),	-- Illusory Adornment: Crystal++
			i(223747),	-- Illusory Adornment: Crystal+++
			i(223748),	-- Illusory Adornment: Radiance+
			i(223749),	-- Illusory Adornment: Radiance++
			i(223750),	-- Illusory Adornment: Radiance+++
			i(223751),	-- Illusory Adornment: Runes+
			i(223752),	-- Illusory Adornment: Runes++
			i(223753),	-- Illusory Adornment: Runes+++
			i(223754),	-- Illusory Adornment: Shadow+
			i(223755),	-- Illusory Adornment: Shadow++
			i(223756),	-- Illusory Adornment: Shadow+++
			i(224108),	-- Oil of Beledar's Grace+
			i(224109),	-- Oil of Beledar's Grace++
			i(224110),	-- Oil of Beledar's Grace+++
			i(224111),	-- Oil of Deep Toxins+
			i(224112),	-- Oil of Deep Toxins++
			i(224113),	-- Oil of Deep Toxins+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(224114),	-- Runed Bismuth Rod
			i(224115),	-- Runed Ironclaw Rod
			i(224116),	-- Runed Null Stone Rod
		}),
		filter(REAGENTS, {
			i(224173),	-- Concentration Concentrate+
			i(224174),	-- Concentration Concentrate++
			i(224175),	-- Concentration Concentrate+++
			i(224073),	-- Enchanted Gilded Harbinger Crest
			i(224072),	-- Enchanted Runed Harbinger Crest
			i(224069),	-- Enchanted Weathered Harbinger Crest
			i(224177),	-- Mirror Powder+
			i(224178),	-- Mirror Powder++
			i(224176),	-- Mirror Powder+++
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(223693),	-- Enchant Tool - Algari Deftness+
			i(223694),	-- Enchant Tool - Algari Deftness++
			i(223695),	-- Enchant Tool - Algari Deftness+++
			i(223696),	-- Enchant Tool - Algari Finesse+
			i(223697),	-- Enchant Tool - Algari Finesse++
			i(223698),	-- Enchant Tool - Algari Finesse+++
			i(223699),	-- Enchant Tool - Algari Ingenuity+
			i(223700),	-- Enchant Tool - Algari Ingenuity++
			i(223701),	-- Enchant Tool - Algari Ingenuity+++
			i(223702),	-- Enchant Tool - Algari Perception+
			i(223703),	-- Enchant Tool - Algari Perception++
			i(223704),	-- Enchant Tool - Algari Perception+++
			i(223705),	-- Enchant Tool - Algari Resourcefulness+
			i(223706),	-- Enchant Tool - Algari Resourcefulness++
			i(223707),	-- Enchant Tool - Algari Resourcefulness+++
			i(223773),	-- Enchant Weapon - Authority of Air+
			i(223774),	-- Enchant Weapon - Authority of Air++
			i(223775),	-- Enchant Weapon - Authority of Air+++
			i(223776),	-- Enchant Weapon - Authority of Fiery Resolve+
			i(223777),	-- Enchant Weapon - Authority of Fiery Resolve++
			i(223778),	-- Enchant Weapon - Authority of Fiery Resolve+++
			i(223779),	-- Enchant Weapon - Authority of Radiant Power+
			i(223780),	-- Enchant Weapon - Authority of Radiant Power++
			i(223781),	-- Enchant Weapon - Authority of Radiant Power+++
			i(223770),	-- Enchant Weapon - Authority of Storms+
			i(223771),	-- Enchant Weapon - Authority of Storms++
			i(223772),	-- Enchant Weapon - Authority of Storms+++
			i(223782),	-- Enchant Weapon - Authority of the Depths+
			i(223783),	-- Enchant Weapon - Authority of the Depths++
			i(223784),	-- Enchant Weapon - Authority of the Depths+++
			i(223757),	-- Enchant Weapon - Council's Guile+
			i(223758),	-- Enchant Weapon - Council's Guile++
			i(223759),	-- Enchant Weapon - Council's Guile+++
			i(223766),	-- Enchant Weapon - Oathsworn Tenacity+
			i(223767),	-- Enchant Weapon - Oathsworn Tenacity++
			i(223768),	-- Enchant Weapon - Oathsworn Tenacity+++
			i(223763),	-- Enchant Weapon - Stonebound Artistry+
			i(223764),	-- Enchant Weapon - Stonebound Artistry++
			i(223765),	-- Enchant Weapon - Stonebound Artistry+++
			i(223760),	-- Enchant Weapon - Stormrider's Fury+
			i(223761),	-- Enchant Weapon - Stormrider's Fury++
			i(223762),	-- Enchant Weapon - Stormrider's Fury+++
		}),
		n(WEAPONS, {
			i(224404),	-- Enchanted Spearwood Wand
			i(224405),	-- Scepter of Radiant Magics
		}),
	}),
	--[[
	prof(ENGINEERING, {
		n(DISCOVERY, {
		}),
		n(ARMOR, {
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ENGINEERING,
		},{
		})),
		filter(MISC, {
		}),
		filter(PROFESSION_EQUIPMENT, {
		}),
		filter(REAGENTS, {
		}),
		filter(TOYS, {
		}),
		n(WEAPONS, {
		}),
	}),
	--]]
	prof(FISHING, {
		i(220143),	-- Dornish Pike
		i(222533),	-- Goldengill Trout
		filter(RECIPES, {
			i(34109, {	-- Weather-Beaten Journal (RECIPE!)
				["description"] = "Can be fished from schools.",
			}),
		}),
	}),
	prof(HERBALISM, {
		spell(2366, {	-- Herb Gathering
			i(210808),	-- Arathor's Spear+
			i(210809),	-- Arathor's Spear++
			i(210810),	-- Arathor's Spear+++
			i(210805),	-- Blessing Blossom+
			i(210806),	-- Blessing Blossom++
			i(210807),	-- Blessing Blossom+++
			i(224264),	-- Deepgrove Petal
			i(224265),	-- Deepgrove Rose
			i(210799),	-- Luredrop+
			i(210800),	-- Luredrop++
			i(210801),	-- Luredrop+++
			i(210796),	-- Mycobloom+
			i(210797),	-- Mycobloom++
			i(210798),	-- Mycobloom+++
			i(213197),	-- Null Lotus
			i(210802),	-- Orbinid+
			i(210803),	-- Orbinid++
			i(210804),	-- Orbinid+++
			i(214561),	-- Verdant Seed
		}),
		n(DISCOVERY, {
			r(435858),	-- Altered Luredrop
			r(435840),	-- Altered Mycobloom
			r(435864),	-- Altered Orbinid
			r(435826),	-- Arathor's Spear
			r(435823),	-- Blessing Blossom
			r(435879),	-- Camouflaged Arathor's Spear
			r(435872),	-- Camouflaged Blessing Blossom
			r(435860),	-- Camouflaged Luredrop
			r(435851),	-- Camouflaged Mycobloom
			r(435866),	-- Camouflaged Orbinid
			r(435877),	-- Crystallized Arathor's Spear
			r(435870),	-- Crystallized Blessing Blossom
			r(435857),	-- Crystallized Luredrop
			r(435838),	-- Crystallized Mycobloom
			r(435862),	-- Crystallized Orbinid
			r(442990),	-- Empowered Mulch
			r(439871),	-- Green Thumb
			r(442989),	-- Imbued Mulch
			r(435878),	-- Irradiated Arathor's Spear
			r(435871),	-- Irradiated Blessing Blossom
			r(435859),	-- Irradiated Luredrop
			r(435843),	-- Irradiated Mycobloom
			r(435865),	-- Irradiated Orbinid
			r(435821),	-- Luredrop
			r(435836),	-- Lush Arathor's Spear
			r(435834),	-- Lush Blessing Blossom
			r(435829),	-- Lush Luredrop
			r(435812),	-- Lush Mycobloom
			r(435830),	-- Lush Orbinid
			r(442988),	-- Magical Mulch
			r(435822),	-- Orbinid
			r(438953),	-- Overload Altered Herb
			r(438952),	-- Overload Crystallized Herb
			r(423395),	-- Overload Empowered Herb
			r(438955),	-- Overload Irradiated Herb
			r(438961),	-- Overload Sporefused Herb
			r(435880),	-- Sporefused Arathor's Spear
			r(435873),	-- Sporefused Blessing Blossom
			r(435861),	-- Sporefused Luredrop
			r(435850),	-- Sporefused Mycobloom
			r(435867),	-- Sporefused Orbinid
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = HERBALISM,
		},{
			-- Arathor's Spear
			FirstCraft(79933, 435826);	-- Arathor's Spear
			--FirstCraft(XXXXX, 435879);	-- Camouflaged Arathor's Spear
			FirstCraft(79935, 435877);	-- Crystallized Arathor's Spear
			FirstCraft(79936, 435878);	-- Irradiated Arathor's Spear
			FirstCraft(79934, 435836);	-- Lush Arathor's Spear
			--FirstCraft(XXXXX, 435880);	-- Sporefused Arathor's Spear
			-- Blessing Blossom
			FirstCraft(79927, 435823);	-- Blessing Blossom
			--FirstCraft(XXXXX, 435872);	-- Camouflaged Blessing Blossom
			FirstCraft(79929, 435870);	-- Crystallized Blessing Blossom
			FirstCraft(79930, 435871);	-- Irradiated Blessing Blossom
			FirstCraft(79928, 435834);	-- Lush Blessing Blossom
			--FirstCraft(XXXXX, 435873);	-- Sporefused Blessing Blossom
			-- Luredrop
			FirstCraft(79913, 435821);	-- Luredrop
			FirstCraft(79916, 435858);	-- Altered Luredrop
			--FirstCraft(XXXXX, 435860);	-- Camouflaged Luredrop
			FirstCraft(79915, 435857);	-- Crystallized Luredrop
			--FirstCraft(XXXXX, 435859);	-- Irradiated Luredrop
			--FirstCraft(XXXXX, 435829);	-- Lush Luredrop
			--FirstCraft(XXXXX, 435861);	-- Sporefused Luredrop
			-- Mycobloom
			FirstCraft(79906, 435811);	-- Mycobloom
			FirstCraft(79909, 435840);	-- Altered Mycobloom
			--FirstCraft(XXXXX, 435851);	-- Camouflaged Mycobloom
			FirstCraft(79908, 435838);	-- Crystallized Mycobloom
			FirstCraft(79910, 435843);	-- Irradiated Mycobloom
			FirstCraft(79907, 435812);	-- Lush Mycobloom
			FirstCraft(79912, 435850);	-- Sporefused Mycobloom
			-- Orbinid
			FirstCraft(79920, 435822);	-- Orbinid
			FirstCraft(79923, 435864);	-- Altered Orbinid
			--FirstCraft(XXXXX, 435866);	-- Camouflaged Orbinid
			FirstCraft(79922, 435862);	-- Crystallized Orbinid
			--FirstCraft(XXXXX, 435865);	-- Irradiated Orbinid
			FirstCraft(79921, 435830);	-- Lush Orbinid
			--FirstCraft(XXXXX, 435867);	-- Sporefused Orbinid
			-- Overload
			--FirstCraft(XXXXX, 438953);	-- Overload Altered Herb
			--FirstCraft(XXXXX, 438952);	-- Overload Crystallized Herb
			--FirstCraft(XXXXX, 423395);	-- Overload Empowered Herb
			--FirstCraft(XXXXX, 438955);	-- Overload Irradiated Herb
			--FirstCraft(XXXXX, 438961);	-- Overload Sporefused Herb
		})),
	}),
	prof(INSCRIPTION, {
		spell(444181, {	-- Khaz Algar Milling
			i(224805),	-- Blossom Pigment+
			i(224804),	-- Blossom Pigment++
			i(224803),	-- Blossom Pigment+++
			i(222612),	-- Luredrop Pigment+
			i(222613),	-- Luredrop Pigment++
			i(222614),	-- Luredrop Pigment+++
			i(222618),	-- Nacreous Pigment+
			i(222619),	-- Nacreous Pigment++
			i(222620),	-- Nacreous Pigment+++
			i(224802),	-- Orbinid Pigment+
			i(224801),	-- Orbinid Pigment++
			i(224800),	-- Orbinid Pigment+++
		}),
		n(DISCOVERY, {
			spell(447868, {	-- Algari Treatise on Inscription
				r(444187),	-- Algari Treatise on Alchemy
				r(444184),	-- Algari Treatise on Blacksmithing
				r(444188),	-- Algari Treatise on Enchanting
				r(444223),	-- Algari Treatise on Engineering
				r(444182),	-- Algari Treatise on Herbalism
				r(444189),	-- Algari Treatise on Jewelcrafting
				r(444185),	-- Algari Treatise on Leatherworking
				r(444183),	-- Algari Treatise on Mining
				r(444236),	-- Algari Treatise on Skinning
				r(444186),	-- Algari Treatise on Tailoring
			}),
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = INSCRIPTION,
		},{
		})),
		filter(GLYPHS, {
		}),
		filter(MISC, {
			i(222635),	-- Algari Missive of Crafting Speed+
			i(222636),	-- Algari Missive of Crafting Speed++
			i(222637),	-- Algari Missive of Crafting Speed+++
			i(222644),	-- Algari Missive of Deftness+
			i(222645),	-- Algari Missive of Deftness++
			i(222646),	-- Algari Missive of Deftness+++
			i(222638),	-- Algari Missive of Finesse+
			i(222639),	-- Algari Missive of Finesse++
			i(222640),	-- Algari Missive of Finesse+++
			i(222626),	-- Algari Missive of Ingenuity+
			i(222627),	-- Algari Missive of Ingenuity++
			i(222628),	-- Algari Missive of Ingenuity+++
			i(222632),	-- Algari Missive of Multicraft+
			i(222633),	-- Algari Missive of Multicraft++
			i(222634),	-- Algari Missive of Multicraft+++
			i(222641),	-- Algari Missive of Perception+
			i(222642),	-- Algari Missive of Perception++
			i(222643),	-- Algari Missive of Perception+++
			i(222629),	-- Algari Missive of Resourcefulness+
			i(222630),	-- Algari Missive of Resourcefulness++
			i(222631),	-- Algari Missive of Resourcefulness+++
			i(222579),	-- Algari Missive of the Aurora+
			i(222580),	-- Algari Missive of the Aurora++
			i(222581),	-- Algari Missive of the Aurora+++
			i(222582),	-- Algari Missive of the Feverflare+
			i(222583),	-- Algari Missive of the Feverflare++
			i(222584),	-- Algari Missive of the Feverflare+++
			i(222585),	-- Algari Missive of the Fireflash+
			i(222586),	-- Algari Missive of the Fireflash++
			i(222587),	-- Algari Missive of the Fireflash+++
			i(222588),	-- Algari Missive of the Harmonious+
			i(222589),	-- Algari Missive of the Harmonious++
			i(222590),	-- Algari Missive of the Harmonious+++
			i(222591),	-- Algari Missive of the Peerless+
			i(222592),	-- Algari Missive of the Peerless++
			i(222593),	-- Algari Missive of the Peerless+++
			i(222594),	-- Algari Missive of the Quickblade+
			i(222595),	-- Algari Missive of the Quickblade++
			i(222596),	-- Algari Missive of the Quickblade+++
			i(222546),	-- Algari Treatise on Alchemy
			i(222554),	-- Algari Treatise on Blacksmithing
			i(222550),	-- Algari Treatise on Enchanting
			i(222621),	-- Algari Treatise on Engineering
			i(222552),	-- Algari Treatise on Herbalism
			i(222548),	-- Algari Treatise on Inscription
			i(222551),	-- Algari Treatise on Jewelcrafting
			i(222549),	-- Algari Treatise on Leatherworking
			i(222553),	-- Algari Treatise on Mining
			i(222649),	-- Algari Treatise on Skinning
			i(222547),	-- Algari Treatise on Tailoring
			i(222600),	-- Contract: Assembly of the Deeps+
			i(222601),	-- Contract: Assembly of the Deeps++
			i(222602),	-- Contract: Assembly of the Deeps+++
			i(222597),	-- Contract: Council of Dornogal+
			i(222598),	-- Contract: Council of Dornogal++
			i(222599),	-- Contract: Council of Dornogal+++
			i(222603),	-- Contract: Hallowfall Arathi+
			i(222604),	-- Contract: Hallowfall Arathi++
			i(222605),	-- Contract: Hallowfall Arathi+++
			i(222606),	-- Contract: The Severed Threads+
			i(222607),	-- Contract: The Severed Threads++
			i(222608),	-- Contract: The Severed Threads+++
			i(226022),	-- Darkmoon Sigil: Evolution+
			i(226023),	-- Darkmoon Sigil: Evolution++
			i(226024),	-- Darkmoon Sigil: Evolution+++
			i(226025),	-- Darkmoon Sigil: Radiance+
			i(226026),	-- Darkmoon Sigil: Radiance++
			i(226027),	-- Darkmoon Sigil: Radiance+++
			i(226028),	-- Darkmoon Sigil: Symbiosis+
			i(226029),	-- Darkmoon Sigil: Symbiosis++
			i(226030),	-- Darkmoon Sigil: Symbiosis+++
			i(226031),	-- Darkmoon Sigil: Vivacity+
			i(226032),	-- Darkmoon Sigil: Vivacity++
			i(226033),	-- Darkmoon Sigil: Vivacity+++
			i(226034),	-- Vantus Rune: Nerub-ar Palace+
			i(226035),	-- Vantus Rune: Nerub-ar Palace++
			i(226036),	-- Vantus Rune: Nerub-ar Palace+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(222577),	-- Burnt Rolling Pin
			i(222575),	-- Hasty Alchemist's Mixing Rod
			i(222578),	-- Inscribed Rolling Pin
			i(222573),	-- Lightweight Scribe's Quill
			i(222576),	-- Patient Alchemist's Mixing Rod
			i(222574),	-- Silver Tongue's Quill
		}),
		filter(REAGENTS, {
			i(222615),	-- Apricate Ink+
			i(222616),	-- Apricate Ink++
			i(222617),	-- Apricate Ink+++
			i(222558),	-- Boundless Cipher+
			i(222559),	-- Boundless Cipher++
			i(222560),	-- Boundless Cipher+++
			i(222555),	-- Codified Greenwood+
			i(222556),	-- Codified Greenwood++
			i(222557),	-- Codified Greenwood+++
			i(222609),	-- Shadow Ink+
			i(222610),	-- Shadow Ink++
			i(222611),	-- Shadow Ink+++
		}),
		spell(444224, {	-- Transcribe: Evolution
			i(222681),	-- Ace of Evolution
			i(222682),	-- Two of Evolution
			i(222683),	-- Three of Evolution
			i(222684),	-- Four of Evolution
			i(222685),	-- Five of Evolution
			i(222686),	-- Six of Evolution
			i(222687),	-- Seven of Evolution
			i(222688),	-- Eight of Evolution
		}),
		spell(444227, {	-- Transcribe: Radiance
			i(222663),	-- Ace of Radiance
			i(222664),	-- Two of Radiance
			i(222665),	-- Three of Radiance
			i(222666),	-- Four of Radiance
			i(222667),	-- Five of Radiance
			i(222668),	-- Six of Radiance
			i(222669),	-- Seven of Radiance
			i(222670),	-- Eight of Radiance
		}),
		spell(444226, {	-- Transcribe: Symbiosis
			i(222654),	-- Ace of Symbiosis
			i(222655),	-- Two of Symbiosis
			i(222656),	-- Three of Symbiosis
			i(222657),	-- Four of Symbiosis
			i(222658),	-- Five of Symbiosis
			i(222659),	-- Six of Symbiosis
			i(222660),	-- Seven of Symbiosis
			i(222661),	-- Eight of Symbiosis
		}),
		spell(444225, {	-- Transcribe: Vivacity
			i(222672),	-- Ace of Vivacity
			i(222673),	-- Two of Vivacity
			i(222674),	-- Three of Vivacity
			i(222675),	-- Four of Vivacity
			i(222676),	-- Five of Vivacity
			i(222677),	-- Six of Vivacity
			i(222678),	-- Seven of Vivacity
			i(222679),	-- Eight of Vivacity
		}),
		filter(TRINKET_F, {
			i(219933),	-- Algari Competitor's Emblem
			i(219932),	-- Algari Competitor's Insignia of Alacrity
			i(222680),	-- Darkmoon Deck: Evolve
			i(219672),	-- Darkmoon Deck: Radiance
			i(222653),	-- Darkmoon Deck: Symbiosis
			i(222671),	-- Darkmoon Deck: Vivacity
		}),
		n(WEAPONS, {
			i(225372),	-- Algari Competitor's Censer
			i(225368),	-- Algari Competitor's Scythe
			i(225369),	-- Algari Competitor's Staff
			i(222570),	-- Inquisitor's Baton
			i(222569),	-- Inquisitor's Crutch
			i(222565),	-- Inquisitor's Torch
			i(222568),	-- Vagabond's Bounding Baton
			i(222567),	-- Vagabond's Careful Crutch
			i(222566),	-- Vagabond's Torch
		}),
	}),
	--[[
	prof(JEWELCRAFTING, {
		spell(, {	--
		}),
		n(ARMOR, {
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = JEWELCRAFTING,
		},{
		})),
		filter(GEMS, {
		}),
		filter(MISC, {
		}),
		filter(PROFESSION_EQUIPMENT, {
		}),
		filter(REAGENTS, {
		}),
	}),
	--]]
	prof(LEATHERWORKING, {
		n(ARMOR, {
			filter(LEATHER, {
				i(219502),	-- Adrenal Surge Clasp
				i(217130),	-- Algari Competitor's Leather Belt
				i(217126),	-- Algari Competitor's Leather Boots
				i(217127),	-- Algari Competitor's Leather Chestpiece
				i(217132),	-- Algari Competitor's Leather Gloves
				i(217128),	-- Algari Competitor's Leather Mask
				i(217129),	-- Algari Competitor's Leather Shoulderpads
				i(217131),	-- Algari Competitor's Leather Trousers
				i(217133),	-- Algari Competitor's Leather Wristwraps
				i(219513),	-- Roiling Thunderstrike Talons
				i(219511),	-- Rook Feather Wristwraps
				i(219334),	-- Rune-Branded Armbands
				i(219333),	-- Rune-Branded Grasps
				i(219329),	-- Rune-Branded Hood
				i(219327),	-- Rune-Branded Kickers
				i(219332),	-- Rune-Branded Legwraps
				i(219330),	-- Rune-Branded Mantle
				i(219328),	-- Rune-Branded Tunic
				i(219331),	-- Rune-Branded Waistband
				i(219471),	-- Spelunker's Leather Bands
				i(219470),	-- Spelunker's Leather Footpads
				i(219472),	-- Spelunker's Leather Jerkin
				i(219479),	-- Spelunker's Practiced Britches
				i(219476),	-- Spelunker's Practiced Hat
				i(219478),	-- Spelunker's Practiced Mitts
				i(219480),	-- Spelunker's Practiced Sash
				i(219477),	-- Spelunker's Practiced Shoulders
				i(219489),	-- Waders of the Unifying Flame
				i(219512),	-- Weathered Stormfront Vest
			}),
			filter(MAIL, {
				i(217135),	-- Algari Competitor's Chain Chainmail
				i(217136),	-- Algari Competitor's Chain Cowl
				i(217141),	-- Algari Competitor's Chain Cuffs
				i(217137),	-- Algari Competitor's Chain Epaulets
				i(217140),	-- Algari Competitor's Chain Gauntlets
				i(217138),	-- Algari Competitor's Chain Girdle
				i(217139),	-- Algari Competitor's Chain Leggings
				i(217134),	-- Algari Competitor's Chain Treads
				i(219509),	-- Busy Bee's Buckle
				i(219339),	-- Glyph-Etched Binding
				i(219336),	-- Glyph-Etched Breastplate
				i(219340),	-- Glyph-Etched Cuisses
				i(219338),	-- Glyph-Etched Epaulets
				i(219341),	-- Glyph-Etched Gauntlets
				i(219337),	-- Glyph-Etched Guise
				i(219335),	-- Glyph-Etched Stompers
				i(219342),	-- Glyph-Etched Vambraces
				i(219508),	-- Reinforced Setae Flyers
				i(219492),	-- Sanctified Torchbearer's Grips
				i(219507),	-- Smoldering Pollen Hauberk
				i(219474),	-- Tracker's Chitin Cuffs
				i(219473),	-- Tracker's Chitin Galoshes
				i(219475),	-- Tracker's Chitin Hauberk
				i(219485),	-- Tracker's Toughened Girdle
				i(219483),	-- Tracker's Toughened Handguards
				i(219481),	-- Tracker's Toughened Headgear
				i(219484),	-- Tracker's Toughened Links
				i(219482),	-- Tracker's Toughened Shoulderguards
				i(219501),	-- Vambraces of Deepening Darkness
			}),
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = LEATHERWORKING,
			-- Arathorian Patterns
			FirstCraft(80922, 441460);	-- Blessed Weapon Grip
			FirstCraft(80927, 444073);	-- Sanctified Torchbearer's Grips
			FirstCraft(80926, 444071);	-- Waders of the Unifying Flame
			-- Bestial Patterns
			FirstCraft(80961, 443958);	-- Busy Bee's Buckle
			FirstCraft(80960, 443960);	-- Reinforced Setae Flyers
			FirstCraft(80956, 443950);	-- Roiling Thunderstrike Talons
			FirstCraft(80958, 443949);	-- Rook Feather Wristwraps
			FirstCraft(80959, 443961);	-- Smoldering Pollen Hauberk
			FirstCraft(80957, 443951);	-- Weathered Stormfront Vest
			-- Competitor's Leather (PvP)
			--FirstCraft(xx, 438902);	-- Algari Competitor's Leather Belt
			--FirstCraft(xx, 438898);	-- Algari Competitor's Leather Boots
			--FirstCraft(xx, 438899);	-- Algari Competitor's Leather Chestpiece
			--FirstCraft(xx, 438904);	-- Algari Competitor's Leather Gloves
			--FirstCraft(xx, 438900);	-- Algari Competitor's Leather Mask
			--FirstCraft(xx, 438901);	-- Algari Competitor's Leather Shoulderpads
			--FirstCraft(xx, 438903);	-- Algari Competitor's Leather Trousers
			--FirstCraft(xx, 438905);	-- Algari Competitor's Leather Wristwraps
			-- Competitor's Mail (PvP)
			--FirstCraft(xx, 438907);	-- Algari Competitor's Chain Chainmail
			--FirstCraft(xx, 438908);	-- Algari Competitor's Chain Cowl
			--FirstCraft(xx, 438913);	-- Algari Competitor's Chain Cuffs
			--FirstCraft(xx, 438909);	-- Algari Competitor's Chain Epaulets
			--FirstCraft(xx, 438912);	-- Algari Competitor's Chain Gauntlets
			--FirstCraft(xx, 438910);	-- Algari Competitor's Chain Girdle
			--FirstCraft(xx, 438911);	-- Algari Competitor's Chain Leggings
			--FirstCraft(xx, 438906);	-- Algari Competitor's Chain Treads
			-- Consumables
			FirstCraft(80953, 444103);	-- Defender's Armor Kit
			FirstCraft(80955, 444104);	-- Dual Layered Armor Kit
			FirstCraft(80954, 444102);	-- Stormbound Armor Kit
			FirstCraft(80952, 444122);	-- Thunderous Drums
			-- Leather Armor
			FirstCraft(80897, 441058);	-- Rune-Branded Armbands
			FirstCraft(80892, 441053);	-- Rune-Branded Grasps
			FirstCraft(80893, 441054);	-- Rune-Branded Hood
			FirstCraft(80890, 441052);	-- Rune-Branded Kickers
			FirstCraft(80894, 441055);	-- Rune-Branded Legwraps
			FirstCraft(80895, 441056);	-- Rune-Branded Mantle
			FirstCraft(80891, 441051);	-- Rune-Branded Tunic
			FirstCraft(80896, 441057);	-- Rune-Branded Waistband
			FirstCraft(80913, 443702);	-- Spelunker's Leather Bands
			FirstCraft(80907, 443696);	-- Spelunker's Leather Footpads
			FirstCraft(80906, 443695);	-- Spelunker's Leather Jerkin
			--FirstCraft(80910, 443699);	-- Spelunker's Practiced Britches
			--FirstCraft(80909, 443698);	-- Spelunker's Practiced Hat
			FirstCraft(80908, 443697);	-- Spelunker's Practiced Mitts
			FirstCraft(80912, 443701);	-- Spelunker's Practiced Sash
			FirstCraft(80911, 443700);	-- Spelunker's Practiced Shoulders
			-- Mail Armor
			FirstCraft(80904, 441065);	-- Glyph-Etched Binding
			FirstCraft(80899, 441059);	-- Glyph-Etched Breastplate
			FirstCraft(80902, 441063);	-- Glyph-Etched Cuisses
			FirstCraft(80903, 441064);	-- Glyph-Etched Epaulets
			FirstCraft(80900, 441061);	-- Glyph-Etched Gauntlets
			FirstCraft(80901, 441062);	-- Glyph-Etched Guise
			FirstCraft(80898, 441060);	-- Glyph-Etched Stompers
			FirstCraft(80905, 441066);	-- Glyph-Etched Vambraces
			FirstCraft(80921, 443710);	-- Tracker's Chitin Cuffs
			FirstCraft(80915, 443704);	-- Tracker's Chitin Galoshes
			FirstCraft(80914, 443703);	-- Tracker's Chitin Hauberk
			FirstCraft(80920, 443709);	-- Tracker's Toughened Girdle
			FirstCraft(80916, 443705);	-- Tracker's Toughened Handguards
			FirstCraft(80917, 443706);	-- Tracker's Toughened Headgear
			FirstCraft(80918, 443707);	-- Tracker's Toughened Links
			FirstCraft(80919, 443708);	-- Tracker's Toughened Shoulderguards
			-- Nerubian Patterns
			FirstCraft(80925, 444070);	-- Adrenal Surge Clasp
			FirstCraft(80924, 444068);	-- Vambraces of Deepening Darkness
			FirstCraft(80923, 441461);	-- Writhing Armor Banding
			-- Profession Equiepment
			FirstCraft(80928, 444105);	-- Apothecary's Cap
			FirstCraft(80939, 444117);	-- Arathi Leatherworker's Smock
			FirstCraft(80933, 444111);	-- Charged Scrapmaster's Gauntlets
			FirstCraft(80943, 444121);	-- Deep Tracker's Cap
			FirstCraft(80941, 444119);	-- Deep Tracker's Pack
			FirstCraft(80931, 444108);	-- Earthen Forgemaster's Apron
			FirstCraft(80937, 444115);	-- Earthen Jeweler's Cover
			FirstCraft(80934, 444112);	-- Gardener's Basket
			FirstCraft(80936, 444114);	-- Gemcutter's Apron
			FirstCraft(80942, 444120);	-- Hideseeker's Hat
			FirstCraft(80940, 444118);	-- Hideseeker's Pack
			FirstCraft(80938, 444116);	-- Hideshaper's Cover
			FirstCraft(80929, 444106);	-- Nerubian Alchemist's Hat
			FirstCraft(80932, 444110);	-- Scrapsmith's Gloves
			FirstCraft(80930, 444107);	-- Steelsmith's Apron
			--FirstCraft(xx, 444113);	-- Stonebound Herbalist's Pack
			-- Reagents
			FirstCraft(80945, 444075);	-- Carapace-Backed Hide
			FirstCraft(80944, 444086);	-- Chitin Armor Banding
			FirstCraft(80946, 444076);	-- Crystalfused Hide
			FirstCraft(80950, 444085);	-- Deepfury Hide
			FirstCraft(80949, 444079);	-- Leyfused Hide
			FirstCraft(80948, 444078);	-- Sporecoated Hide
			FirstCraft(80951, 444087);	-- Storm-Touched Weapon Wrap
			FirstCraft(80947, 444077);	-- Writhing Hide
		},{
		})),
		filter(MISC, {
			i(219495),	-- Blessed Weapon Grip+
			i(219496),	-- Blessed Weapon Grip++
			i(219497),	-- Blessed Weapon Grip+++
			i(219906),	-- Defender's Armor Kit+
			i(219907),	-- Defender's Armor Kit++
			i(219908),	-- Defender's Armor Kit+++
			i(219912),	-- Dual Layered Armor Kit+
			i(219913),	-- Dual Layered Armor Kit++
			i(219914),	-- Dual Layered Armor Kit+++
			i(219909),	-- Stormbound Armor Kit+
			i(219910),	-- Stormbound Armor Kit++
			i(219911),	-- Stormbound Armor Kit+++
			i(219905),	-- Thunderous Drums
			i(219504),	-- Writhing Armor Banding+
			i(219505),	-- Writhing Armor Banding++
			i(219506),	-- Writhing Armor Banding+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(219866),	-- Apothecary's Cap
			i(219871),	-- Arathi Leatherworker's Smock
			i(219870),	-- Charged Scrapmaster's Gauntlets
			i(219869),	-- Deep Tracker's Cap
			i(219868),	-- Deep Tracker's Pack
			i(219874),	-- Earthen Forgemaster's Apron
			i(219876),	-- Earthen Jeweler's Cover
			i(219861),	-- Gardener's Basket
			i(219875),	-- Gemcutter's Apron
			i(219863),	-- Hideseeker's Hat
			i(219862),	-- Hideseeker's Pack
			i(219865),	-- Hideshaper's Cover
			i(219872),	-- Nerubian Alchemist's Hat
			i(219864),	-- Scrapsmith's Gloves
			i(219873),	-- Steelsmith's Apron
			i(219867),	-- Stonebound Herbalist's Pack
		}),
		filter(REAGENTS, {
			i(219880),	-- Carapace-Backed Hide+
			i(219881),	-- Carapace-Backed Hide++
			i(219882),	-- Carapace-Backed Hide+++
			i(219898),	-- Chitin Armor Banding+
			i(219899),	-- Chitin Armor Banding++
			i(219900),	-- Chitin Armor Banding+++
			i(219883),	-- Crystalfused Hide+
			i(219884),	-- Crystalfused Hide++
			i(219885),	-- Crystalfused Hide+++
			i(219895),	-- Deepfury Hide+
			i(219896),	-- Deepfury Hide++
			i(219897),	-- Deepfury Hide+++
			i(219892),	-- Leyfused Hide+
			i(219893),	-- Leyfused Hide++
			i(219894),	-- Leyfused Hide+++
			i(219889),	-- Sporecoated Hide+
			i(219890),	-- Sporecoated Hide++
			i(219891),	-- Sporecoated Hide+++
			i(219901),	-- Storm-Touched Weapon Wrap+
			i(219902),	-- Storm-Touched Weapon Wrap++
			i(219903),	-- Storm-Touched Weapon Wrap+++
			i(219886),	-- Writhing Hide+
			i(219887),	-- Writhing Hide++
			i(219888),	-- Writhing Hide+++
		}),
		n(WEAPONS, {
		}),
	}),
	prof(MINING, {
		spell(2575, {	-- Mining
			i(210933),	-- Aqirite+
			i(210934),	-- Aqirite++
			i(210935),	-- Aqirite+++
			i(210930),	-- Bismuth+
			i(210931),	-- Bismuth++
			i(210932),	-- Bismuth+++
			i(217707),	-- Imperfect Null Stone
			i(210936),	-- Ironclaw Ore+
			i(210937),	-- Ironclaw Ore++
			i(210938),	-- Ironclaw Ore+++
			i(224838),	-- Null Sliver
			i(210939),	-- Null Stone
			i(224583),	-- Slab of Slate
			i(224584),	-- Erosion Polished Slate
		}),
		n(DISCOVERY, {
			r(439707),	-- Aqirite
			r(439713),	-- Aqirite Seam
			r(439712),	-- Bismuth Seam
			r(439725),	-- Camouflaged Aqirite
			r(439724),	-- Camouflaged Bismuth
			r(439726),	-- Camouflaged Ironclaw
			r(439716),	-- Crystallized Aqirite
			r(439715),	-- Crystallized Bismuth
			r(439717),	-- Crystallized Ironclaw
			r(439722),	-- EZ-Mine Aqirite
			r(439721),	-- EZ-Mine Bismuth
			r(439723),	-- EZ-Mine Ironclaw
			r(439708),	-- Ironclaw
			r(439714),	-- Ironclaw Seam
			r(439742),	-- Overload Crystallized
			r(423394),	-- Overload Empowered Deposit
			r(439744),	-- Overload Explosives
			r(439747),	-- Overload Webbed Deposits
			r(439743),	-- Overload Weeping
			r(439710),	-- Rich Aqirite
			r(439709),	-- Rich Bismuth
			r(439711),	-- Rich Ironclaw
			r(439728),	-- Webbed Aqirite
			r(439727),	-- Webbed Bismuth
			r(439729),	-- Webbed Ironclaw
			r(439719),	-- Weeping Aqirite
			r(439718),	-- Weeping Bismuth
			r(439720),	-- Weeping Ironclaw
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = MINING,
		},{
			-- Aqirite
			--FirstCraft(XXXXX, 439707);	-- Aqirite
			--FirstCraft(XXXXX, 439713);	-- Aqirite Seam
			--FirstCraft(XXXXX, 439725);	-- Camouflaged Aqirite
			--FirstCraft(XXXXX, 439716);	-- Crystallized Aqirite
			--FirstCraft(XXXXX, 439722);	-- EZ-Mine Aqirite
			--FirstCraft(XXXXX, 439710);	-- Rich Aqirite
			--FirstCraft(XXXXX, 439728);	-- Webbed Aqirite
			--FirstCraft(XXXXX, 439719);	-- Weeping Aqirite
			-- Bismuth
			FirstCraft(80350, 439705);	-- Bismuth
			--FirstCraft(XXXXX, 439712);	-- Bismuth Seam
			--FirstCraft(XXXXX, 439724);	-- Camouflaged Bismuth
			FirstCraft(80359, 439715);	-- Crystallized Bismuth
			--FirstCraft(XXXXX, 439721);	-- EZ-Mine Bismuth
			FirstCraft(80353, 439709);	-- Rich Bismuth
			FirstCraft(80371, 439727);	-- Webbed Bismuth
			--FirstCraft(XXXXX, 439718);	-- Weeping Bismuth
			-- Ironclaw
			FirstCraft(80352, 439708);	-- Ironclaw
			--FirstCraft(XXXXX, 439714);	-- Ironclaw Seam
			--FirstCraft(XXXXX, 439726);	-- Camouflaged Ironclaw
			FirstCraft(80361, 439717);	-- Crystallized Ironclaw
			--FirstCraft(XXXXX, 439723);	-- EZ-Mine Ironclaw
			FirstCraft(80355, 439711);	-- Rich Ironclaw
			FirstCraft(80373, 439729);	-- Webbed Ironclaw
			--FirstCraft(XXXXX, 439720);	-- Weeping Ironclaw
			-- Overload
			--FirstCraft(XXXXX, 439742);	-- Overload Crystallized
			--FirstCraft(XXXXX, 423394);	-- Overload Empowered Deposit
			--FirstCraft(XXXXX, 439744);	-- Overload Explosives
			--FirstCraft(XXXXX, 439747);	-- Overload Webbed Deposits
			--FirstCraft(XXXXX, 439743);	-- Overload Weeping
		})),
	}),
	prof(SKINNING, {
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = SKINNING,
			["collectible"] = false,
		},{
			FirstSkin(83410, 216031),	-- Skinning Abyssal Devourer
			FirstSkin(83411, 214151),	-- Skinning Ahg'zagall
			FirstSkin(81450, 219264),	-- Skinning Bloodmaw
			FirstSkin(83414, 216042),	-- Skinning Cha'tak
			FirstSkin(81451, 219265),	-- Skinning Emperor Pitfang
			FirstSkin(83402, 221668),	-- Skinning Horror of the Shallows
			FirstSkin(83413, 221327),	-- Skinning Kaheti Silk Hauler
			FirstSkin(83400, 221534),	-- Skinning Lytfang the Lost
			FirstSkin(81458, 218452),	-- Skinning Murkshade
			FirstSkin(81452, 219267),	-- Skinning Plaguehart
			FirstSkin(83403, 221786),	-- Skinning Pride of Beledar
			FirstSkin(83401, 221648),	-- Skinning The Perchfather
			FirstSkin(81453, 219271),	-- Skinning Twice-Stinger the Wretched
			FirstSkin(81449, 219263),	-- Skinning Warphorn
			FirstSkin(83412, 216039),	-- Skinning Xishorr
		})),
		spell(423342, {	-- Khaz Algar Skinning
			i(224781),	-- Abyssal Fur
			i(218338),	-- Bottled Storm
			i(218339),	-- Burning Cinderbee Setae
			i(212667),	-- Gloom Chitin+
			i(212668),	-- Gloom Chitin++
			i(212669),	-- Gloom Chitin+++
			i(218337),	-- Honed Bone Shards
			i(218336),	-- Kaheti Swarm Chitin
			i(217840),	-- Refine Algari Chitin
			i(217818),	-- Refine Algari Hides
			i(217822),	-- Refine Algari Leather
			i(212664),	-- Stormcharged Leather+
			i(212665),	-- Stormcharged Leather++
			i(212666),	-- Stormcharged Leather+++
			i(212674),	-- Sunless Carapace+
			i(212675),	-- Sunless Carapace++
			i(212676),	-- Sunless Carapace+++
			i(212670),	-- Thunderous Hide+
			i(212672),	-- Thunderous Hide++
			i(212673),	-- Thunderous Hide+++
			i(224780),	-- Toughened Thunderous Hide
		}),
		i(219005),	-- Arathor Hammerfish Lure
		i(219019),	-- Beast Lure Scent
		i(218738),	-- Bizarrely-Shaped Stomach
		i(219009),	-- Crystalline Creature Lure
		i(219004),	-- Dornish Pike Lure
		i(219007),	-- Elusive Creature Lure
		i(219003),	-- Quiet River Bass Lure
		i(219006),	-- Roaring Anglerseeker Lure
		i(219002),	-- Specular Rainbowfish Lure
		i(219011),	-- Sporefused Creature Lure
		i(219008),	-- Supreme Beast Lure
		i(219010),	-- Writhing Creature Lure
	}),
	prof(TAILORING, {
		n(ARMOR, {
			i(217120),	-- Algari Competitor's Cloth Bands
			i(217125),	-- Algari Competitor's Cloth Cloak
			i(217122),	-- Algari Competitor's Cloth Gloves
			i(217121),	-- Algari Competitor's Cloth Hood
			i(217117),	-- Algari Competitor's Cloth Leggings
			i(217124),	-- Algari Competitor's Cloth Sash
			i(217118),	-- Algari Competitor's Cloth Shoulderpads
			i(217119),	-- Algari Competitor's Cloth Treads
			i(217123),	-- Algari Competitor's Cloth Tunic
			i(222817),	-- Consecrated Cloak
			i(222816),	-- Consecrated Cord
			i(222815),	-- Consecrated Cuffs
			i(222822),	-- Consecrated Gloves
			i(222818),	-- Consecrated Hood
			i(222820),	-- Consecrated Leggings
			i(222821),	-- Consecrated Mantle
			i(222819),	-- Consecrated Robe
			i(222814),	-- Consecrated Slippers
			i(222812),	-- Cool Sunset Bracers
			i(222809),	-- Gloves of the Woven Dusk
			i(222807),	-- Grips of the Woven Dawn
			i(222833),	-- Pioneer's Cloth Cuffs
			i(222837),	-- Pioneer's Cloth Robe
			i(222832),	-- Pioneer's Cloth Slippers
			i(222835),	-- Pioneer's Perfected Cloak
			i(222834),	-- Pioneer's Perfected Cord
			i(222840),	-- Pioneer's Perfected Gloves
			i(222836),	-- Pioneer's Perfected Hood
			i(222838),	-- Pioneer's Perfected Leggings
			i(222839),	-- Pioneer's Perfected Mantle
			i(222810),	-- Slippers of the Woven Dusk
			i(222808),	-- Treads of the Woven Dawn
			i(222811),	-- Warm Sunrise Bracers
		}),
		filter(BAGS, {
			i(222859),	-- Concoctor's Clutch
			i(222864),	-- Darkmoon Duffle
			i(222854),	-- Dawnweave Reagent Bag
			i(222856),	-- Duskweave Bag
			i(222866),	-- Excavator's Haversack
			i(222865),	-- Gardener's Seed Satchel
			i(225936),	-- Hideseeker's Tote
			i(222861),	-- Hideshaper's Workbag
			i(222860),	-- Ignition Satchel
			i(222867),	-- Jeweler's Purse
			i(222862),	-- Magically "Infinite" Messenger
			i(222863),	-- Prodigy's Toolbox
			i(224852),	-- The Severed Satchel
			i(222853),	-- Weavercloth Bag
			i(222855),	-- Weavercloth Reagent Bag
		}),
		filter(MISC, {
			i(225729),	-- Algari Weaverline
			i(222879),	-- Bright Polishing Cloth+
			i(222880),	-- Bright Polishing Cloth++
			i(222881),	-- Bright Polishing Cloth+++
			i(222868),	-- Dawnthread Lining+
			i(222869),	-- Dawnthread Lining++
			i(222870),	-- Dawnthread Lining+++
			i(222894),	-- Daybreak Spellthread+
			i(222895),	-- Daybreak Spellthread++
			i(222896),	-- Daybreak Spellthread+++
			i(222871),	-- Duskthread Lining+
			i(222872),	-- Duskthread Lining++
			i(222873),	-- Duskthread Lining+++
			i(222876),	-- Gritty Polishing Cloth+
			i(222877),	-- Gritty Polishing Cloth++
			i(222878),	-- Gritty Polishing Cloth+++
			i(222885),	-- Preserving Embroidery Thread+
			i(222886),	-- Preserving Embroidery Thread++
			i(222887),	-- Preserving Embroidery Thread+++
			i(222891),	-- Sunset Spellthread+
			i(222892),	-- Sunset Spellthread++
			i(222893),	-- Sunset Spellthread+++
			i(224440),	-- Weavercloth Bandage+
			i(224441),	-- Weavercloth Bandage++
			i(224442),	-- Weavercloth Bandage+++
			i(222882),	-- Weavercloth Embroidery Thread+
			i(222883),	-- Weavercloth Embroidery Thread++
			i(222884),	-- Weavercloth Embroidery Thread+++
			i(222888),	-- Weavercloth Spellthread+
			i(222889),	-- Weavercloth Spellthread++
			i(222890),	-- Weavercloth Spellthread+++
		}),
		filter(PROFESSION_EQUIPMENT, {
			i(222850),	-- Artisan's Alchemist's Robe
			i(222851),	-- Artisan's Chef's Hat
			i(222849),	-- Artisan's Enchanter's Hat
			i(222848),	-- Artisan's Fishing Cap
			i(222847),	-- Artisan's Gardening Hat
			i(222852),	-- Artisan Tailor's Coat
			i(222845),	-- Weavercloth Alchemist's Robe
			i(222846),	-- Weavercloth Chef's Hat
			i(222843),	-- Weavercloth Enchanter's Hat
			i(222842),	-- Weavercloth Fishing Cap
			i(222841),	-- Weavercloth Gardening Hat
			i(222844),	-- Weavercloth Tailor's Coat
		}),
		filter(REAGENTS, {
			i(222801),	-- Dawnweave Bolt+
			i(222802),	-- Dawnweave Bolt++
			i(222803),	-- Dawnweave Bolt+++
			i(222798),	-- Duskweave Bolt+
			i(222799),	-- Duskweave Bolt++
			i(222800),	-- Duskweave Bolt+++
			i(224832),	-- Exquisite Weavercloth Bolt+
			i(224833),	-- Exquisite Weavercloth Bolt++
			i(224834),	-- Exquisite Weavercloth Bolt+++
			i(222792),	-- Spool of Dawnthread+
			i(222793),	-- Spool of Dawnthread++
			i(222794),	-- Spool of Dawnthread+++
			i(222789),	-- Spool of Duskthread+
			i(222790),	-- Spool of Duskthread++
			i(222791),	-- Spool of Duskthread+++
			i(222795),	-- Spool of Weaverthread+
			i(222796),	-- Spool of Weaverthread++
			i(222797),	-- Spool of Weaverthread+++
			i(222804),	-- Weavercloth Bolt+
			i(222805),	-- Weavercloth Bolt++
			i(222806),	-- Weavercloth Bolt+++
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = TAILORING,
		},{
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.TWW, {
		prof(ALCHEMY, {
			q(82473),	-- Transmutation 15/30
			q(82474),	-- Transmutation 30/30

			-- Unsure what are these
			--q(82388),	-- Together with First Craft of Algari Mana Potion
			--q(81898),	-- Together with First Craft of Flask of Alchemical Chaos

			--q(78604),	-- Randomly when crafting Wild Experimentation
			--q(81090),	-- Randomly when crafting Wild Experimentation
						-- Randomly when crafting Thaumaturgy
		}),
		prof(BLACKSMITHING, {
			q(83111), -- 10/40 Everburning Forge
			q(83112), -- 20/40 Everburning Forge
			q(83131), -- 30/40 Everburning Forge
		}),
	}),
});