---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(MOONGLADE, {
			filter(BATTLE_PETS, {
				p(478, {	-- Forest Moth
					["crs"] = { 62177 },	-- Forest Moth
				}),
				p(378, {	-- Rabbit
					["crs"] = { 61080 },	-- Rabbit
				}),
				p(379, {	-- Squirrel
					["crs"] = { 61080 },	-- Squirrel
				}),
				p(503, {	-- Silky Moth
					["crs"] = { 62373 },	-- Silky Moth
				}),
				q(31908, {	-- Elena Flutterfly
					["provider"] = { "n", 66412 },	-- Elena Flutterfly
					["coord"] = { 46.0, 60.4, MOONGLADE },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
				}),
			}),
		}),
	}),
};
