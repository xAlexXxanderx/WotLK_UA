-- -------------------------------- --
-- AUTOGENERATED FILE. DO NOT EDIT. --
-- -------------------------------- --

local _, addonTable = ...

local chat = { -- [npc_name_en] = { [1] = npc_name_uk (optional), [code1] = text1, [code2] = text2, ... }
["!common"] = {
-- %s attempts to run away in fear!
["satraiftst"] = [===[%s налякано тікає геть!]===],
},
["Myra Tyrngaarde"] = { "Міра Тірнґаард",
-- Come get yer fresh bread!
["cgyfbetyer"] = [===[Підходьте по свіжий хліб!]===],
-- Fresh bread, baked this very morning.
["fbbtvmread"] = [===[Свіжий хліб, спечений цього ранку.]===],
-- Fresh bread for sale!
["fbfshbread"] = [===[Продається свіжий хліб!]===],
},
}

if addonTable.chat then
    for k, v in pairs(chat) do
        if type(addonTable.chat[k]) == "table" and type(v) == "table" then
            for vk, vv in pairs(v) do
                addonTable.chat[k][vk] = vv
            end
        else
            addonTable.chat[k] = v
        end
    end
else
    addonTable.chat = chat
end
