local _, addonTable = ...

local shaman_spells = {

-- [id] = {
--     [ref] = ID (optional),
--     [1] = title (optional),
--     [2] = description (optional),
--     [3] = aura (optional),
-- }

-- Ancestral Guidance
[409324] = { "Настанови пращурів", "Протягом наступних {1} с {2}% вашої шкоди перетворюється на зцілення {3} найближчих членів групи, а {4}% вашого зцілення перетворюється на шкоду останньої цілі вашого \"Вогняного шоку\".#next {1} sec, {2}% of#up to {3} nearby#and {4}% of", "Шкода перетворюється на зцілення найближчих членів групи, а зцілення - на шкоду останньої цілі \"Вогняного шоку\"." }, -- Ancestral Guidance
[409333] = { ref=409324 }, -- Ancestral Guidance
[409337] = { ref=409324 }, -- Ancestral Guidance
[409944] = { "Настанови пращурів", "Отримати здібність \"Настанови пращурів\":", nil, rune=409324 }, -- Ancestral Guidance

-- Chain Heal
[416244] = { "Ланцюгове зцілення", "Зцілює вибраного союзника на {1}-{2} здоров'я, перестрибуючи на інші цілі поряд. Якщо закляття було націлене на члена групи, подальші стрибки переходитимуть лише на інших її учасників. Кожен наступний стрибок має {3}% ефективності зцілення від попереднього. Зцілює до {4} цілей.#for {1} to {2}#{3}% as effective#{4} total targets.", nil }, -- Chain Heal
[416245] = { ref=416244 }, -- Chain Heal
[416246] = { ref=416244 }, -- Chain Heal

-- Chain Lightning
[408479] = { "Ланцюгова блискавка", "Кидає в ціль блискавку, що завдає від {1} до {2} шкоди від природи та перестрибує на інших ворогів поруч. Кожен стрибок завдає на {3}% менше шкоди. Вражає до {4} цілей.#dealing {1} to {2}#damage by {3}%#{4} total targets.", nil }, -- Chain Lightning
[408481] = { ref=408479 }, -- Chain Lightning
[408482] = { ref=408479 }, -- Chain Lightning
[408484] = { ref=408479 }, -- Chain Lightning

-- Dual Wield Specialization
[408496] = { "Спеціалізація на бою з двох рук", "Коли ви тримаєте зброю в кожній руці ваша ймовірність влучити заклинаннями і атаками ближнього бою збільшується на 5%, а ваша здібність \"Штормовий удар\" тепер завдає шкоду з обох рук.", nil }, -- Dual Wield Specialization
[409940] = { "Спеціалізація на бою з двох рук", "Отримати здібність \"Спеціалізація на бою з двох рук\":", nil, rune=408496 }, -- Dual Wield Specialization

-- Earth Shield
[974] = { "Щит землі", "Захищає ціль земляним щитом, зменшуючи час затримку вимови заклять при отриманні шкоди на {1}%, а також зцілюючи ціль при отриманні ударів в бою на {2}. Цей ефект може спрацьовувати лише раз на кілька секунд. Ефект має {3} зарядів та триває {4} хв. Одночасно щит землі може захищати лише одну ціль, і лише один щит стихій може бути активним на цілі.", "Зменшує затримку вимови заклять при отриманні шкоди на {1}%, а атаки по захищеній цілі зцілюють її на {2}.#by {1}%#target for {2}." }, -- Earth Shield
[408514] = { "Щит землі", "Захищає ціль земляним щитом, зменшуючи час затримку вимови заклять при отриманні шкоди на {1}%, а також зцілюючи ціль при отриманні ударів в бою на {2}. Цей ефект може спрацьовувати лише раз на кілька секунд. Ефект має {3} заряди та триває {4} хв. Одночасно щит землі може захищати лише одну ціль, і лише один щит стихій може бути активним на цілі.", "Зменшує затримку вимови заклять при отриманні шкоди на {1}%, а атаки по захищеній цілі зцілюють її на {2}.#by {1}%#target for {2}." }, -- Earth Shield
[409947] = { "Щит землі", "Отримати здібність \"Щит землі\":", nil, rune=408514 }, -- Earth Shield

-- Earth Shock
[408681] = { "Земний шок", "Миттєво шокує ціль ударною хвилею, завдає від {1} до {2} шкоди від природи. Також перериває вимову закляття та внеможливлює вимову будь-яких інших заклять тієї ж школи магії на {3} с. Спричиняє високий рівень загрози та провокує ціль.#causing {1} to {2}#for {3} sec", "Підбурено." }, -- Earth Shock
[408683] = { ref=408681 }, -- Earth Shock
[408685] = { ref=408681 }, -- Earth Shock
[408687] = { ref=408681 }, -- Earth Shock
[408688] = { ref=408681 }, -- Earth Shock
[408689] = { ref=408681 }, -- Earth Shock
[408690] = { ref=408681 }, -- Earth Shock
[408693] = { ref=408681 }, -- Earth Shock

-- Earthliving
[415292] = { "Земне живоття", "Зцілює {1} здоров'я протягом {2} с.#{1} over {2} sec", "Зцілює {1} здоров'я кожні {2} с.#{1} every {2} sec" }, -- Earthliving

-- Ghost Wolf
[415233] = { "Вовк-привид", "Перетворює шамана на вовка-привида, збільшує швидкість руху на {1}% та зменшує отриману шкоду на {2}%.#speed by {1}%#taken by {2}%", "Швидкість руху збільшено на {1}%.\nОтримує на {2}% менше шкоди.#speed by {1}%#taken by {2}%" }, -- Ghost Wolf

-- Healing Rain
[415236] = { "Цілющий дощ", "Зцілює членам групи в радіусі {1} м навколо цілі {2} здоров'я щосекунди.#area {1} yards#for {2} every", "Зцілює членам групи в межах дії \"Цілющого дощу\" {1} здоров'я щосекунди.#for {1} every" }, -- Healing Rain
[415242] = { "Цілющий дощ", "Зцілює 5 членам групи чи рейду в радіусі {1} м навколо цілі {2} здоров'я.#within {1} yards#target for {2}", nil }, -- Healing Rain
[415714] = { "Цілющий дощ", "Отримати здібність \"Цілющий дощ\":", nil, rune=415236 }, -- Healing Rain

-- Healing Wave
[416247] = { "Хвиля зцілення", "Зцілює союзній цілі від {1} до {2} здоров'я.#for {1} to {2}", nil }, -- Healing Wave
[416316] = { ref=416247 }, -- Healing Wave
[416317] = { ref=416247 }, -- Healing Wave
[416318] = { ref=416247 }, -- Healing Wave
[416319] = { ref=416247 }, -- Healing Wave
[416320] = { ref=416247 }, -- Healing Wave
[416322] = { ref=416247 }, -- Healing Wave
[416323] = { ref=416247 }, -- Healing Wave
[416324] = { ref=416247 }, -- Healing Wave
[416325] = { ref=416247 }, -- Healing Wave

-- Lava Burst
[408490] = { "Виверження лави", "Ви жбурляєте розплавлену лаву в ціль, завдаючи від {1} до {2} шкоди від вогню. Якщо на ціль діє ваш \"Вогняний шок\", то \"Виверження лави\" завдасть критичного удару.#dealing {1} to {2} Fire", nil }, -- Lava Burst
[408491] = { ref=408490 }, -- Lava Burst
[409952] = { "Виверження лави", "Отримати здібність \"Виверження лави\":", nil, rune=408490 }, -- Lava Burst

-- Lava Lash
[408507] = { "Удар лавою", "Ви заряджаєте свою зброю в лівій руці лавою, і миттєво завдаєте 100% шкоди від зброї. Шкода збільшується на 20%, якщо ваша зброя зачарована язиком полум'я.", nil }, -- Lava Lash
[409953] = { "Удар лавою", "Отримати здібність \"Удар лавою\":", nil, rune=408507 }, -- Lava Lash

-- Lightning Bolt
[408439] = { "Блискавка", "Кидає в ціль блискавку, завдаючи від {1} до {2} шкоди від природи.#for {1} to {2}", nil }, -- Lightning Bolt
[408440] = { ref=408439 }, -- Lightning Bolt
[408441] = { ref=408439 }, -- Lightning Bolt
[408442] = { ref=408439 }, -- Lightning Bolt
[408443] = { ref=408439 }, -- Lightning Bolt
[408472] = { ref=408439 }, -- Lightning Bolt
[408473] = { ref=408439 }, -- Lightning Bolt
[408474] = { ref=408439 }, -- Lightning Bolt
[408475] = { ref=408439 }, -- Lightning Bolt
[408477] = { ref=408439 }, -- Lightning Bolt

-- Molten Blast
[425339] = { "Вибух лави", "Завдати {1} ворогам перед собою від {2} до {3} шкоди від вогню. Ця здібність спричиняє велику кількість загрози. Періодична шкода від \"Вогняного шоку\" має 10% шанс скинути час відновлення \"Вибуху лави\".#up to {1} enemies#for {2} to {3}", nil }, -- Molten Blast
[425340] = { "Вибух лави", "Отримати здібність \"Вибух лави\":", nil, rune=425339 }, -- Molten Blast

-- Overload
[408438] = { "Перевантаження", "Ваші заклинання \"Блискавка\", \"Ланцюгова блискавка\", \"Ланцюгове зцілення\", \"Хвиля зцілення\" і \"Виверження лави\" мають 33% шанс викликати на ту ж ціль друге аналогічне заклинання без додаткових витрат мани, яке завдає половину шкоди або зцілення і не спричиняє загрози.", nil }, -- Overload
[409945] = { "Перевантаження", "Отримати здібність \"Перевантаження\":", nil, rune=408438 }, -- Overload

-- Shamanistic Rage
[425336] = { "Шаманська лють", "Зменшує всю отримувану вами шкоду на 20%, і ви відновлюєте ману щосекунди протягом 15 секунд. Кількість мани, що відновлюється за секунду, дорівнює 15% від вашої сили атаки, 10% від сили заклинань або 6% від сили зцілення, залежно від того, яке значення є більшим. Члени вашої групи та рейду в радіусі 40 м також відновлять 10% від отриманої таким чином мани.", "Отримана шкода зменшена на {1}%.\nВідновлення {2} мани щосекунди.#by {1}%#{2} mana" }, -- Shamanistic Rage
[425341] = { "Шаманська лють", "Отримати здібність \"Шаманська лють\":", nil, rune=408438 }, -- Shamanistic Rage
[433255] = { "Шаманська лють", nil, "Відновлення {1} мани щосекунди.#{1} mana" }, -- Shamanistic Rage

-- Shield Mastery
[408524] = { "Майстерність володіння щитом", "Кожного разу, коли ви блокуєте атаку, ви відновлюєте ману в об'ємі {1}% від вашого максимального запасу мани, і отримуєте додаткову броню в об'ємі {2}% від значення броні вашого щита. Ефект накопичується до {3} разів. Ви також завжди отримуєте на {4}% більше ймовірності блокування і на {5}% більше показнику блокування.#to {1}% of your maximum mana#to {2}% of your shield#up to {3} times#gain {4}% increased chance to Block and {5}% increased Block", nil }, -- Shield Mastery
[409943] = { "Майстерність володіння щитом", "Отримати здібність \"Майстерність володіння щитом\":", nil, rune=408438 }, -- Shield Mastery

-- Water Shield
[408510] = { "Щит води", "Заклинача оточують 3 кулі води, які відновлюють 1% від максимального запасу мани кожні 5 с. Коли заклинання, атака ближнього або дальнього бою потрапляє в заклинача, одна куля води знищується відновлює 4% від максимального запасу мани. Куля води може бути знищена лише раз на кілька секунд. Триває 10 хв. Одночасно на шамані може бути активний лише один щит стихій.", "Відновлює 1% від максимального запасу мани кожні 5 с. Атаки та заклинання, використані проти вас, відновлюють 4% вашого максимального запасу мани. Зарядів: {1}.#{1} charge" }, -- Water Shield
[409941] = { "Щит води", "Отримати здібність \"Щит води\":", nil, rune=408510 }, -- Water Shield

-- Way of Earth
[408531] = { "Шлях Землі", "Поки зброя у вашій основній руці зачарована каменоломом, ви спричиняєте на 50% більше загрози, отримуєте на 30% більше здоров'я, отримуєте на 10% менше шкоди та на 6% менше ймовірність отримати критичний удар в ближньому бою, а \"Земний шок\" підбурює цілі атакувати вас і має окремий час відновлення від інших шоків, але його дальність дії зменшується до ближнього бою.", nil }, -- Way of Earth
[408680] = { "Шлях Землі", "Поки зброя у вашій основній руці зачарована каменоломом, ви спричиняєте на 50% більше загрози, отримуєте на 30% більше здоров'я, отримуєте на 10% менше шкоди та на 6% менше ймовірність отримати критичний удар в ближньому бою, а \"Земний шок\" підбурює цілі атакувати вас і має окремий час відновлення від інших шоків.", "Спричиняє на 50% більше загрози. Здоров'я збільшено на 30%. \"Земний шок\" підбурює цілі атакувати вас. На 10% менше отриманої шкоди. На 6% менша ймовірність отримати критичний удар в ближньому бою." }, -- Way of Earth
[409955] = { "Шлях Землі", "Отримати здібність \"Шлях Землі\":", nil, rune=408531 }, -- Way of Earth


-- Rune progression effects
[413338] = { "Символ оплоту", nil, "Сповнений натхнення." }, -- Bulwark Icon
[415012] = { "Символ уламків", nil, "Сповнений натхнення." }, -- Clastic Icon
[413429] = { "Символ здвоєння", nil, "Сповнений натхнення." }, -- Dyadic Icon
[415015] = { "Гальванічний символ", nil, "Сповнений натхнення." }, -- Galvanic Icon
[413839] = { "Каджарський символ", nil, "Сповнений натхнення." }, -- Kajaric Icon
[413432] = { "Монолітний символ", nil, "Сповнений натхнення." }, -- Lithic Icon
[426257] = { "Сірчаний символ", nil, "Сповнений натхнення." }, -- Sulfurous Icon
[420799] = { "Символ бурі", nil, "Сповнений натхнення." }, -- Tempest Icon

-- Engraving
[410096] = { "Гравіювання нагрудника - Спеціалізація на бою з двох рук", "Вигравіювати на нагруднику руну \"Спеціалізація на бою з двох рук\":", nil, rune=408496 }, -- Engrave Chest - Dual Wield Specialization
[416057] = { "Гравіювання нагрудника - Цілющий дощ", "Вигравіювати на нагруднику руну \"Цілющий дощ\":", nil, rune=415236 }, -- Engrave Chest - Healing Rain
[410094] = { "Гравіювання нагрудника - Перевантаження", "Вигравіювати на нагруднику руну \"Перевантаження\":", nil, rune=408438 }, -- Engrave Chest - Overload
[410098] = { "Гравіювання нагрудника - Майстерність володіння щитом", "Вигравіювати на нагруднику руну \"Майстерність володіння щитом\":", nil, rune=408524 }, -- Engrave Chest - Shield Mastery
[410095] = { "Гравіювання рукавиць - Виверження лави", "Вигравіювати на рукавицях руну \"Виверження лави\":", nil, rune=408490 }, -- Engrave Gloves - Lava Burst
[410104] = { "Гравіювання рукавиць - Удар лавою", "Вигравіювати на рукавицях руну \"Удар лавою\":", nil, rune=408507 }, -- Engrave Gloves - Lava Lash
[425344] = { "Гравіювання рукавиць - Вибух лави", "Вигравіювати на рукавицях руну \"Вибух лави\":", nil, rune=425339 }, -- Engrave Gloves - Molten Blast
[410097] = { "Гравіювання рукавиць - Щит води", "Вигравіювати на рукавицях руну \"Щит води\":", nil, rune=408510 }, -- Engrave Gloves - Water Shield
[410099] = { "Гравіювання штанів - Настанови пращурів", "Вигравіювати на штанях руну \"Настанови пращурів\":", nil, rune=409324 }, -- Engrave Pants - Ancestral Guidance
[410101] = { "Гравіювання штанів - Щит землі", "Вигравіювати на штанях руну \"Щит землі\":", nil, rune=408514 }, -- Engrave Pants - Earth Shield
[425343] = { "Гравіювання штанів - Шаманська лють", "Вигравіювати на штанях руну \"Шаманська лють\":", nil, rune=425336 }, -- Engrave Pants - Shamanistic Rage
[410107] = { "Гравіювання штанів - Шлях Землі", "Вигравіювати на штанях руну \"Шлях Землі\":", nil, rune=408531 }, -- Engrave Pants - Way of Earth

}

for k, v in pairs(shaman_spells) do addonTable.spell[k] = v end
