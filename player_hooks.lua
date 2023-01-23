local function RegisterPlayerEvent( 
    event, -- Player event Id, refer to PlayerEvents above. Expects an integer from 0 to 4,294,967,295.
    func,  -- The function that will be called when the event occurs.
    shots  -- The number of times the function will be called, 0 means "always call this function". Expects an integer from 0 to 4,294,967,295.
) 
--> returns a function `cancel`, which cancels the binding when called.
end

RegisterPlayerEvent(1,
    function (event, player)
        player:SendBroadcastMessage("event: " .. tostring(event))
        player:SendBroadcastMessage("player: " .. tostring(player))
    end,
    0
)

-- PLAYER_EVENT_ON_CHARACTER_DELETE
RegisterPlayerEvent(2,
    function(event, guid)
        -- code
    end,
    0
)

-- PLAYER_EVENT_ON_LOGIN
RegisterPlayerEvent(3,
    function(event, player)
        -- code
    end,
    0 
)

-- PLAYER_EVENT_ON_LOGOUT
RegisterPlayerEvent(4,
    function(event, player)
        -- code
    end,
    0 
)

-- PLAYER_EVENT_ON_SPELL_CAST
RegisterPlayerEvent(5,
    function(event, player)
        -- code
    end,
    0 
)

-- PLAYER_EVENT_ON_KILL_PLAYER
RegisterPlayerEvent(6,
    function(event, killer, killed)
        -- code
    end,
    0 
)

-- PLAYER_EVENT_ON_KILL_CREATURE
RegisterPlayerEvent(7,
    function(event, killer, killed)
        -- code
    end,
    0
)

-- PLAYER_EVENT_ON_KILLED_BY_CREATURE
RegisterPlayerEvent(8,
    function(event, killer, killed)
        -- code
    end,
    0
)

-- PLAYER_EVENT_ON_DUEL_REQUEST
RegisterPlayerEvent(9,
    function(event, target, challenger)
        -- code
    end,
    0
)

-- PLAYER_EVENT_ON_DUEL_START
RegisterPlayerEvent(10,
    function(event, player1, player2)
        -- code
    end,
    0
)

-- PLAYER_EVENT_ON_DUEL_END
RegisterPlayerEvent(11,
    function(event, winner, loser, type)
        -- code
    end,
    0
)

-- PLAYER_EVENT_ON_GIVE_XP
RegisterPlayerEvent(12,
    function(event, player, amount, victim)
        -- code
        -- Can return new XP amount
    end,
    0
)

-- PLAYER_EVENT_ON_LEVEL_CHANGE
RegisterPlayerEvent(13,
    function(event, player, oldLevel)
        -- code
    end,
    0
)

-- PLAYER_EVENT_ON_MONEY_CHANGE
RegisterPlayerEvent(14,
    function(event, player, amount)
        -- code
        -- Can return new money amount
    end,
    0
)

-- PLAYER_EVENT_ON_REPUTATION_CHANGE
RegisterPlayerEvent(15,
    function(event, player, factionId, standing, incremental)
        -- code
        -- Can return new standing -> if standing == -1, it will prevent default action (rep gain)
    end,
   0
)

-- PLAYER_EVENT_ON_TALENTS_CHANGE 
RegisterPlayerEvent(16,
    function(event, player, points)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_TALENTS_RESET
RegisterPlayerEvent(17,
    function(event, player, noCost)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_CHAT
RegisterPlayerEvent(18,
    function(event, player, msg, Type, lang)
        -- code
        -- newMessage
    end,
   0
)

-- PLAYER_EVENT_ON_WHISPER
RegisterPlayerEvent(19,
    function(event, player, msg, Type, lang, receiver)
        -- code
        -- can return false, newMessage
    end,
   0
)

-- PLAYER_EVENT_ON_GROUP_CHAT
RegisterPlayerEvent(20,
    function(event, player, msg, Type, lang, group)
        -- code
        -- Can return false, newMessage
    end,
   0
)

-- PLAYER_EVENT_ON_GUILD_CHAT
RegisterPlayerEvent(21,
    function(event, player, msg, Type, lang, guild)
        -- code
        -- Can return false, newMessage
    end,
   0
)

-- PLAYER_EVENT_ON_CHANNEL_CHAT
RegisterPlayerEvent(22,
    function(event, player, msg, Type, lang, channel)
        -- code
        -- Can return false, newMessage
    end,
   0
)

-- PLAYER_EVENT_ON_EMOTE
RegisterPlayerEvent(23,
    function(event, player, emote)
        -- code
        -- not triggered on any known emote
    end,
   0
)

-- PLAYER_EVENT_ON_TEXT_EMOTE
RegisterPlayerEvent(24,
    function(event, player, textEmote, emoteNum, guid)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_SAVE
RegisterPlayerEvent(25, 
    function(event, player)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_BIND_TO_INSTANCE
RegisterPlayerEvent(26,
    function(event, player, difficulty, mapid, permanent)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_UPDATE_ZONE
RegisterPlayerEvent(27,
    function(event, player, newZone, newArea)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_MAP_CHANGE
RegisterPlayerEvent(28,
    function(event, player)
        -- code
    end,
   0
)

-- // Custom
-- PLAYER_EVENT_ON_EQUIP
RegisterPlayerEvent(29,
    function(event, player, item, bag, slot)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_FIRST_LOGIN
RegisterPlayerEvent(30,
    function(event, player)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_CAN_USE_ITEM
RegisterPlayerEvent(31,
    function(event, player, itemEntry)
        -- code
        -- Can return InventoryResult enum value
    end,
   0
)

-- PLAYER_EVENT_ON_LOOT_ITEM
RegisterPlayerEvent(32,
    function(event, player, item, count)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_ENTER_COMBAT
RegisterPlayerEvent(33,
    function(event, player, enemy)
        -- code
    end,
   0
)


-- PLAYER_EVENT_ON_LEAVE_COMBAT
RegisterPlayerEvent(34,
    function(event, player)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_REPOP
RegisterPlayerEvent(35,
    function(event, player)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_RESURRECT
RegisterPlayerEvent(32,
    function(event, player)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_LOOT_MONEY
RegisterPlayerEvent(37,
    function(event, player, amount)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_QUEST_ABANDON
RegisterPlayerEvent(38,
    function(event, player, questId)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_LEARN_TALENTS
RegisterPlayerEvent(39,
    function(event, player, talentId, talentRank, spellid)
        -- code
    end,
   0
)

-- // UNUSED                               =     40,       // (event, player)
-- // UNUSED                               =     41,       // (event, player)


-- PLAYER_EVENT_ON_COMMAND
RegisterPlayerEvent(42,
    function(event, player, command, chatHandler)
        -- code
        -- player is nil if command used from console. Can return false
    end,
   0
)

-- PLAYER_EVENT_ON_PET_ADDED_TO_WORLD
RegisterPlayerEvent(43,
    function(event, player, pet)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_LEARN_SPELL
RegisterPlayerEvent(44,
    function(event, player, spellId)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_ACHIEVEMENT_COMPLETE
RegisterPlayerEvent(45,
    function(event, player, achievement)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_FFAPVP_CHANGE
RegisterPlayerEvent(46,
    function(event, player, hasFfaPvp)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_UPDATE_AREA
RegisterPlayerEvent(47,
    function(event, player, oldArea, newArea)
        -- code
    end,
   0
)

-- PLAYER_EVENT_ON_CAN_INIT_TRADE
RegisterPlayerEvent(48,
    function(event, player, target)
        -- code
        -- Can return false to prevent the trade
    end,
   0
)

-- PLAYER_EVENT_ON_CAN_SEND_MAIL
RegisterPlayerEvent(49,
    function(event, player, receiverGuid, mailbox, subject, body, money, cod, item)
        -- code
        -- Can return false to prevent sending the mail
    end,
   0
)

-- PLAYER_EVENT_ON_CAN_JOIN_LFG
RegisterPlayerEvent(50,
    function(event, player, roles, dungeons, comment)
        -- code
        -- Can return false to prevent queueing
    end,
   0
)
