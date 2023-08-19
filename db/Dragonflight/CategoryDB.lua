﻿---------------------------------------------------------
--   C A T E G O R Y   D A T A B A S E   M O D U L E   --
---------------------------------------------------------
local appName, _ = ...;
local simplifiedLocale = string.sub(GetLocale(),1,2);

_.CategoryIcons = {
	[3] = "Interface/Icons/Inv_misc_ticket_tarot_portal_01",
	[58] = "Interface/Icons/INV_Misc_Food_62",
	[63] = "Interface/Icons/INV_Misc_Food_12",
	[70] = "Interface/Icons/INV_Helmet_66",
	[104] = "Interface/Icons/inv_inscription_inkpurple01",
	[106] = "Interface/Icons/Inv_misc_ticket_tarot_portal_01",
	[107] = "Interface/Icons/inv_scroll_03",
	[108] = "Interface/Icons/inv_misc_note_05",
	[167] = "Interface/Icons/inv_crown_13",
	[168] = "Interface/Icons/inv_jewelcrafting_bronzesetting",
	[178] = "Interface/Icons/inv_misc_statue_09",
	[183] = "Interface/Icons/INV_Gizmo_BronzeFramework_01",
	[184] = "Interface/Icons/INV_Misc_Bomb_03",
	[185] = "Interface/Icons/INV_Helmet_47",
	[188] = "Interface/Icons/INV_Crate_06",
	[189] = "Interface/Icons/INV_Weapon_Rifle_03",
	[190] = "Interface/Icons/INV_Misc_Spyglass_03",
	[191] = "Interface/Icons/INV_Misc_Wrench_01",
	[194] = "Interface/Icons/Spell_Fire_Flare",
	[227] = "Interface/Icons/INV_Weapon_Halberd_10",
	[230] = "Interface/Icons/inv_fabric_silk_03",
	[233] = "Interface/Icons/inv_misc_bag_19",
	[234] = "Interface/Icons/inv_helmet_31",
	[235] = "Interface/Icons/inv_shoulder_02",
	[236] = "Interface/Icons/inv_chest_cloth_18",
	[237] = "Interface/Icons/inv_bracer_07",
	[238] = "Interface/Icons/inv_belt_14",
	[239] = "Interface/Icons/inv_gauntlets_06",
	[240] = "Interface/Icons/inv_pants_06",
	[241] = "Interface/Icons/inv_boots_05",
	[242] = "Interface/Icons/inv_misc_cape_16",
	[243] = "Interface/Icons/inv_shirt_red_01",
	[251] = "Interface/Icons/INV_Helmet_08",
	[252] = "Interface/Icons/INV_Shoulder_01",
	[253] = "Interface/Icons/INV_Chest_Chain_13",
	[254] = "Interface/Icons/INV_Bracer_08",
	[255] = "Interface/Icons/INV_Gauntlets_05",
	[256] = "Interface/Icons/INV_Belt_24",
	[257] = "Interface/Icons/INV_Pants_12",
	[258] = "Interface/Icons/INV_Boots_Chain_01",
	[366] = "Interface/Icons/inv_misc_note_05",
	[374] = "Interface/Icons/inv_misc_note_05",
	[414] = "Interface/Icons/inv_misc_note_05",
	[431] = "Interface/Icons/INV_Misc_Cape_18",
	[432] = "Interface/Icons/inv_misc_note_05",
	[453] = "Interface/Icons/70_inscription_vantus_rune_suramar",
	[454] = "Interface/Icons/inv_scroll_03",
	[465] = "Interface/Icons/inv_jewelry_ring_55",
	[491] = "Interface/Icons/inv_enchanting_wod_essence3",
	[507] = "Interface/Icons/inv_jewelry_necklace_07",
	[535] = "Interface/Icons/inv_crown_01",
	[536] = "Interface/Icons/inv_misc_note_05",
	[633] = "Interface/Icons/INV_Potion_51",
	[634] = "Interface/Icons/INV_Potion_56",
	[635] = "Interface/Icons/INV_Potion_41",
	[636] = "Interface/Icons/Spell_Fire_Volcano",
	[637] = "Interface/Icons/INV_Trinket_Naxxramas05",
	[638] = "Interface/Icons/INV_Potion_51",
	[639] = "Interface/Icons/INV_Potion_56",
	[640] = "Interface/Icons/INV_Potion_41",
	[641] = "Interface/Icons/Spell_Fire_Volcano",
	[642] = "Interface/Icons/INV_Misc_Orb_01",
	[643] = "Interface/Icons/INV_Drink_12",
	[644] = "Interface/Icons/INV_Cask_02",
	[733] = "Interface/Icons/inv_jewelcrafting_blackpearlpanther",
	[751] = "Interface/Icons/INV_Misc_Bomb_03",
	[752] = "Interface/Icons/inv_gizmo_newgoggles",
	[754] = "Interface/Icons/Spell_Fire_EnchantWeapon",
	[755] = "Interface/Icons/INV_Misc_Spyglass_03",
	[756] = "Interface/Icons/inv_jewelcrafting_blackpearlpanther",
	[757] = "Interface/Icons/Spell_Fire_Flare",
	[771] = "Interface/Icons/inv_scroll_03",
	[773] = "Interface/Icons/inv_misc_ticket_tarot_twistingnether_01",
	[776] = "Interface/Icons/70_inscription_vantus_rune_suramar",
	[779] = "Interface/Icons/inv_inscription_inkpurple01",
	[781] = "Interface/Icons/inv_misc_note_05",
	[784] = "Interface/Icons/INV_Trinket_Naxxramas05",
	[785] = "Interface/Icons/inv_inscription_inkpurple01",
	[787] = "Interface/Icons/inv_misc_note_05",
	[790] = "Interface/Icons/Spell_Fire_EnchantWeapon",
	[819] = "Interface/Icons/inv_jewelry_ring_55",
	[820] = "Interface/Icons/Spell_Fire_EnchantWeapon",
	[821] = "Interface/Icons/inv_jewelcrafting_empyreansapphire_01",
	[822] = "Interface/Icons/inv_jewelcrafting_seasprayemerald_01",
	[823] = "Interface/Icons/inv_jewelcrafting_pyrestone_01",
	[824] = "Interface/Icons/inv_jewelcrafting_shadowsongamethyst_01",
	[825] = "Interface/Icons/inv_jewelcrafting_crimsonspinel_01",
	[827] = "Interface/Icons/inv_misc_gem_diamond_05",
	[828] = "Interface/Icons/inv_jewelry_necklace_07",
	[829] = "Interface/Icons/inv_jewelry_ring_55",
	[830] = "Interface/Icons/inv_jewelcrafting_blackpearlpanther",
	[831] = "Interface/Icons/inv_misc_note_05",
	[832] = "Interface/Icons/inv_jewelcrafting_jadeowl",
	[833] = "Interface/Icons/inv_jewelcrafting_lionseye_01",
	[834] = "Interface/Icons/inv_jewelcrafting_empyreansapphire_01",
	[835] = "Interface/Icons/inv_jewelcrafting_seasprayemerald_01",
	[836] = "Interface/Icons/inv_jewelcrafting_pyrestone_01",
	[837] = "Interface/Icons/inv_jewelcrafting_shadowsongamethyst_01",
	[838] = "Interface/Icons/inv_jewelcrafting_crimsonspinel_01",
	[839] = "Interface/Icons/inv_jewelcrafting_lionseye_01",
	[840] = "Interface/Icons/inv_misc_gem_diamond_05",
	[841] = "Interface/Icons/inv_jewelry_necklace_07",
	[842] = "Interface/Icons/inv_jewelry_ring_55",
	[843] = "Interface/Icons/inv_crown_01",
	[844] = "Interface/Icons/inv_weapon_hand_08",
	[845] = "Interface/Icons/inv_misc_gem_ruby_01",
	[846] = "Interface/Icons/inv_jewelcrafting_empyreansapphire_01",
	[847] = "Interface/Icons/inv_jewelcrafting_seasprayemerald_01",
	[848] = "Interface/Icons/inv_jewelcrafting_pyrestone_01",
	[849] = "Interface/Icons/inv_jewelcrafting_shadowsongamethyst_01",
	[850] = "Interface/Icons/inv_jewelcrafting_crimsonspinel_01",
	[851] = "Interface/Icons/inv_jewelcrafting_lionseye_01",
	[852] = "Interface/Icons/inv_misc_gem_diamond_05",
	[853] = "Interface/Icons/inv_jewelry_necklace_07",
	[854] = "Interface/Icons/inv_jewelry_ring_55",
	[855] = "Interface/Icons/inv_misc_gem_pearl_12",
	[856] = "Interface/Icons/inv_misc_gem_diamond_02",
	[857] = "Interface/Icons/inv_jewelcrafting_empyreansapphire_01",
	[858] = "Interface/Icons/inv_jewelcrafting_seasprayemerald_01",
	[859] = "Interface/Icons/inv_jewelcrafting_pyrestone_01",
	[860] = "Interface/Icons/inv_jewelcrafting_shadowsongamethyst_01",
	[861] = "Interface/Icons/inv_jewelcrafting_crimsonspinel_01",
	[862] = "Interface/Icons/inv_jewelcrafting_lionseye_01",
	[863] = "Interface/Icons/inv_misc_gem_diamond_05",
	[864] = "Interface/Icons/inv_jewelry_necklace_07",
	[865] = "Interface/Icons/inv_jewelry_ring_55",
	[866] = "Interface/Icons/INV_Trinket_Naxxramas05",
	[867] = "Interface/Icons/inv_misc_gem_diamond_03",
	[868] = "Interface/Icons/spell_arcane_arcanepotency",
	[869] = "Interface/Icons/inv_crown_01",
	[943] = "Interface/Icons/inv_misc_bag_13",
	[961] = "Interface/Icons/inv_misc_bag_13",
	[962] = "Interface/Icons/inv_helmet_31",
	[963] = "Interface/Icons/inv_shoulder_02",
	[964] = "Interface/Icons/inv_chest_cloth_18",
	[965] = "Interface/Icons/INV_Bracer_17",
	[966] = "Interface/Icons/INV_Belt_27",
	[967] = "Interface/Icons/inv_gauntlets_06",
	[968] = "Interface/Icons/inv_pants_06",
	[969] = "Interface/Icons/INV_Boots_01",
	[970] = "Interface/Icons/INV_Misc_Cape_18",
	[974] = "Interface/Icons/inv_misc_bag_13",
	[975] = "Interface/Icons/inv_helmet_31",
	[976] = "Interface/Icons/inv_shoulder_02",
	[977] = "Interface/Icons/inv_chest_cloth_18",
	[978] = "Interface/Icons/INV_Bracer_17",
	[979] = "Interface/Icons/INV_Belt_27",
	[980] = "Interface/Icons/inv_gauntlets_06",
	[981] = "Interface/Icons/inv_pants_06",
	[982] = "Interface/Icons/INV_Boots_01",
	[983] = "Interface/Icons/INV_Misc_Cape_18",
	[987] = "Interface/Icons/inv_misc_bag_13",
	[988] = "Interface/Icons/inv_helmet_31",
	[989] = "Interface/Icons/inv_shoulder_02",
	[990] = "Interface/Icons/inv_chest_cloth_18",
	[991] = "Interface/Icons/INV_Bracer_17",
	[992] = "Interface/Icons/INV_Belt_27",
	[993] = "Interface/Icons/inv_gauntlets_06",
	[994] = "Interface/Icons/inv_pants_06",
	[995] = "Interface/Icons/INV_Boots_01",
	[996] = "Interface/Icons/INV_Misc_Cape_18",
	[998] = "Interface/Icons/inv_jewelcrafting_blackpearlpanther",
	[1002] = "Interface/Icons/inv_misc_bag_13",
	[1003] = "Interface/Icons/inv_helmet_31",
	[1004] = "Interface/Icons/inv_shoulder_02",
	[1005] = "Interface/Icons/inv_chest_cloth_18",
	[1006] = "Interface/Icons/INV_Bracer_17",
	[1007] = "Interface/Icons/INV_Belt_27",
	[1008] = "Interface/Icons/inv_gauntlets_06",
	[1009] = "Interface/Icons/inv_pants_06",
	[1010] = "Interface/Icons/INV_Boots_01",
	[1011] = "Interface/Icons/INV_Misc_Cape_18",
	[1026] = "Interface/Icons/inv_inscription_inkpurple01",
	[1086] = "Interface/Icons/inv_misc_bandage_20",
	[1089] = "Interface/Icons/inv_misc_bandage_20",
	[1090] = "Interface/Icons/inv_misc_bandage_20",
	[1091] = "Interface/Icons/inv_misc_bandage_20",
	[1092] = "Interface/Icons/inv_misc_bandage_20",
	[1093] = "Interface/Icons/inv_misc_bandage_20",
	[1298] = "Interface/Icons/INV_Potion_41",
	[1300] = "Interface/Icons/Spell_Fire_Volcano",
	[1301] = "Interface/Icons/INV_Trinket_Naxxramas05",
	[1403] = "Interface/Icons/inv_misc_bandage_20",
	[1408] = "Interface/Icons/inv_inscription_inkpurple01",
	[1409] = "Interface/Icons/inv_scroll_03",
	[1422] = "Interface/Icons/inv_jewelry_necklace_07",
	[1424] = "Interface/Icons/inv_jewelry_ring_55",
	[1538] = "Interface/Icons/inv_misc_bag_13",
}

_.CategoryNames = {
	[3] = "Tarot Decks",
	[58] = "Holiday Cooking",
	[63] = "Everyday Cooking",
	[70] = "Unusual Delights",
	[103] = "Off-hand",
	[104] = "Ink",
	[105] = "Clear Mind",
	[106] = "Card",
	[107] = "Scrolls",
	[108] = "Research",
	[114] = "Other",
	[119] = "Shoulder Inscription",
	[167] = "Crowns",
	[168] = "Materials",
	[178] = "Statues",
	[183] = "Parts",
	[184] = "Explosives",
	[185] = "Goggles",
	[188] = "Devices",
	[189] = "Guns & Bows",
	[190] = "Scopes",
	[191] = "Tools",
	[194] = "Fireworks",
	[227] = "Weapons",
	[230] = "Materials",
	[233] = "Bags",
	[234] = "Hats & Hoods",
	[235] = "Shoulders",
	[236] = "Robes & Tunics",
	[237] = "Bracers",
	[238] = "Belts",
	[239] = "Gloves",
	[240] = "Pants",
	[241] = "Boots",
	[242] = "Cloaks",
	[243] = "Shirts",
	[251] = "Helms",
	[252] = "Shoulders",
	[253] = "Chest",
	[254] = "Bracers",
	[255] = "Gloves",
	[256] = "Belts",
	[257] = "Pants",
	[258] = "Boots",
	[361] = "Item Enhancers",
	[363] = "Armor",
	[364] = "Dyes and Thread",
	[366] = "Reagents and Research",
	[367] = "Other",
	[374] = "Reagents and Research",
	[375] = "Jewelry Enhancers",
	[376] = "Jewelry",
	[377] = "Gems",
	[378] = "Other",
	[400] = "Battle Standards",
	[403] = "Merchant Orders",
	[411] = "Staves & Wands",
	[412] = "Card",
	[413] = "Off-hand",
	[414] = "Reagents and Research",
	[420] = "Tools",
	[431] = "Cloaks",
	[432] = "Training",
	[440] = "Mass Milling",
	[451] = "Cards",
	[453] = "Vantus Runes",
	[454] = "Books & Scrolls",
	[465] = "Rings",
	[466] = "Gems",
	[467] = "Other",
	[472] = "Devices",
	[474] = "Robotics",
	[491] = "Relics",
	[492] = "Mass Milling",
	[495] = "Cloth Armor",
	[496] = "Reagents",
	[497] = "Other",
	[505] = "Mass Prospecting",
	[507] = "Necklaces",
	[535] = "Crowns",
	[536] = "Training",
	[632] = "Cauldrons",
	[633] = "Potions",
	[634] = "Elixirs",
	[635] = "Flasks",
	[636] = "Transmutation",
	[637] = "Trinkets",
	[638] = "Potions",
	[639] = "Elixirs",
	[640] = "Flasks",
	[641] = "Transmutation",
	[642] = "Trinkets",
	[643] = "Oils",
	[644] = "Materials",
	[657] = "Armor Enchantments",
	[733] = "Mounts",
	[750] = "Reagents",
	[751] = "Explosives",
	[752] = "Goggles",
	[753] = "Devices",
	[754] = "Weapons",
	[755] = "Scopes",
	[756] = "Mounts",
	[757] = "Fireworks",
	[771] = "Books & Scrolls",
	[772] = "Contracts",
	[773] = "Trinkets",
	[774] = "Off-Hands",
	[775] = "Mass Milling",
	[776] = "Vantus Runes",
	[778] = "Staves & Off-Hands",
	[779] = "Inks",
	[780] = "Cards",
	[781] = "Scrolls & Research",
	[782] = "Quest",
	[783] = "Toys & Pets",
	[784] = "Trinkets",
	[785] = "Inks",
	[786] = "Glyphs",
	[787] = "Scrolls & Research",
	[788] = "Cards",
	[789] = "Shoulder Inscription",
	[790] = "Weapons & Off-Hands",
	[791] = "Quest",
	[792] = "Toys",
	[798] = "Shoulder Inscription",
	[817] = "Gems",
	[818] = "Mass Prospecting",
	[819] = "Rings",
	[820] = "Weapons",
	[821] = "Blue Gems",
	[822] = "Green Gems",
	[823] = "Orange Gems",
	[824] = "Purple Gems",
	[825] = "Red Gems",
	[827] = "Meta Gems",
	[828] = "Necklaces",
	[829] = "Rings",
	[830] = "Mounts",
	[831] = "Research",
	[832] = "Toys & Pets",
	[833] = "Yellow Gems",
	[834] = "Blue Gems",
	[835] = "Green Gems",
	[836] = "Orange Gems",
	[837] = "Purple Gems",
	[838] = "Red Gems",
	[839] = "Yellow Gems",
	[840] = "Meta Gems",
	[841] = "Necklaces",
	[842] = "Rings",
	[843] = "Crowns",
	[844] = "Fist Weapons",
	[845] = "Toys & Prisms",
	[846] = "Blue Gems",
	[847] = "Green Gems",
	[848] = "Orange Gems",
	[849] = "Purple Gems",
	[850] = "Red Gems",
	[851] = "Yellow Gems",
	[852] = "Meta Gems",
	[853] = "Necklaces",
	[854] = "Rings",
	[855] = "Prismatic Gems",
	[856] = "Pets and Projects",
	[857] = "Blue Gems",
	[858] = "Green Gems",
	[859] = "Orange Gems",
	[860] = "Purple Gems",
	[861] = "Red Gems",
	[862] = "Yellow Gems",
	[863] = "Meta Gems",
	[864] = "Necklaces",
	[865] = "Rings",
	[866] = "Trinkets",
	[867] = "Prisms & Statues",
	[868] = "Reagents",
	[869] = "Crowns",
	[943] = "Bags",
	[944] = "Armor",
	[945] = "Battle Flags",
	[946] = "Other",
	[958] = "Materials",
	[959] = "Embroidery",
	[960] = "Spellthreads",
	[961] = "Bags",
	[962] = "Hats & Hoods",
	[963] = "Shoulders",
	[964] = "Robes & Tunics",
	[965] = "Bracers",
	[966] = "Belts",
	[967] = "Gloves",
	[968] = "Pants",
	[969] = "Boots",
	[970] = "Cloaks",
	[972] = "Materials",
	[973] = "Spellthreads",
	[974] = "Bags",
	[975] = "Hats & Hoods",
	[976] = "Shoulders",
	[977] = "Robes & Tunics",
	[978] = "Bracers",
	[979] = "Belts",
	[980] = "Gloves",
	[981] = "Pants",
	[982] = "Boots",
	[983] = "Cloaks",
	[984] = "Nets",
	[985] = "Materials",
	[986] = "Spellthread",
	[987] = "Bags",
	[988] = "Hats & Hoods",
	[989] = "Shoulders",
	[990] = "Robes & Tunics",
	[991] = "Bracers",
	[992] = "Belts",
	[993] = "Gloves",
	[994] = "Pants",
	[995] = "Boots",
	[996] = "Cloaks",
	[997] = "Shirts",
	[998] = "Mounts",
	[999] = "Nets",
	[1000] = "Materials",
	[1001] = "Spellthreads",
	[1002] = "Bags",
	[1003] = "Hats & Hoods",
	[1004] = "Shoulders",
	[1005] = "Robes & Tunics",
	[1006] = "Bracers",
	[1007] = "Belts",
	[1008] = "Gloves",
	[1009] = "Pants",
	[1010] = "Boots",
	[1011] = "Cloaks",
	[1012] = "Nets",
	[1026] = "Inks",
	[1086] = "Bandages",
	[1087] = "Cures of Draenor",
	[1088] = "Cures of the Broken Isles",
	[1089] = "Bandages",
	[1090] = "Bandages",
	[1091] = "Bandages",
	[1092] = "Bandages",
	[1093] = "Bandages",
	[1116] = "Embroidery",
	[1126] = "Glyphs",
	[1230] = "Follower Equipment",
	[1233] = "Follower Equipment",
	[1235] = "Follower Equipment",
	[1242] = "Conversions",
	[1243] = "Conversions",
	[1245] = "Conversions",
	[1262] = "Tool of the Trade",
	[1266] = "Tool of the Trade",
	[1276] = "Blood Contracts",
	[1278] = "Tool of the Trade",
	[1289] = "Mounts Equipment",
	[1296] = "Combat Potions",
	[1297] = "Oils and Extracts",
	[1298] = "Flasks",
	[1299] = "Optional Reagents",
	[1300] = "Transmutation",
	[1301] = "Trinkets",
	[1302] = "Utility Potions",
	[1303] = "Anti-Venoms",
	[1307] = "Focus",
	[1309] = "Focus",
	[1396] = "Armor",
	[1401] = "Optional Reagents",
	[1403] = "Bandages",
	[1407] = "Off-Hands",
	[1408] = "Ink",
	[1409] = "Books & Scrolls",
	[1411] = "Cards",
	[1412] = "Mass Milling",
	[1415] = "Staves",
	[1419] = "Gems",
	[1420] = "Mass Prospecting",
	[1421] = "Optional Reagents",
	[1422] = "Necklaces",
	[1424] = "Rings",
	[1474] = "Optional Reagents",
	[1484] = "Specialized Jewelry",
	[1504] = "Optional Reagents",
	[1505] = "Optional Reagents",
	[1506] = "Optional Reagents",
	[1507] = "Optional Reagents",
	[1508] = "Optional Reagents",
	[1509] = "Optional Reagents",
	[1510] = "Optional Reagents",
	[1511] = "Optional Reagents",
	[1513] = "Specialized Armor",
	[1520] = "Hats",
	[1530] = "Quest Recipes",
	[1532] = "Quest Recipes",
	[1538] = "Bags",
}

if simplifiedLocale == "ko" then
local a = _.CategoryNames;
for key,value in pairs({
	[58] = "축제 요리",
	[63] = "일반 요리",
	[70] = "특별한 별미",
	[114] = "다른",
	[119] = "어깨 마법부여",
	[167] = "머리",
	[168] = "재료",
	[183] = "부품",
	[184] = "폭발물",
	[185] = "고글",
	[188] = "장치",
	[189] = "총과 활",
	[190] = "조준경",
	[191] = "장비",
	[194] = "폭죽",
	[227] = "무기",
	[230] = "재료",
	[233] = "가방",
	[234] = "머리",
	[235] = "어깨",
	[236] = "가슴",
	[237] = "손목",
	[238] = "허리",
	[239] = "손",
	[240] = "다리",
	[241] = "발",
	[242] = "등",
	[243] = "속옷",
	[251] = "머리",
	[252] = "어깨",
	[253] = "가슴",
	[254] = "손목",
	[255] = "손",
	[256] = "허리",
	[257] = "다리",
	[258] = "발",
	[366] = "재료 & 연구",
	[367] = "다른",
	[374] = "재료 & 연구",
	[378] = "다른",
	[411] = "지팡이 & 마법봉",
	[414] = "재료 & 연구",
	[420] = "장비",
	[431] = "등",
	[465] = "손가락",
	[467] = "다른",
	[472] = "장치",
	[496] = "재료",
	[497] = "다른",
	[507] = "목",
	[535] = "머리",
	[633] = "물약",
	[634] = "비약",
	[635] = "영약",
	[636] = "변환식",
	[637] = "장비",
	[638] = "물약",
	[639] = "비약",
	[640] = "영약",
	[641] = "변환식",
	[642] = "장비",
	[643] = "오일",
	[644] = "재료",
	[750] = "재료",
	[751] = "폭발물",
	[752] = "고글",
	[753] = "장치",
	[754] = "무기",
	[755] = "조준경",
	[757] = "폭죽",
	[773] = "장비",
	[784] = "장비",
	[789] = "어깨 마법부여",
	[790] = "무기",
	[798] = "어깨 마법부여",
	[819] = "손가락",
	[820] = "무기",
	[828] = "목",
	[829] = "손가락",
	[841] = "목",
	[842] = "손가락",
	[843] = "머리",
	[853] = "목",
	[854] = "손가락",
	[864] = "목",
	[865] = "손가락",
	[866] = "장비",
	[868] = "재료",
	[869] = "머리",
	[943] = "가방",
	[946] = "다른",
	[958] = "재료",
	[961] = "가방",
	[962] = "머리",
	[963] = "어깨",
	[964] = "가슴",
	[965] = "손목",
	[966] = "허리",
	[967] = "손",
	[968] = "다리",
	[969] = "발",
	[970] = "등",
	[972] = "재료",
	[974] = "가방",
	[975] = "머리",
	[976] = "어깨",
	[977] = "가슴",
	[978] = "손목",
	[979] = "허리",
	[980] = "손",
	[981] = "다리",
	[982] = "발",
	[983] = "등",
	[985] = "재료",
	[987] = "가방",
	[988] = "머리",
	[989] = "어깨",
	[990] = "가슴",
	[991] = "손목",
	[992] = "허리",
	[993] = "손",
	[994] = "다리",
	[995] = "발",
	[996] = "등",
	[997] = "속옷",
	[1000] = "재료",
	[1002] = "가방",
	[1003] = "머리",
	[1004] = "어깨",
	[1005] = "가슴",
	[1006] = "손목",
	[1007] = "허리",
	[1008] = "손",
	[1009] = "다리",
	[1010] = "발",
	[1011] = "등",
	[1296] = "전투 물약",
	[1298] = "영약",
	[1299] = "선택적 시약",
	[1300] = "변환식",
	[1301] = "장비",
	[1302] = "유틸리티 물약",
	[1401] = "선택적 시약",
	[1421] = "선택적 시약",
	[1422] = "목",
	[1424] = "손가락",
	[1474] = "선택적 시약",
	[1504] = "선택적 시약",
	[1505] = "선택적 시약",
	[1506] = "선택적 시약",
	[1507] = "선택적 시약",
	[1508] = "선택적 시약",
	[1509] = "선택적 시약",
	[1510] = "선택적 시약",
	[1511] = "선택적 시약",
	[1520] = "머리",
	[1530] = "퀘스트 레시피",
	[1532] = "퀘스트 레시피",
	[1538] = "가방",
}) do a[key] = value; end
end