-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
_.Promotions =
{
	n(-533, bubbleDown({ ["u"] = BLIZZARD_BALANCE }, { 	-- Hearthstone Promotion
		["description"] = "All you need to do is win 3 games in Hearthstone to qualify for these rewards.\n\nThe game is free, go get it!\n\nNOTE: You can thank IceQ1337 for this!",
		["timeline"] = { "added 5.3.0.16825" },
		["groups"] = {
			ach(8345),	-- Hearthstoned
			i(98618), -- Hearthsteed
		},
	})),
	n(-536, bubbleDown({ ["u"] = BLIZZARD_BALANCE }, { 	-- Hearthstone Mercenaries Promotion
		["description"] = "Complete Hearthstone's Mercenaries Mode tutorial and send your party on a mission in order to receive this new mount.",
		["timeline"] = { "added 9.1.0" },
		["groups"] = {
			mount(356488),	-- Sarge's Tale
		},
	})),
};