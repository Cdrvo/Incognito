SMODS.Consumable {
    key = 'tetotarot',
    set = 'Tarot',
    cost = 4,
    atlas = 'nictarots',
    pos = {x = 0, y = 0 },

    loc_vars = function(self, info_queue, card)
        return { vars = { colours = { HEX('e15d73') }} }
    end, 

    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.6,
            func = function() 
                G.jokers.cards[1]:juice_up()
                G.jokers.cards[1]:add_sticker("nic_tetosticker", true)
                play_sound('gold_seal', 1.2, 0.4)
                return true 
            end 
        }))
    end,

    can_use = function (self, card) 
        return #G.jokers.cards > 0 and G.jokers.cards[1].config.center.blueprint_compat and G.jokers.cards[1].config.center.rarity ~= "nic_teto"
    end,
}