---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

_.Zones =
{
	m(KULTIRAS, {
		m(DRUSTVAR, {
			n(EMISSARY_QUESTS, {
				q(50600, {	-- Order of Embers
					["provider"] = { "n", 135815 },	-- Quartermaster Alcorn
					["lvl"] = 120,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
				}),
				q(54456, {	-- Supplies from the Order of Embers
					["provider"] = { "n", 135815 },	-- Quartermaster Alcorn
					["lvl"] = 120,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["g"] = {
						i(166297, {	-- Order of Embers Supplies
							i(166808),	-- Bewitching Tea Set
							i(166718),	-- Cobalt Raven Hatchling
						}),
					},
				}),
			}),
		}),
	}),
};
