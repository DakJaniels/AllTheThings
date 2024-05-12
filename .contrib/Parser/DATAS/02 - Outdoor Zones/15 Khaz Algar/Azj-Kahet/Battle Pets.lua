---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
--[[
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_1_LAUNCH } }, {
	m(AZJ_KAHET, {
		petbattle(filter(BATTLE_PETS, {
			pet(xx, {	-- Arachnoid Hatchling (PET!)
				["coords"] = {
					{ x, y, HALLOWFALL },	-- copy-paste, saw in previous build in Hallowfall too
					{ 42.7, 50.7, AZJ_KAHET },

				},
			}),
			pet(xx, {	-- Aubergine Scootlefish (PET!)
				["coords"] = {
					{ 59.7, 70.2, AZJ_KAHET },
					{ 37.4, 54.2, AZJ_KAHET },
					{ 43.5, 64.2, AZJ_KAHET },
				},
			}),
			pet(xx, {	-- Azure Flickerfly (PET!)
				["coords"] = {
					{ x, y, HALLOWFALL },	-- copy-paste, saw in previous build in Hallowfall too
					{ 22.2, 24.2, 2213 },
				},
			}),
			pet(xx, {	-- Ebon Ploughworm (PET!)
				["coords"] = {
					{ 44.2, 64.8, 2216 },
				},
			}),
			pet(xx, {	-- Shadowy Oozeling (PET!)
				["description"] = "Interact with Black Blood Extractor objects in area until you reach at least 30x Unseeming Shift debuff to see this pet",
				["coord"] = { 63.6, 88.1, 2256 },
			}),
			pet(xx, {	-- Verdant Scootlefish (PET!)
				["coords"] = {
					{ 56.4, 48.3, AZJ_KAHET },
					{ 38.5, 56.1, AZJ_KAHET },
					{ 44.3, 65.0, AZJ_KAHET },
				},
			}),
			pet(xx, {	-- Voidling Ooze (PET!)
				["description"] = "Interact with Black Blood Extractor objects in area until you reach at least 30x Unseeming Shift debuff to see this pet",
				["coord"] = { 56.4, 48.3, 2256 },
			}),
			--
			["sym"] = {{"select","speciesID",

			}},
			["g"] = {

			},
		})),
	}),
})));
--]]