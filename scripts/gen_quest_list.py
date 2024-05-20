import os
current_path = os.path.dirname(os.path.abspath(__file__))

quest_dict = {}

classic_quest_list_files = [
    '/entries/classic/quest_alliance.lua',
    '/entries/classic/quest_both.lua',
    '/entries/classic/quest_horde.lua',
    '/entries/tbc/quest_alliance.lua',
    '/entries/tbc/quest_both.lua',
    '/entries/tbc/quest_horde.lua',
    '/entries/wrath/quest_alliance.lua',
    '/entries/wrath/quest_both.lua',
    '/entries/wrath/quest_horde.lua'
]

def get_ids_from_classic_quest_list(filename):
    answer = ""
    id_list_file = open(current_path.replace('scripts','') + filename, 'r')
    for line in id_list_file:
        if '] = {' in line:
            if 'local quest_' not in line:
                answer = line.split('"')
                quest_id = answer[0].replace('[','').replace('] = { en=','')
                quest_name = line.replace('['+quest_id+'] = { en="','').replace('",\n','')
                if quest_name in quest_dict:
                    old_value = quest_dict[quest_name]
                    new_value = old_value + [quest_id]
                    quest_dict[quest_name] = new_value
                    pass
                else:
                    quest_dict[quest_name] = [quest_id]
    id_list_file.close()

for i in classic_quest_list_files:
    get_ids_from_classic_quest_list(i)

quest_list = []
for k, v in quest_dict.items():
    quest_list.append(k)
quest_list.sort()

print("-- QuestList : Title - questIDs")
print("QuestList = {")
for quest in quest_list:
    title = quest
    quest_ids = ','.join(quest_dict[quest])
    print('["'+title+'"]="'+quest_ids+'",')
print("}")
