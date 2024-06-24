---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_1_LAUNCH } }, {
	m(AZJ_KAHET, {
		n(ACHIEVEMENTS, {
			ach(19559, {	-- Azj-Kahet
				crit(64786, {	-- Friends in the Dark
					["sourceQuest"] = 78392,	-- The Tangled Web
				}),
				crit(64785, {	-- Friends in the Dark
					["sourceQuest"] = 78393,	-- A Seeming Respite
				}),
				crit(64787, {	-- Unraveling the Trapped
					["sourceQuest"] = 78256,	-- The General's Consensus
				}),
				crit(64788, {	-- Plans Within Plans
					["sourceQuest"] = 78248,	-- Beginning Anew From Rock Bottom
				}),
			}),
			ach(40705, {	-- Azj-Kahet Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40691,	-- Skyriding Glyphs: Arathi's End
					40696,	-- Skyriding Glyphs: Deepwalker Pass
					40694,	-- Skyriding Glyphs: Eye of Ansurek
					40695,	-- Skyriding Glyphs: Old Sacrificial Pit
					40698,	-- Skyriding Glyphs: Rak-Ush
					40693,	-- Skyriding Glyphs: Ruptured Lake
					40692,	-- Skyriding Glyphs: Siegehold
					40699,	-- Skyriding Glyphs: Silken Ward
					40697,	-- Skyriding Glyphs: The Maddening Deep
					40700,	-- Skyriding Glyphs: Trickling Abyss
					40701,	-- Skyriding Glyphs: Untamed Valley
				}},
			}),
			-- TODO: Remove _noautomation when possible
			ach(40629, bubbleDown({ ["_noautomation"] = true, }, {	-- Bookworm
				crit(68983, {	-- Entomological Essay on Grubs, Volume 1
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454335 },
				}),
				crit(68989, {	-- Entomological Essay on Grubs, Volume 2
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454336 },
				}),
				crit(68990, {	-- Entomological Essay on Grubs, Volume 3
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454338 },
				}),
			})),
			ach(40727),		-- Skittershaw Spin
			ach(40691, {	-- Skyriding Glyphs: Arathi's End
				-- TODO
				--["coord"] = { X, Y, AZJ_KAHET },
			}),
			ach(40696, {	-- Skyriding Glyphs: Deepwalker Pass
				-- TODO
				--["coord"] = { X, Y, AZJ_KAHET },
			}),
			ach(40694, {	-- Skyriding Glyphs: Eye of Ansurek
				-- TODO
				--["coord"] = { X, Y, AZJ_KAHET },
			}),
			ach(40695, {	-- Skyriding Glyphs: Old Sacrificial Pit
				-- TODO
				--["coord"] = { X, Y, AZJ_KAHET },
			}),
			ach(40698, {	-- Skyriding Glyphs: Rak-Ush
				-- TODO
				--["coord"] = { X, Y, AZJ_KAHET },
			}),
			ach(40693, {	-- Skyriding Glyphs: Ruptured Lake
				-- TODO
				--["coord"] = { X, Y, AZJ_KAHET },
			}),
			ach(40692, {	-- Skyriding Glyphs: Siegehold
				-- TODO
				--["coord"] = { X, Y, AZJ_KAHET },
			}),
			ach(40699, {	-- Skyriding Glyphs: Silken Ward
				-- TODO
				--["coord"] = { X, Y, AZJ_KAHET },
			}),
			ach(40697, {	-- Skyriding Glyphs: The Maddening Deep
				-- TODO
				--["coord"] = { X, Y, AZJ_KAHET },
			}),
			ach(40700, {	-- Skyriding Glyphs: Trickling Abyss
				["coord"] = { 70.4, 19.4, AZJ_KAHET },
			}),
			ach(40701, {	-- Skyriding Glyphs: Untamed Valley
				-- TODO
				--["coord"] = { X, Y, AZJ_KAHET },
			}),
			-- TODO: Remove _noautomation when possible
			ach(40542, bubbleDown({ ["_noautomation"] = true, }, {	-- Smelling History
				crit(68818, {	-- Strands of Memory
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454328 },
				}),
				crit(68971, {	-- Ethos of War, Part 1
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454343 },
				}),
				crit(68980, {	-- Ethos of War, Part 2
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454344 },
				}),
				crit(68981, {	-- Ethos of War, Part 3
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454348 },
				}),
				crit(68982, {	-- Ethos of War, Part 4
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454350 },
				}),
				crit(68984, {	-- Queen Xekatha
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454313 },
				}),
				crit(68985, {	-- Queen Anub'izek
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454320 },
				}),
				crit(68986, {	-- Queen Zaltra
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454316 },
				}),
				crit(68987, {	-- Treatise on Forms: Sages
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454332 },
				}),
				crit(68988, {	-- Treatise on Forms: Skitterlings
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 454330 },
				}),
				crit(69446, {	-- Treatise on Forms: Skitterlings
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 456927 },
				}),
				crit(69447, {	-- Treatise on Forms: Skitterlings
					-- TODO: Add this provider somewhere
					--["provider"] = { "o", 456928 },
				}),
			})),
			ach(40636, {	-- Sojourner of Azj-Kahet
				crit(69159, {	-- Rak-Ush Swarmery
					["sourceQuest"] = 79123,	-- Pernament Hire
				}),
				crit(69160, {	-- Pillar-nest Vosh
					["sourceQuest"] = 79357,	-- Removing the Cap
				}),
				crit(69161, {	-- Gutter Work
					["sourceQuest"] = 79715,	-- Short-Term Slaughter Solutions
				}),
				-- TODO: Why is this both a top level criteria -and- part of a tree? Someone at Blizzard done an oopsie? Intentional? Who knows?
				-- crit(69161, {	-- Melody of Madness
				-- 	["sourceQuest"] = 79715,	-- Short-Term Slaughter Solutions
				-- }),
				crit(69162, {	-- Melody of Madness
					["sourceQuest"] = 80572,	-- Discordant Measure
				}),
				crit(69163, {	-- Pawns and Puppetry
					-- Remove when the quest below is uncommented
					["_noautomation"] = true,
					--["sourceQuest"] = 80205,	-- Pulling Strings
				}),
				crit(69164, {	-- The Wormlands
					["sourceQuest"] = 78897,	-- Boom or Blight
				}),
				crit(69165, {	-- The Wormlands
					["sourceQuest"] = 78898,	-- Intention vs Instinct
				}),
				crit(69166, {	-- The Wormlands
					["sourceQuest"] = 78902,	-- Delegated Dig
				}),
				crit(69167, {	-- Haggling with Mmarl
					["sourceQuest"] = 79541,	-- Burn It With Fire
				}),
				crit(69168, {	-- The Second Front
					["sourceQuest"] = 79579,	-- That Airspace is Mine(d)!
				}),
				crit(69169, {	-- The Second Front
					["sourceQuest"] = 79580,	-- Offensive Counter
				}),
				crit(69170, {	-- Mr. Sunflower's Therapy
					["sourceQuest"] = 83057,	-- Setting Boundaries
				}),
				crit(69171, {	-- The Wild Camp
					["sourceQuest"] = 83639,	-- Open Communications
				}),
				crit(69172, {	-- Pillar-nest of Horrors
					["sourceQuest"] = 79957,	-- Maggots in Your Eyes
				}),
				crit(69173, {	-- Subterfuge in Silk
					["sourceQuest"] = 81688,	-- That's All
				}),
				crit(69174, {	-- Silken Ward
					["sourceQuest"] = 81963,	-- The Fruits of Our Labor
				}),
				crit(69175, {	-- Grieve & Weave
					["sourceQuest"] = 80502,	-- Don't Cry for Me, Azi-Kahet
				}),
				crit(69176, {	-- All Good Things...
					-- Remove when the quest below is uncommented
					["_noautomation"] = true,
					--["sourceQuest"] = 82284,	-- Remembrance for the Fallen
				}),
			}),
			pvp(ach(40086)),	-- Tour of Duty: Azj-Kahet
		}),
	}),
})));