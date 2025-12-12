SMODS.Rarity{
	key = "teto",
	badge_colour = HEX("e15d73"),
	pools = { ["Joker"] = { rate = 0.05 } },
	default_weight = 0.05,
}

SMODS.ObjectType{
    key = "Teto",
    cards = {},
    default = 'j_nic_kasanejokto',
	inject = function(self)
		SMODS.ObjectType.inject(self)
	end,
}

SMODS.Rarity{
	key = "plants",
	badge_colour = HEX("33cc00"),
	pools = { ["Joker"] = { rate = 0.25 } },
	default_weight = 0.25,
}

SMODS.ObjectType{
    key = "Plants",
    cards = {},
    default = 'j_nic_peashooter',
	inject = function(self)
		SMODS.ObjectType.inject(self)
	end,
}