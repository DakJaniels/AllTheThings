-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root("Instances", tier(LEGION_TIER, {
	n(-23, {
		i(141591, {	-- Technique: Codex of the Tranquil Mind [Rank 2] (RECIPE!)
			["crs"] = {
				102387,	-- Sael'orn
				102446,	-- Fel Lord Betrug
				98970,	-- Dantalionax
				98965,	-- Kur'talos Ravencrest
				99192,	-- Shade of Xavius
				104218,	-- Advisor Melandrus
				96028,	-- Wrath of Azshara
				95676,	-- Odyn
				96759,	-- Helya
				91007,	-- Dargrul
				98208,	-- Advisor Vandros
				95888,	-- Cordana Felsong
				-- #if AFTER 7.1.0
				114790,	-- Viz'aduum the Watcher
				-- #if AFTER 7.2.0
				120793,	-- Mephistroth
				-- #if AFTER 7.3.0
				122314,	-- L'ura
				-- #endif
				-- #endif
				-- #endif
			},
		}),
		i(141592, {	-- Technique: Codex of the Tranquil Mind (Rank 3) (RECIPE!)
			["description"] = "During Legion, this item dropped from dungeon bosses as well as emissary chests, but since then it has only been seen in emissary chests. Only recently on the 01.10.2021 it was confirmed to drop from Nightbane (Mythic) and on the 18.04.2022 it was confirmed to drop from Violet Hold Heroic.",
		-- [commenting out on dungeon bosses as it has only been seen on emissary chests post-Legion]
			["crs"] = {
				102387,	-- Sael'orn confirmed 2022-04-18
				102446,	-- Fel Lord Betrug confirmed 2022-04-18
				114895,	-- Nightbane confirmed 01.10.2021
				--98970,	-- Dantalionax
				--98965,	-- Kur'talos Ravencrest
				--99192,	-- Shade of Xavius
				--104218,	-- Advisor Melandrus
				--96028,	-- Wrath of Azshara
				--95676,	-- Odyn
				--96759,	-- Helya
				--91007,	-- Dargrul
				--98208,	-- Advisor Vandros
				--95888,	-- Cordana Felsong
				-- #if AFTER 7.1.0
				--114790,	-- Viz'aduum the Watcher
				-- #if AFTER 7.2.0
				--120793,	-- Mephistroth
				-- #if AFTER 7.3.0
				--122314,	-- L'ura
				-- #endif
				-- #endif
				-- #endif
			},
		}),
	}),
}));