local _, addonTable = ...

local druid_spells = {

-- [id] = {
--     [ref] = ID (optional),
--     [1] = title (optional),
--     [2] = description (optional),
--     [3] = aura (optional),
-- }

-- Efflorescence
[417148] = { "Цвітіння", "Зцілює до {1} членів групи чи рейду в радіусі {2} м від цілі на {3}.#up to {1} friendly#{2} yards of the target for {3}", nil }, -- Efflorescence
[417149] = { "Цвітіння", "Ваше \"Негайне відновлення\" також викликає ефект \"Цвітіння\", зцілюючи {1} найбільш ушкодженим членам групи в радіусі {2} від цілі {3} здоров'я кожні 5 сек протягом 30 сек.#the {1} most#within {2} yards#for {3} every", nil }, -- Efflorescence

-- Everbloom
[417123] = { "Вічноцвіт", "Тепер ваше \"Відживлення\" може бути активне на цілі, яка знаходиться під ефектом \"Відживлення\" інших друїдів.", nil }, -- Everbloom

-- Fury of Stormrage
[409832] = { "Гнів Лютошторма", "Отримати здібність \"Гнів Лютошторма\":", nil, rune=414799 }, -- Fury of Stormrage
[414799] = { "Гнів Лютошторма", "Зменшує витрати мани на \"Гнів\" на 100%, і щоразу, коли ви завдаєте шкоди за допомогою \"Гніву\", з шансом 12% наступне використання \"Цілющого дотику\" впродовж 15 сек буде миттєвим.", nil }, -- Fury of Stormrage
[414800] = { "Гнів Лютошторма", nil, "Ваш наступний \"Цілющий дотик\" вимовиться миттєво." }, -- Fury of Stormrage

-- Gale Winds
[417135] = { "Шквальний вітер", "Збільшує шкоду від \"Урагану\" на 100%, він більше не має часу відновлення, а витрати мани на його вимову зменшуються на 20%.", nil }, -- Gale Winds

-- Gore
[417145] = { "Кривавість", "Завдавши удару здібністю \"Розірвати\", \"Розмах\" або \"Терзання\", ви маєте 15% шанс скинути відновлення \"Нівечення\" (ведмідь).", nil }, -- Gore

-- Lacerate
[414644] = { "Розірвати", "Розриває ворожу ціль, змушуючи її стікати кров'ю на {1} шкоди протягом 15 сек плюс 20% шкоди від зброї за кожен ефект \"Розірвати\" на цілі. Спричиняє велику загрозу. Ефект накопичується до 5 разів на одній цілі.", "{1} шкоди кожні 3 сек#{1} damage" }, -- Lacerate
[414647] = { "Розірвати", nil, nil }, -- Lacerate
[415760] = { "Розірвати", "Отримати здібність \"Розірвати\":", nil, rune=414644 }, -- Lacerate

-- Lifebloom
[408124] = { "Життєцвіт", "Зцілює ціль на {1} здоров'я протягом {2} сек. Коли \"Життєцвіт\" закінчується або розвіюється, ціль миттєво зцілюється на {3} здоров'я, а друїд відновлює половину витраченої на заклинання мани. Ефект накопичується до 3 разів на одній цілі.#for {1} over {2} sec#instantly heals for {3}", "Зцілює на {1} щосекунди і на {2} коли ефект закінчиться або розвіється.#{1} every second and {2}" }, -- Lifebloom
[408245] = { "Життєцвіт", "Зцілює ціль протягом {1} сек. Коли \"Життєцвіт\" закінчується або розвіюється, ціль миттєво зцілюється. Ефект накопичується до 3 разів на одній цілі.#over {1} sec", nil }, -- Lifebloom
[409824] = { "Життєцвіт", "Зменшує глобальне відновлення здібностей \"Відживлення\" та \"Життєцвіт\" на 0,5 сек, і дає вам здібність \"Життєцвіт\":", nil, rune=408124 }, -- Lifebloom

-- Living Seed
[414677] = { "Зерно життя", "Коли ви зцілюєте ціль критичним ефектом будь-якого заклинання, ви саджаєте в неї \"Зерно життя\" на 30% від ефекту зцілення. \"Зерно життя\" розквітне, коли ціль буде атакована наступного разу. Триває 15 секунд.", nil }, -- Living Seed
[414680] = { "Зерно життя", nil, "Зцілиться на {1} при наступному отриманні шкоди.#for {1} health" }, -- Living Seed
[414683] = { "Зерно життя", "Зцілює союзника на {1}.#for {1}", nil }, -- Living Seed

-- Mangle
[407993] = { "Нівечення", "Нівечить ціль на 300% від звичайної шкоди і збільшує шкоду цілі від ефектів кровотечі і \"Шматування\" на 30% протягом 1 хв.  Збільшує довжину комбінації на 1 прийом. Ця здібність взаємодіє з усіма ефектами, що й \"Дряпання\" та \"Терзання\".", "Ефекти кровотечі та \"Шматування\" завдають на 30% більше шкоди." }, -- Mangle
[407995] = { "Нівечення", "Нівечить ціль на 160% від звичайної шкоди і збільшує шкоду цілі від ефектів кровотечі і \"Шматування\" на 30% протягом 1 хв.  Ця здібність взаємодіє з усіма ефектами, що й \"Дряпання\" та \"Терзання\".", "Ефекти кровотечі та \"Шматування\" завдають на 30% більше шкоди." }, -- Mangle
[409828] = { "Нівечення", "Отримати здібність \"Нівечення\" (ведмідь) та замінити вашу здібність \"Дряпання\" на \"Нівечення\" (кіт). Ця здібність взаємодіє з усіма ефектами, що й \"Дряпання\" та \"Терзання\".", nil, rune=407995 }, -- Mangle

-- Moonfire
[429823] = { "Місячний вогонь", "Завдає ворогу від {1} до {2} шкоди арканою та ще додатково від {3} до {4} шкоди арканою кожні {5} сек протягом {6} сек.#Inflicts {1} to {2}#additional {3} to {4} damage every {5} sec. for {6} sec\"", "Від {1} до {2} шкоди арканою кожні {3} сек.#{1} to {2}#every {3} sec" }, -- Moonfire

-- Natural Reaction
[417051] = { "Природна реакція", "Збільшує ймовірність ухилення на 10%, і ви відновлюєте 3 люті щоразу, коли ухиляєтеся в подобі ведмедя або жахливого ведмедя, 10 енергії в котячій подобі або 1% від максимального запасу мани в будь-якій іншій подобі.", nil }, -- Natural Reaction

-- Rejuvenation
[417057] = { "Відживлення", "Зцілює цілі {1} здоров'я протягом {2} сек.#for {1} over {2}", "Зцілює {1} здоров'я кожні {2} сек.#{1} damage every {2}" }, -- Rejuvenation
[417058] = { ref=417057 }, -- Rejuvenation
[417059] = { ref=417057 }, -- Rejuvenation
[417060] = { ref=417057 }, -- Rejuvenation
[417061] = { ref=417057 }, -- Rejuvenation
[417062] = { ref=417057 }, -- Rejuvenation
[417063] = { ref=417057 }, -- Rejuvenation
[417064] = { ref=417057 }, -- Rejuvenation
[417065] = { ref=417057 }, -- Rejuvenation
[417066] = { ref=417057 }, -- Rejuvenation
[417068] = { ref=417057 }, -- Rejuvenation

-- Renewal
[417159] = { "Відновлення", "Миттєво зцілює вас на 30% від максимального запасу здоров'я. Можна використовувати в будь-якій подобі.", nil }, -- Renewal

-- Savage Roar
[407988] = { "Дикий рев", "Завершальний рух, що збільшує фізичну шкоду на 30% в котячій подобі. Тривалість ефекту залежить від довжини комбінації:\n  1 прийом:   {1} сек\n  2 прийоми: {2} сек\n  3 прийоми: {3} сек\n  4 прийоми: {4} сек\n  5 прийомів: {5} сек#1 point  : {1} sec#2 points: {2} sec#3 points: {3} sec#4 points: {4} sec#5 points: {5} sec", "Фізичну шкоду збільшено на 30%." }, -- Savage Roar
[407989] = { "Дикий рев", "Завершальний рух, що збільшує фізичну шкоду на 30%. Тривалість ефекту залежить від довжини комбінації:\n  1 прийом:   {1} сек\n  2 прийоми: {2} сек\n  3 прийоми: {3} сек\n  4 прийоми: {4} сек\n  5 прийомів: {5} сек#1 point  : {1} sec#2 points: {2} sec#3 points: {3} sec#4 points: {4} sec#5 points: {5} sec", "Фізичну шкоду збільшено на 30%." }, -- Savage Roar
[409819] = { "Дикий рев", "Отримати здібність \"Дикий рев\":", nil, rune=407988 }, -- Savage Roar

-- Skull Bash
[410176] = { "Лобова атака", "Кинутись на ціль в радіусі {1} м і вдарити по черепу, перериваючи вимову заклинань і унеможливлюючи вимову заклять тієї ж школи протягом 2 сек. Має спільне перезаряджання з \"Диким штурмом\".", nil }, -- Skull Bash
[414621] = { "Лобова атака", "Вдарити ціль по черепу, перериваючи вимову заклинань і унеможливлюючи вимову заклять тієї ж школи протягом 2 сек.", nil }, -- Skull Bash
[415759] = { "Лобова атака", "Отримати здібність \"Лобова атака\":", nil, rune=410176 }, -- Skull Bash

-- Starfall
[429820] = { "Зорепад", "Завдає від {1} до {2} шкоди арканою ворогам у вибраній області кожні 2 сек протягом 10 сек.#{1} to {2}", nil }, -- Starfall

-- Starsurge
[417157] = { "Зоряний сплеск", "Сплеск зоряної енергії, що завдає від {1} до {2} шкоди арканою.\n\"Зоряний сплеск\" взаємодіє з усіма ефектами, що й \"Гнів\" та \"Зоряний вогонь\".", nil }, -- Starsurge
[424715] = { "Зоряний сплеск", "Отримати здібність \"Зоряний сплеск\":", nil, rune=417157 }, -- Starsurge

-- Sunfire
[414684] = { "Сонячний вогонь", "Обпікає ворога, миттєво завдаючи від {1} до {2} шкоди від природи, а потім додатково {3} шкоди від природи протягом {4} сек.#for {1} to {2}#additional {3} Nature damage over {4} sec", "{1} шкоди від природи кожні {2} сек.#{1} Nature damage every {2} sec" }, -- Sunfire
[414687] = { "Сонячний вогонь", "Обпікає ворога, миттєво завдаючи від {1} до {2} шкоди від природи, а потім додатково {3} шкоди від природи протягом {4} сек.#for {1} to {2}#additional {3} Nature damage over {4} sec", "{1} шкоди від природи кожні {2} сек.#{1} Nature damage every {2} sec" }, -- Sunfire
[414689] = { "Сонячний вогонь", "Обпікає ворога, миттєво завдаючи від {1} до {2} шкоди від природи, а потім додатково {3} шкоди від природи протягом {4} сек. Збільшує довжину комбінації на 1 прийом.#for {1} to {2}#additional {3} Nature damage over {4} sec", "{1} шкоди від природи кожні {2} сек.#{1} Nature damage every {2} sec" }, -- Sunfire
[414692] = { "Сонячний вогонь", "Отримати здібність \"Сонячний вогонь\":", nil, rune=414684 }, -- Sunfire
[414696] = { "Сонячний вогонь", nil, nil }, -- Sunfire
[414700] = { "Сонячний вогонь", nil, nil }, -- Sunfire

-- Survival of the Fittest
[411115] = { "Виживає найсильніший", "Зменшує шанс отримати критичний удар в ближньому бою на 6% і зменшує всю отриману шкоду на 10%. Отримана шкода зменшується ще на 10%, якщо ви перебуваєте у подобі ведмедя або жахливого ведмедя.", nil }, -- Survival of the Fittest
[415709] = { "Виживає найсильніший", "Отримати здібність \"Виживає найсильніший\":", nil, rune=411115 }, -- Survival of the Fittest

-- Thrash (Bear)
[417440] = { "Трощити (ведмідь)", "Вражає всіх ворогів поблизу, завдаючи {1} шкоди від кровотечі і додатково {2} шкоди від кровотечі протягом 15 сек. При застосуванні з ведмежої подоби цей ефект може накопичуватися до 3 разів.#dealing {1} Bleed#additional {2} Bleed", nil }, -- Thrash (Bear)
[417441] = { "Трощити (ведмідь)", nil, "{1} шкоди від кровотечі кожні {2} сек.#{1} damage every {2}" }, -- Thrash (Bear)

-- Thrash (Cat)
[417437] = { "Трощити (кіт)", nil, nil }, -- Thrash (Cat)
[417448] = { "Трощити (кіт)", "Вражає всіх ворогів поблизу, завдаючи {1} шкоди від кровотечі і додатково {2} шкоди від кровотечі протягом 15 сек. Збільшує довжину комбінації на 1 прийом.#dealing {1} Bleed#additional {2} Bleed", "{1} шкоди від кровотечі кожні {2} сек.#{1} damage every {2}" }, -- Thrash (Cat)

-- Tiger's Fury
[417045] = { "Лють тигра", "Збільшує завдану шкоду на {1}% протягом {2} сек і миттєво відновлює вам {3} енергії.#by {1}% for {2} sec#you {3} Energy", "Збільшує завдану шкоду на {1}%.#by {1}%" }, -- Tiger's Fury

-- Torrential Downpour
[405953] = { "Проливна злива", nil, "Від {1} до {2} шкоди кожні {3} сек.#{1} to {2} damage every {3}" }, -- Torrential Downpour

-- Wild Growth
[408120] = { "Дикий ріст", "Зцілює всіх членів групи цілі в радіусі 40 м від неї на {1} протягом {2} секунд. Зцілення спочатку відбувається швидко, а ближче до кінця дії ефекту сповільнюється.", "Зцілює {1} здоров'я кожні {2} сек.#{1} damage every {2}" }, -- Wild Growth
[409810] = { "Дикий ріст", "Отримати здібність \"Дикий ріст\":", nil, rune=408120 }, -- Wild Growth

-- Wild Strike
[407973] = { "Дикий удар", "Додаткова атака.", nil }, -- Wild Strike

-- Wild Strikes
[407975] = { "Дикі удари", "Члени групи в радіусі 20 м отримують підвищену бойову лють. Кожен удар в ближньому бою з шансом 20% спрацює повторно з додатковими 20% до сили атаки. Не діє, якщо член групи вже знаходиться під ефектом \"Тотема буревію\".", "Шанс отримати додаткову атаку." }, -- Wild Strikes
[407977] = { "Дикі удари", "Поки ви знаходитесь в подобі кота, ведмедя чи лютого ведмедя, члени групи в радіусі 20 м отримують підвищену бойову лють. Кожен удар в ближньому бою з шансом 20% спрацює повторно з додатковими 20% до сили атаки. Не діє, якщо член групи вже знаходиться під ефектом \"Тотема буревію\".", "Шанс отримати додаткову атаку." }, -- Wild Strikes
[409805] = { "Дикі удари", "Отримати здібність \"Дикі удари\":", nil, rune=407977 }, -- Wild Strikes
[433107] = { ref=407977 }, -- Wild Strikes


-- Rune progression effects
[420493] = { "Ідол дикості", nil, "Сповнений натхнення." }, -- Ferocious Idol
[414826] = { "Ідол ведмежої люті", nil, "Сповнений натхнення." }, -- Idol of Ursine Rage
[426072] = { "Ідол дикої природи", nil, "Сповнений натхнення." }, -- Idol of the Wild
[419288] = { "Ідол місяця", nil, "Сповнений натхнення." }, -- Lunar Idol
[424339] = { "Незбалансований ідол сну", nil, "Балансування між силами природи." }, -- Unbalanced Idol Dream
[423186] = { "Незбалансований ідол місяця", nil, "Балансування між силами природи." }, -- Unbalanced Idol Moon
[424336] = { "Незбалансований ідол дикої природи", nil, "Балансування між силами природи." }, -- Unbalanced Idol Wild
[415004] = { "Розряджений", nil, "Позбавлений магічної енергії" }, -- Unpowered

-- Engraving
[410061] = { "Гравіювання нагрудника - Гнів Лютошторма", "Вигравіювати на нагруднику руну \"Гнів Лютошторма\":", nil, rune=414799 }, -- Engrave Chest - Fury of Stormrage
[416050] = { "Гравіювання нагрудника - Зерно життя", "Вигравіювати на нагруднику руну \"Зерно життя\":", nil, rune=414677 }, -- Engrave Chest - Living Seed
[416042] = { "Гравіювання нагрудника - Виживає найсильніший", "Вигравіювати на нагруднику руну \"Виживає найсильніший\":", nil, rune=411115 }, -- Engrave Chest - Survival of the Fittest
[410021] = { "Гравіювання нагрудника - Дикі удари", "Вигравіювати на нагруднику руну \"Дикі удари\":", nil, rune=407977 }, -- Engrave Chest - Wild Strikes
[416049] = { "Гравіювання рукавиць - Розірвати", "Вигравіювати на рукавицях руну \"Розірвати\":", nil, rune=414644 }, -- Engrave Gloves - Lacerate
[410025] = { "Гравіювання рукавиць - Нівечення", "Вигравіювати на рукавицях руну \"Нівечення\":", nil, rune=407995 }, -- Engrave Gloves - Mangle
[416044] = { "Гравіювання рукавиць - Сонячний вогонь", "Вигравіювати на рукавицях руну \"Сонячний вогонь\":", nil, rune=414684 }, -- Engrave Gloves - Sunfire
[410028] = { "Гравіювання рукавиць - Дикий ріст", "Вигравіювати на рукавицях руну \"Дикий ріст\":", nil, rune=408120 }, -- Engrave Gloves - Wild Growth
[410033] = { "Гравіювання штанів - Життєцвіт", "Вигравіювати на штанях руну \"Настанови пращурів\":", nil, rune=409824 }, -- Engrave Pants - Lifebloom
[410023] = { "Гравіювання штанів - Дикий рев", "Вигравіювати на штанях руну \"Дикий рев\":", nil, rune=407988 }, -- Engrave Pants - Savage Roar
[416046] = { "Гравіювання штанів - Лобова атака", "Вигравіювати на штанях руну \"Лобова атака\":", nil, rune=410176 }, -- Engrave Pants - Skull Bash
[424718] = { "Гравіювання штанів - Зоряний сплеск", "Вигравіювати на штанях руну \"Зоряний сплеск\":", nil, rune=417157 }, -- Engrave Pants - Starsurge

}

for k, v in pairs(druid_spells) do addonTable.spell[k] = v end
