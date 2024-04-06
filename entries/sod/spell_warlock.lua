local _, addonTable = ...

local warlock_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Backdraft
[427713] = { "Зворотний потік", "Ваша здібність \"Розпалення\" також прискорює вимову заклинань на {1}% протягом {2} секунд.#grants {1}%#for {2} sec", nil }, -- Backdraft
[427714] = { "Зворотний потік", nil, "Вимову заклять прискорено на {1}%.#by {1}%" }, -- Backdraft
[431742] = { "Зворотний потік", "Отримати здібність \"Зворотний потік\":", nil, rune=427713 }, -- Backdraft

-- Chaos Bolt
[403629] = { "Стріла Хаосу", "Випускає у ворога стрілу хаотичного вогню, що завдає від {1} до {2} шкоди від вогню. \"Стріла Хаосу\" завжди влучає, минає супротив, а якщо ви знаєте це заклинання, то всі ваші вогняні заклинання проникають крізь ефекти поглинання. Вороги, чий рівень перевищує ваш на 4 та більше, мають більшу ймовірність спротиву \"Стрілі Хаосу\".#dealing {1} to {2}", nil }, -- Chaos Bolt
[403860] = { "Стріла Хаосу", "Отримати здібність \"Стріла Хаосу\":", nil, rune=403629 }, -- Chaos Bolt

-- Dance of the Wicked
[412798] = { "Танець нечестивців", "Коли ви завдаєте критичного удару, ймовірність ухилення для вас і вашого прислужника підвищується на значення, що дорівнює вашій ймовірності завдання критичної шкоди заклинаннями. Крім того, ви з прислужником відновлюєте 2% від максимального запасу мани.", nil }, -- Dance of the Wicked
[412800] = { "Танець нечестивців", "Збільшує ймовірність ухилення на значення, що дорівнює вашій ймовірності завдання критичної шкоди заклинаннями.", "Ймовірність ухилення збільшено на {1}%.#by {1}" }, -- Dance of the Wicked
[415751] = { "Танець нечестивців", "Отримати здібність \"Танець нечестивців\":", nil, rune=412798 }, -- Dance of the Wicked

-- Decimation
[440873] = { "Винищення", nil, "\"Пожежа душі\" вимовляється на {1}% швидше і не вимагає уламків душ.#by {1}%" }, -- Decimation

-- Demon Charge
[412788] = { "Ривок демона", "Ривок у ворога, що приголомшує його на {1} с. Не можна використовувати в бою.#and stun it for {1} sec", nil }, -- Demon Charge

-- Demonic Grace
[425463] = { "Демонічна благодать", "Вас переповнює енергія Скверни, що збільшує на {1}% ймовірність ухилення для вас і вашого прислужника, а також збільшує на {2}% шанс критичного удару всіх атак. Триває {3} с.#chance by {1}%#attacks by {2}%#Lasts {3} sec", "Шанс ухилення збільшено на {1}%.\nШанс критичного удару чорнокнижника збільшено на {2}%.#Dodge chance increased by {1}#strike chance increased by {2}" }, -- Demonic Grace
[425474] = { "Демонічна благодать", "Отримати здібність \"Демонічна благодать\":", nil, rune=425463 }, -- Demonic Grace
[430025] = { ref=425463 }, -- Demonic Grace

-- Demonic Howl
[412789] = { "Демонічне виття", "Змушує всіх ворогів навколо атакувати вас впродовж {1} с.#attacks on you for {1} sec", "Підбурено." }, -- Demonic Howl

-- Demonic Knowledge
[412732] = { "Демонічні знання", "Збільшує шкоду і зцілення від заклинань на величину, що дорівнює 10% від загальної витривалості та інтелекту вашого прислужника.", nil }, -- Demonic Knowledge
[415749] = { "Демонічні знання", "Отримати здібність \"Демонічні знання\":", nil, rune=412732 }, -- Demonic Knowledge

-- Demonic Pact
[425464] = { "Угода з демоном", "Критичні удари вашого прислужника накладають ефект \"Угода з демоном\" на членів вашої групи на {1} с. \"Угода з демоном\" збільшує шкоду і зцілення від заклинань на {2}% від вашої шкоди від заклинань або {3}, залежно від того, яке значення більше. Не діє на поневолених демонів.#for {1} sec#by {2}% of your spell damage or {3}", nil }, -- Demonic Pact
[425473] = { "Угода з демоном", "Отримати здібність \"Угода з демоном\":", nil, rune=425464 }, -- Demonic Pact

-- Demonic Tactics
[412727] = { "Демонічна тактика", "Збільшує шанс критичного удару атак ближнього бою та заклинань для вас і вашого прислужника на {1}%.#by {1}%", nil }, -- Demonic Tactics
[415605] = { "Демонічна тактика", "Отримати здібність \"Демонічна тактика\":", nil, rune=412727 }, -- Demonic Tactics

-- Disrupt
[412787] = { "Придушення", "Придушити ворога сплеском тіньової енергії, який завдає {1} шкоди, перериває вимову закляття та унеможливлює вимову заклять тієї ж школи протягом {2} секунд.#deals {1}#for {2} sec", nil }, -- Disrupt

-- Drain Life
[403677] = { "Висмоктування життя", "Передає {1} здоров'я щосекунди від цілі до заклинача. Триває {2} с.#{1} health#Lasts {2}", "Висмоктує {1} здоров'я щосекунди.#{1} health" }, -- Drain Life
[403685] = { ref=403677 }, -- Drain Life
[403686] = { ref=403677 }, -- Drain Life
[403687] = { ref=403677 }, -- Drain Life
[403688] = { ref=403677 }, -- Drain Life
[403689] = { ref=403677 }, -- Drain Life

-- Everlasting Affliction
[412689] = { "Вічна химородь", "\"Висмоктування життя\", \"Висмоктування душі\", \"Тіньова стріла\", \"Тіньове розсічення\", \"Палючий біль\", \"Спалення\" і \"Мара\" відновлюють час дії вашого \"Зараження\" на цілі до максимальної тривалості.", nil }, -- Everlasting Affliction
[415604] = { "Вічна химородь", "Отримати здібність \"Вічна химородь\":", nil, rune=412689 }, -- Everlasting Affliction

-- Explorer Imp
[445459] = { "Біс-дослідник", "Викликати біса-дослідника. Він не може битися, але може подорожувати крізь портали, щоб досліджувати інші світи і приносити скарби.", nil }, -- Explorer Imp

-- Fetish of Mischief
[423474] = { "Фетиш безладу", "Збільшує шкоду від \"Вогняної стріли\" вашого біса на {1}.#by {1}.", nil }, -- Fetish of Mischief

-- Grimoire of Synergy
[426301] = { "Гримуар синергії", "Прочитати з темного фоліанта закляття, що дозволяє вам та вашому прислужнику з шансом {1}% збільшити шкоду одне одного на {2}% протягом {3} секунд при завданні шкоди. Закляття діє {4} хв.#a {1}% chance#other by {2}% for {3} sec#lasts {4} min", "Ви та ваш прислужник з шансом {1}% збільшите шкоду одне одного на {2}% протягом {3} секунд при завданні шкоди.#a {1}% chance#other by {2}% for {3} sec" }, -- Grimoire of Synergy
[426444] = { "Гримуар синергії", "Отримати здібність \"Гримуар синергії\":", nil, rune=426301 }, -- Grimoire of Synergy

-- Haunt
[403501] = { "Мара", "Випустити на ворога примару, яка завдасть від {1} до {2} шкоди, а також збільшить вашу шкоду від тіні по ньому на {3}%. Коли \"Мара\" закінчиться або розвіється, ви зцілитеся від шкоди, яку вона завдала цілі.#{1} to {2} damage#target by {3}%", "Ефекти періодичної шкоди завдають на {1}% більше шкоди від тіні.#by {1}%." }, -- Haunt
[403858] = { "Мара", "Отримати здібність \"Вічна химородь\":", nil, rune=403501 }, -- Haunt

-- Immolation Aura
[427726] = { "Обпалююча аура", "Обпалює ворогів поблизу, завдаючи {1} шкоди кожні {2} с, а також зменшуючи всю отриману магічну шкоду на {3}%. Діє до скасування.#for {1} damage every {2} sec#taken by {3}%", "Обпалює ворогів поблизу, завдаючи {1} шкоди кожні {2} секунди, та отримує на {3}% менше магічної шкоди.#for {1} damage every {2} sec#taking {3}% reduced" }, -- Immolation Aura
[431757] = { "Обпалююча аура", "Отримати здібність \"Обпалююча аура\":", nil, rune=427726 }, -- Immolation Aura

-- Incinerate
[412758] = { "Спалення", "Підпалити ворога, завдавши від {1} до {2} шкоди і збільшити всю вашу шкоду від вогню на {3}% протягом наступних {4} с.#for {1} to {2}#by {3}% for the next {4} sec", "Завдану вами шкоду від вогню збільшено на {1}%.#by {1}%." }, -- Incinerate
[415750] = { "Спалення", "Отримати здібність \"Спалення\":", nil, rune=412758 }, -- Incinerate

-- Invocation
[426243] = { "Закляття", "Оновлення дї ефекту \"Зараження\", \"Жертвоприношення\", \"Прокляття агонії\" або \"Витягування життя\" на цілі менше, ніж за {1} секунд до завершення дії завдасть всю шкоду, що дорівнює залишковій періодичній шкоді заклинання.#than {1} sec", nil }, -- Invocation
[426442] = { "Закляття", "Отримати здібність \"Закляття\":", nil, rune=426243 }, -- Invocation

-- Lake of Fire
[403650] = { "Вогняне озеро", "\"Вогняний дощ\" також залишає на землі вогняне озеро, яке збільшує всю шкоду від вогню, яку завдаєте ви та ваш прислужник-демон ураженим ворогам, на {1}%.#by {1}%.", "Отриману шкоду від вогню збільшено на {1}%.#by {1}%." }, -- Lake of Fire
[403666] = { "Вогняне озеро", "Після повного промовляння \"Вогняний дощ\" також залишає на землі вогняне озеро, яке збільшує всю шкоду від вогню, яку завдаєте ви та ваш прислужник-демон ураженим ворогам, на {1}% протягом {2} с.#by {1}% for {2} sec", nil }, -- Lake of Fire
[403872] = { "Вогняне озеро", "Отримати здібність \"Вогняне озеро\":", nil, rune=403666 }, -- Lake of Fire

-- Loathing
[433672] = { "Ненависть", "Підбурює ціль атакувати вас, але не діє, якщо ціль вже атакує вас.", nil }, -- Loathing

-- Mark of Chaos
[440895] = { "Знак Хаосу", nil, "Ваше наступне неперіодичне заклинання, спрямоване на одну ціль, має збільшену на {1}% ймовірність завдання критичного удару.#gains {1}%" }, -- Mark of Chaos

-- Master Channeler
[403668] = { "Майстерність чаклування", "Ваше \"Висмоктування життя\" більше не промовляється, триває {1} с, має {2}-секундний час відновлення, витрачає на {3}% більше мани і зцілює вас на {4}% більше щоразу, коли завдає шкоду.#lasts {1} sec with a {2} sec#costs {3}% more#for {4}% more", nil }, -- Master Channeler
[403868] = { "Майстерність чаклування", "Отримати здібність \"Майстерність чаклування\":", nil, rune=403668 }, -- Master Channeler

-- Menace
[403828] = { "Погроза", "Підбурює ціль атакувати вас, але не діє, якщо ціль вже атакує вас.", "Підбурено." }, -- Menace
[442226] = { ref=403828 }, -- Menace
[442233] = { ref=403828 }, -- Menace

-- Metamorphosis
[403789] = { "Метаморфоза", "Перетворення на демона, що збільшує броню на {1}%, зменшує ймовірність отримання критичного удару на {2}%, збільшує загрозу на {3}%, збільшує ману, що отримується від \"Витоку життя\", на {4}%, змінює деякі ваші здібності та надає нові:\n\nПалючий біль: тепер вимовляється миттєво.\n\nТіньова стріла: стає \"Тіньовим розсіченням\", атакою ближнього бою, яка вражає до {5} ворогів поблизу тінню, але має {6} с відновлення.\n\nСтрах: стає \"Погрозою\".#Armor by {1}%#critically hit by {2}%#threat by {3}%#Life Tap by {4}%#up to {5} nearby#has a {6} sec cooldown", "Броню збільшено на {1}%, ймовірність отримання критичного удару зменшено на {2}%, загрозу збільшено на {3}%, а кількість мани, що отримується від \"Витоку життя\" збільшено на {4}%. Деякі здібності змінено, а також додано нові.#Armor increased by {1}%#critically hit reduced by {2}%#threat increased by {3}%#Life Tap increased by {4}%", rune={403828, 412788, 412789} }, -- Metamorphosis
[403816] = { "Метаморфоза", "Перетворення на демона, що збільшує броню на {1}%, зменшує ймовірність отримання критичного удару на {2}%, збільшує загрозу на {3}%, збільшує ману, що отримується від \"Витоку життя\", на {4}%, змінює деякі ваші здібності та надає нові:\n\nПалючий біль: тепер вимовляється миттєво.\n\nТіньова стріла: стає \"Тіньовим розсіченням\", атакою ближнього бою, яка вражає до {5} ворогів поблизу тінню, але має {6} хв відновлення.\n\nПрокляття відчайдушності: тепер також підбурює ціль атакувати вас протягом 3 с, але отримує 10-секундне відновлення, а дальність дії зменшується до дистанції ближнього бою.\n\nЗавивання жаху: тепер також змушує всіх ворогів поблизу атакувати вас, але час відновлення збільшено до 10 хвилин.#Armor by {1}%#critically hit by {2}%#threat by {3}%#Life Tap by {4}%#up to {5} nearby#increased to {6} min", "Броню збільшено на {1}%, ймовірність отримання критичного удару зменшено на {2}%, загрозу збільшено на {3}%, а кількість мани, що отримується від \"Витоку життя\" збільшено на {4}%. Деякі здібності змінено.#Armor increased by {1}%#critically hit reduced by {2}%#threat increased by {3}%#Life Tap increased by {4}%" }, -- Metamorphosis
[403873] = { "Метаморфоза", "Отримати здібність \"Метаморфоза\":", nil, rune=403789 }, -- Metamorphosis

-- Metamorphosis : Demon Charge
[412783] = { "Метаморфоза: Ривок демона", nil, nil }, -- Metamorphosis : Demon Charge

-- Metamorphosis : Demonic Howl
[412784] = { "Метаморфоза: Демонічне виття", nil, nil }, -- Metamorphosis : Demonic Howl

-- Neverending Soul Vessel
[433813] = { "Нескінченна посудина душі", "Ваше наступне закляття, що поглинає уламки душ, не потребуватиме їх для вимовляння.", "Ваше наступне закляття, що поглинає уламки душ, не потребуватиме їх для вимовляння." }, -- Neverending Soul Vessel

-- Pandemic
[427712] = { "Пандемія", "Періодична шкода від ваших здібностей \"Зараження\", \"Нестабільна химородь\", \"Прокляття агонії\", \"Жертвоприношення\", \"Прокляття приреченості\" та \"Витягування життя\" тепер може бути критичною.", nil }, -- Pandemic
[429283] = { "Пандемія", "Отримати здібність \"Пандемія\":", nil, rune=427712 }, -- Pandemic

-- Portal of Summoning
[437169] = { "Портал прикликання", "Почати ритуал для створення порталу прикликання.  Портал можуть використати 2 члени групи чи рейду, щоб прикликати третього. Для завершення ритуалу потрібні заклинач і 2 інші члени групи чи рейду. Щоб узяти участь у ритуалі, усі гравці повинні бути поза боєм, натиснути правою кнопкою миші на портал і не рухатися до завершення ритуалу.", nil }, -- Portal of Summoning
[437311] = { ref=437169 }, -- Portal of Summoning

-- Shadow Bolt Volley
[403628] = { "Залп тіньових стріл", "Ваша \"Тіньова стріла\" тепер вражає одна за одною до {1} цілей на відстані {2} м, але завдає на {3}% менше шкоди.#up to {1} targets#of {2} yards#for {3}% reduced", nil }, -- Shadow Bolt Volley
[403871] = { "Залп тіньових стріл", "Отримати здібність \"Залп тіньових стріл\":", nil, rune=403628 }, -- Shadow Bolt Volley

-- Shadow Cleave
[403835] = { "Тіньове розсічення", "Завдати {1} ворогам неподалік від {2} до {3} шкоди від тіні.\n\n\"Тіньове розсічення\" взаємодіє з усіма ефектами, що й \"Тіньова стріла\".#up to {1} nearby#{2} to {3} to each", nil }, -- Shadow Cleave
[403839] = { ref=403835 }, -- Shadow Cleave
[403840] = { ref=403835 }, -- Shadow Cleave
[403841] = { ref=403835 }, -- Shadow Cleave
[403842] = { ref=403835 }, -- Shadow Cleave
[403843] = { ref=403835 }, -- Shadow Cleave
[403844] = { ref=403835 }, -- Shadow Cleave
[403848] = { ref=403835 }, -- Shadow Cleave
[403851] = { ref=403835 }, -- Shadow Cleave
[403852] = { ref=403835 }, -- Shadow Cleave

-- Shadow and Flame
[426316] = { "Тінь і полум'я", "Ваші критичні удари заклинаннями вогню та тіні збільшують вашу шкоду від вогню та тіні на {1}% протягом {2} секунд.#by {1}% for {2} sec", nil }, -- Shadow and Flame
[426449] = { "Тінь і полум'я", "Отримати здібність \"Тінь і полум'я\":", nil, rune=426316 }, -- Shadow and Flame

-- Shadowflame
[426320] = { "Тіньове полум'я", "Цілі в конусі перед заклинателем отримують {1} шкоди від тіні і додатково {2} шкоди від вогню протягом {3} секунд. Цей ефект можна поглинути \"Розпаленням\".#take {1} Shadow#additional {2} Fire#over {3} sec", nil }, -- Shadowflame
[426454] = { "Тіньове полум'я", "Отримати здібність \"Тіньове полум'я\":", nil, rune=426320 }, -- Shadowflame
[426325] = { "Тіньове полум'я", nil, "{1} шкоди від вогню кожні {2} с.#{1} Fire damage every {2} sec" }, -- Shadowflame

-- Soul Harvesting
[437032] = { "Жнива душ", "Щоразу, коли \"Висмоктування душі\" завдає шкоди, у вас є шанс отримати додатковий осколок душі. Цей шанс зростає щоразу, коли ви не отримуєте уламок.", nil }, -- Soul Harvesting

-- Soul Siphon
[403511] = { "Витягування душі", "Збільшення ефекту ваших заклинань \"Висмоктування життя\" і \"Висмоктування душі\" на {1}% за кожен ваш ефект тіні на цілі, максимум до {2}%.#{1}% for each#of {2}% additional", nil }, -- Soul Siphon
[403863] = { "Витягування душі", "Отримати здібність \"Витягування душі\":", nil, rune=403511 }, -- Soul Siphon

-- Summon Felguard
[427733] = { "Виклик вартового скверни", "Викликає вартового скверни, підкореного чорнокнижникові.\n\nВартовий скверни взаємодіє з усіма талантами та ефектами, що й ваші інші демони.", nil }, -- Summon Felguard
[427748] = { "Виклик вартового скверни", nil, nil }, -- Summon Felguard
[431754] = { "Виклик вартового скверни", "Отримати здібність \"Виклик вартового скверни\":", nil, rune=427733 }, -- Summon Felguard

-- Unstable Affliction
[427717] = { "Нестабільна химородь", "Тіньова енергія повільно руйнує ціль, завдаючи {1} шкоди за {2} секунд. Тому, хто розвіє \"Нестабільну химородь\", буде завдано {3} шкоди і знемовлено на {4} с. Чорнокнижник може накласти лише одну \"Нестабільну химородь\" або \"Жертвоприношення\" на одну ціль.#causing {1} damage over {2} sec#cause {3} damage#them for {4} sec", "{1} шкоди тінню кожні {2} с. Тому, хто розвіє \"Нестабільну химородь\", буде завдано {3} шкоди і знемовлено на {4} с.#{1} Shadow damage every {2} sec#cause {3} damage#them for {4} sec" }, -- Unstable Affliction
[427719] = { "Нестабільна химородь", nil, "Знемовлено." }, -- Unstable Affliction
[431748] = { "Нестабільна химородь", "Отримати здібність \"Нестабільна химородь\":", nil, rune=427717 }, -- Unstable Affliction

-- Vengeance
[435112] = { "Помста", "Сповільнює падіння на {1} секунд.#for {1} sec", "Падіння сповільнено." }, -- Vengeance
[426195] = { "Помста", "При активації ця здібність тимчасово збільшує ваш максимальний запас здоров'я на {1}% протягом {2} секунд. Після закінчення ефекту здоров'я втрачається. Крім того, під час метаморфози \"Помста\" змушує ваші крила сповільнювати падіння.#a {1}% increase#for {2} sec", "Запас здоров'я збільшено на {1}%, а швідкість падіння зменшено в метаморфозі.#by {1}%" }, -- Vengeance
[426469] = { "Помста", "Отримати здібність \"Помста\":", nil, rune=426195 }, -- Vengeance

-- Zila Gular
[448686] = { "Зіла Ґулар", "Збільшує шкоду вашого наступного заклинання спеціалізації \"Химородь\", що не вимагає промовляння, на {1}%.#by {1}%", "Шкода вашого наступного заклинання спеціалізації \"Химородь\", що не вимагає промовляння, збільшено на {1}.#by {1}%" }, -- Zila Gular


-- Rune progression effects
[420744] = { "Вівтар шипів", nil, "Ваша жертва буде суворою..." }, -- Altar of Thorns
[408755] = { "пожертва крові", "Пожертвуйте свою кров, щоб наповнити артефакт силою.", "Зменшення характеристик, завданої шкоди, броні та опору на 50%." }, -- Blood Offering
[429407] = { "Гілка Тіней", nil, "Ваше серце і розум обтяжені сумнівами. Ви відчуваєте, як темрява поглинає вас." }, -- Bough of Shadows
[421322] = { "Проклята знахідка", nil, "Кістки жадають проклятої енергії" }, -- Cursed Discovery
[426764] = { "Лише біль", nil, "Біль - єдина мотивація" }, -- Only Pain
[426639] = { "Приношення крові", nil, nil }, -- Offering of Blood

-- Engraving
[426445] = { "Гравіювання пояса - Гримуар синергії", "Вигравіювати на поясі руну \"Гримуар синергії\":", nil, rune=426301 }, -- Engrave Belt - Grimoire of Synergy
[426443] = { "Гравіювання пояса - Закляття", "Вигравіювати на поясі руну \"Закляття\":", nil, rune=426243 }, -- Engrave Belt - Invocation
[426452] = { "Гравіювання пояса - Тінь і полум'я", "Вигравіювати на поясі руну \"Тінь і полум'я\":", nil, rune=426316 }, -- Engrave Belt - Shadow and Flame
[416017] = { "Гравіювання чоботів - Танець нечестивців", "Вигравіювати на чоботях руну \"Танець нечестивців\":", nil, rune=412798 }, -- Engrave Boots - Dance of the Wicked
[416014] = { "Гравіювання чоботів - Демонічні знання", "Вигравіювати на чоботях руну \"Демонічні знання\":", nil, rune=412732 }, -- Engrave Boots - Demonic Knowledge
[426467] = { "Гравіювання чоботів - Тіньове полум'я", "Вигравіювати на чоботях руну \"Тіньове полум'я\":", nil, rune=426320 }, -- Engrave Boots - Shadowflame
[431758] = { "Гравіювання браслетів - Обпалююча аура", "Вигравіювати на браслетах руну \"Обпалююча аура\":", nil, rune=427726 }, -- Engrave Bracers - Immolation Aura
[431756] = { "Гравіювання браслетів - Виклик вартового скверни", "Вигравіювати на браслетах руну \"Виклик вартового скверни\":", nil, rune=427733 }, -- Engrave Bracers - Summon Felguard
[431747] = { "Гравіювання браслетів - Нестабільна химородь", "Вигравіювати на браслетах руну \"Нестабільна химородь\":", nil, rune=427717 }, -- Engrave Bracers - Unstable Affliction
[416009] = { "Гравіювання нагрудника - Демонічна тактика", "Вигравіювати на нагруднику руну \"Демонічна тактика\":", nil, rune=412727 }, -- Engrave Chest - Demonic Tactics
[403937] = { "Гравіювання нагрудника - Вогняне озеро", "Вигравіювати на нагруднику руну \"Вогняне озеро\":", nil, rune=403666 }, -- Engrave Chest - Lake of Fire
[403932] = { "Гравіювання нагрудника - Майстерність чаклування", "Вигравіювати на нагруднику руну \"Майстерність чаклування\":", nil, rune=403668 }, -- Engrave Chest - Master Channeler
[403920] = { "Гравіювання нагрудника - Витягування душі", "Вигравіювати на нагруднику руну \"Витягування душі\":", nil, rune=403511 }, -- Engrave Chest - Soul Siphon
[403925] = { "Гравіювання рукавиць - Стріла Хаосу", "Вигравіювати на рукавицях руну \"Стріла Хаосу\":", nil, rune=403629 }, -- Engrave Gloves - Chaos Bolt
[403919] = { "Гравіювання рукавиць - Мара", "Вигравіювати на рукавицях руну \"Мара\":", nil, rune=403501 }, -- Engrave Gloves - Haunt
[403938] = { "Гравіювання рукавиць - Метаморфоза", "Вигравіювати на рукавицях руну \"Метаморфоза\":", nil, rune=403789 }, -- Engrave Gloves - Metamorphosis
[403936] = { "Гравіювання рукавиць - Залп тіньових стріл", "Вигравіювати на рукавицях руну \"Залп тіньових стріл\":", nil, rune=403628 }, -- Engrave Gloves - Shadow Bolt Volley
[431745] = { "Гравіювання шолома - Зворотний потік", "Вигравіювати на шоломі руну \"Зворотний потік\":", nil, rune=427713 }, -- Engrave Helm - Backdraft
[431743] = { "Гравіювання шолома - Пандемія", "Вигравіювати на шоломі руну \"Пандемія\":", nil, rune=427712 }, -- Engrave Helm - Pandemic
[426470] = { "Гравіювання шолома - Помста", "Вигравіювати на шоломі руну \"Помста\":", nil, rune=426195 }, -- Engrave Helm - Vengeance
[425477] = { "Гравіювання штанів - Демонічна благодать", "Вигравіювати на штанях руну \"Демонічна благодать\":", nil, rune=425463 }, -- Engrave Pants - Demonic Grace
[425476] = { "Гравіювання штанів - Угода з демоном", "Вигравіювати на штанях руну \"Угода з демоном\":", nil, rune=425464 }, -- Engrave Pants - Demonic Pact
[416008] = { "Гравіювання штанів - Вічна химородь", "Вигравіювати на штанях руну \"Вічна химородь\":", nil, rune=412689 }, -- Engrave Pants - Everlasting Affliction
[416015] = { "Гравіювання штанів - Спалення", "Вигравіювати на штанях руну \"Спалення\":", nil, rune=412758 }, -- Engrave Pants - Incinerate

}

for k, v in pairs(warlock_spells) do addonTable.spell[k] = v end
