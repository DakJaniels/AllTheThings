---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root("Zones", m(SHADOWLANDS, bubbleDown({ ["timeline"] = { "added 9.1.5" } }, {
	m(MALDRAXXUS, {
		n(SPECIAL, {
			n(182105, {	-- Mysterious Trashpile
				["description"] = "Use /bow on the Mysterious Trashpile. (Cave Entrance is 44.59, 65.48).",
				["coord"] = { 44.84, 67.89, MALDRAXXUS },
				["g"] = {
					i(187878),	-- Saurid Soul
				},
			}),
		}),
	}),
})));