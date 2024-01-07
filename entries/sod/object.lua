local _, addonTable = ...
local objects_sod = {

["Abandoned Snapjaw Nest"] = "покинуте гніздо тріскощелепа",
["Alliance Warbanner"] = "бойовий стяг Альянсу",
["Altar of Teleportation"] = "вівтар телепортації",
["Altar of Thorns"] = "вівтар шипів",
["Apothecary Notes"] = "записи аптекаря",
["Apothecary Society Primer"] = "підручник товариства аптекарів",
["Arcane Secrets"] = "таємниці магії",
["Artifact Storage"] = "сховище артефактів",
["Artisan's Chest"] = "скриня ремісника",
["Beast Track"] = "слід звіра",
["Blasting Supplies"] = "вибухові матеріали",
["Bough of Altek"] = "гілка Алтека",
["Bristleback Loot Cache"] = "скриня зі здобиччю Щетиношкурих",
["Buried Treasure"] = "закопаний скарб",
["Carved Stone"] = "різьблений камінь",
["Charred Note"] = "обгоріла записка",
["Clliffspring Chest"] = "скриня Скельноджерельного водоспаду",
["Coyote Feeding Ground"] = "лігво койота",
["Dalaran Digest"] = "даларанський довідник",
["Dark Ritual Stone"] = "камінь темних ритуалів",
["Dead Drop"] = "сховок",
["Defias Stashbox"] = "сховок повстанців",
["Demonic Reliquary"] = "демонічний релікварій",
["Discarded Helm"] = "полишений шолом",
["Dusty Chest"] = "вкрита пилом скриня",
["Dusty Coffer"] = "вкрита пилом скриня",
["Empty Snapjaw Nest"] = "порожнє гніздо тріскощелепа",
["Empty Trophy Display"] = "порожня вітрина для трофеїв",
["Equipment Stash"] = "сховок зі спорядженням",
["Escape Rope"] = "рятувальна мотузка",
["Etched Carving"] = "різьблення",
["Frostmane Loot Cache"] = "скриня зі здобиччю Морозогривих",
["Gift of the Wisp"] = "дар світлика",
["Glade Flower"] = "квітка галявини",
["Gnarled Harpoon"] = "кострубатий гарпун",
["Gnarlpine Cache"] = "схованка Кривої Сосни",
["Gnarlpine Stash"] = "сховок Кривої Сосни",
["Gnomish Tome"] = "гномський фоліант",
["Goblin Tome"] = "гоблінський фоліант",
["Gunpowder Keg"] = "бочка з порохом",
["Hidden Cache"] = "схованка",
["Horde Warbanner"] = "бойовий стяг Орди",
["Hungry Idol"] = "голодний ідол",
["Idol"] = "ідол",
["Idol of the Deep"] = "ідол глибин",
["Kobold Stashbox"] = "сховок кобольдів",
["Libram of Blessings"] = "манускрипт благословень",
["Library Book"] = "бібліотечна книга",
["Lighthouse Stash"] = "схованка маяка",
["Lost Stash"] = "загублений сховок",
["Lunar Chest"] = "місячна скриня",
["Manual"] = "посібник",
["Mural of Ta'zo"] = "мурал Та'зо",
["Mysterious Formulae"] = "таємничі формули",
["Offering Box"] = "коробка для пожертв",
["Ornamented Chest"] = "оздоблена скриня",
["Owl Statue"] = "статуя сови",
["Pile of Stolen Books"] = "купа вкрадених книг",
["Prairie Flower"] = "квітка прерії",
["Prophecy of a King's Demise"] = "пророцтво про смерть короля",
["Remnant"] = "залишок",
["Rockjaw Footlocker"] = "скринька Кам'янощелепих",
["Rubble"] = "завали",
["Rusty Lockbox"] = "іржава скринька",
["Rusty Safe"] = "іржавий сейф",
["Scrolls"] = "сувої",
["Shard of Pure Light"] = "уламок чистого світла",
["Shattered Orb"] = "розбита сфера",
["Shatterspear Idol"] = "ідол Розтрощеного Списа",
["Shipwreck Cache"] = "скриня з кораблетрощі",
["Shrine"] = "святилище",
["Slumbering Bones"] = "дрімучі кістки",
["Southsea Loot Stash"] = "сховок зі здобиччю піратів Південних морів",
["Spear of Mannoroth"] = "спис Маннорота",
["Spell Notes"] = "сувій закляття",
["Spellbook"] = "книга заклять",
["Stable Hand's Trunk"] = "скриня доглядача стайні",
["Stonemason's Toolbox"] = "інструменти каменяра",
["Storage Locker"] = "скринька",
["Strange Orb"] = "дивна сфера",
["Sunken Reliquary"] = "затонулий релікварій",
["Swordsman's Reward"] = "винагорода мечника",
["Tangled Blight Pile"] = "гнилі зарослі",
["Twin Owl Statue"] = "статуя сови-близнюка",
["Voodoo Pile"] = "купа вуду",
["Wall-Mounted Shield"] = "настінний щит",
["Waterlogged Captain's Chest"] = "промокла скриня капітана",
["Waterlogged Stashbox"] = "промоклий сховок",
["Windfury Cone"] = "шишка Вітролютих",
}

for k, v in pairs(objects_sod) do addonTable.object[k] = v end