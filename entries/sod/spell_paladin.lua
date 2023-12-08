local _, addonTable = ...

local paladin_spells = {

-- [id] = {
--     [ref] = ID (optional),
--     [1] = title (optional),
--     [2] = description (optional),
--     [3] = aura (optional),
-- }

-- Aegis
[425589] = { "Егіда", "Збільшує ваш показник блокування на 30%, а атаки ближнього і дальнього бою, що завдають вам шкоду, мають 10% шанс збільшити ваш шанс блокування на 30%. Триває 10 с або до 5 блоків. Не сумується з ефектом \"Твердині\".", nil }, -- Aegis
[425615] = { "Егіда", "Отримати здібність \"Егіда\":", nil, rune=425589 }, -- Aegis

-- Avenger's Shield
[407669] = { "Щит месника", "Кидає у ворога священний щит, який завдає від {1} до {2} шкоди священністю, викликає запаморочення, а потім летить в інших ворогів, що стоять поруч. Вражає до 3 цілей. Триває 10 с.", "Запаморочення." }, -- Avenger's Shield
[409933] = { "Щит месника", "Отримати здібність \"Щит месника\":", nil, rune=407669 }, -- Avenger's Shield

-- Beacon of Light
[407613] = { "Маяк світла", "Ціль стає Маяком Світла для всіх членів групи чи рейду в радіусі 40 м. Будь-яке зцілення членів групи чи рейду також зцілюватиме Маяк на 100% від ефекту. Лише одна ціль може бути Маяком Світла одночасно. Триває 1 хв.", "Маяк світла." }, -- Beacon of Light
[407615] = { "Маяк світла", "Ціль стає Маяком Світла для всіх цілей в радіусі 40 м. Будь-яке зцілення цих цілей також зцілюватиме Маяк на {1}% від ефекту. Лише одна ціль може бути Маяком Світла одночасно. Триває до відміни.#for {1}% of the amount", nil }, -- Beacon of Light
[409906] = { "Маяк світла", "Отримати здібність \"Маяк світла\":", nil, rune=407613 }, -- Beacon of Light

-- Crusader Strike
[407676] = { "Удар хрестоносця", "Миттєвий удар, що завдає 75% шкоди від зброї та відновлює 2% від вашого максимального запасу мани.", nil }, -- Crusader Strike
[409914] = { "Удар хрестоносця", "Отримати здібність \"Удар хрестоносця\":", nil, rune=407676 }, -- Crusader Strike

-- Divine Sacrifice
[407804] = { "Божественна жертва", "30% всієї шкоди, отриманої членами групи в радіусі 30 м, перенаправляється на паладина протягом 10 с. Шкода, що знижує рівень здоров'я паладина нижче 20%, перериває дію ефекту і дає паладину збільшення шкоди і зцілення на 10% протягом 10 с. Божественна жертва не може бути використана, коли ви перебуваєте під дією \"Благословення захисту\", \"Божественного щита\" або \"Божественного захисту\", а також запобігає використанню цих здібностей на вас протягом дії ефекту.", nil }, -- Divine Sacrifice
[409935] = { "Божественна жертва", "Отримати здібність \"Божественна жертва\":", nil, rune=407804 }, -- Divine Sacrifice

-- Divine Storm
[407778] = { "Божественна буря", "Миттєва атака зброєю, яка завдає 110% шкоди від зброї 4 ворогам в радіусі 8 метрів. Божественна буря зцілює до 3 членів групи або рейду сумарно на 25% від завданої шкоди.", nil }, -- Divine Storm
[407782] = { "Божественна буря", "Шкода від Божественної бурі зцілює дружні цілі.", nil }, -- Divine Storm
[407784] = { "Божественна буря", "Шкода від Божественної бурі зцілює дружні цілі неподалік.", nil }, -- Divine Storm
[409924] = { "Божественна буря", "Отримати здібність \"Божественна буря\":", nil, rune=407778 }, -- Divine Storm

-- Exorcism
[415068] = { "Екзорцизм", "Завдає від {1} до {2} шкоди священністю ворожій цілі і має 100% шанс критичного удару проти демонів і невмерлих.#Causes {1} to {2} Holy", nil }, -- Exorcism
[415069] = { ref=415068 }, -- Exorcism
[415070] = { ref=415068 }, -- Exorcism
[415071] = { ref=415068 }, -- Exorcism
[415072] = { ref=415068 }, -- Exorcism
[415073] = { ref=415068 }, -- Exorcism

-- Exorcist
[415076] = { "Екзорцист", "Екзорцизм тепер можна застосувати на будь-яку ціль зі збільшеним на 100% шансом критичного удару по невмерлих та демонах.", nil }, -- Exorcist
[415756] = { "Екзорцист", "Отримати здібність \"Екзорцист\":", nil, rune=415076 }, -- Exorcist

-- Flash of Light
[412020] = { "Спалах Світла", "Зцілення з часом.", "Зцілення протягом 12 с." }, -- Flash of Light

-- Hand of Reckoning
[407631] = { "Десниця відплати", "Підбурює ціль атакувати вас, але не діє, якщо ціль вже атакує вас.\n\nПоки ви володієте цією здібністю, бонус загрози від \"Праведної люті\" збільшується на 80%, крім того \"Праведна лють\" відновлюватиме вам ману, коли вас зцілюють, в обсязі 25% від ефекту зцілення. Крім того, поки \"Праведна лють\" активна, шкода, яка знижує ваш рівень здоров'я нижче 35%, зменшується на 20%. \"Праведна лють\" залишатиметься активною, доки її не буде скасовано.", "Підбурено." }, -- Hand of Reckoning
[407774] = { "Десниця відплати", nil, nil }, -- Hand of Reckoning
[409911] = { "Десниця відплати", "Отримати здібність \"Десниця відплати\":", nil, rune=407631 }, -- Hand of Reckoning

-- Horn of Lordaeron
[425600] = { "Ріг Лордерона", "Паладин дме в Ріг Лордерона, що збільшує силу і спритність всіх членів групи в радіусі 30 м на {1}. Триває 2 хв. Не сумується з \"Благословенням могутності\".#yards by {1}.", nil }, -- Horn of Lordaeron
[425614] = { "Ріг Лордерона", "Отримати здібність \"Ріг Лордерона\":", nil, rune=425600 }, -- Horn of Lordaeron

-- Inspiration Exemplar
[407880] = { "Взірець натхнення", "Ви періодично розвіюєте ефекти страху та сну з членів групи, що знаходяться поруч.", "Періодично розвіює ефекти страху та сну з членів групи, що знаходяться поруч." }, -- Inspiration Exemplar
[407881] = { "Взірець натхнення", "Ви періодично розвіюєте ефекти страху та сну з членів групи, що знаходяться поруч.", nil }, -- Inspiration Exemplar
[409936] = { "Взірець натхнення", "Отримати здібність \"Взірець натхнення\":", nil, rune=407880 }, -- Inspiration Exemplar

-- Judgement of Martyrdom
[407803] = { "Присуд мученика", nil, nil }, -- Judgement of Martyrdom

-- Libram of Banishment
[429578] = { "Манускрипт вигнання", nil, "Сповнений натхнення." }, -- Libram of Banishment

-- Libram of Blessings
[421510] = { "Манускрипт благословень", nil, "Сповнений натхнення." }, -- Libram of Blessings

-- Libram of Judgement
[409930] = { "Манускрипт присуду", nil, "Сповнений натхнення." }, -- Libram of Judgement

-- Libram of Justice
[421535] = { "Манускрипт правосуддя", nil, "Сповнений натхнення." }, -- Libram of Justice

-- Light's Beacon
[407614] = { "Маяк світла", "Ціль стає Маяком Світла для всіх цілей в радіусі 60 м. Будь-яке зцілення цих цілей також зцілюватиме Маяк на {1}% від ефекту.#for {1}% of the amount", "Цілющі здібності паладина також зцілюють Маяк Світла." }, -- Light's Beacon

-- Rebuke
[425609] = { "Докір", "Перериває вимову закляття та унеможливлює вимову заклять тієї ж школи протягом 2 секунд.", nil }, -- Rebuke
[425616] = { "Докір", "Отримати здібність \"Докір\":", nil, rune=425609 }, -- Rebuke

-- Righteous Fury
[407627] = { "Праведна лють", "Збільшує загрозу від ваших заклять священності на 80% та відновлює вашу ману, коли ви зцілюєтесь від заклинань дружніх цілей, у розмірі 25% від об'єму зцілення. Крім того, шкода, яка знижує ваш рівень здоров'я нижче 35%, зменшується на 20%. Діє до скасування.", nil }, -- Righteous Fury

-- Sacrifice Redeemed
[407805] = { "Спокута жертви", "Шкода та зцілення збільшена після вашої жертви.", "Вихідну шкоду та зцілення збільшено на 10%." }, -- Sacrifice Redeemed

-- Seal of Martyrdom
[407798] = { "Печатка мучеництва", "Наповнює вас священним духом на 30 секунд, в результаті чого кожна ваша атака в ближньому бою завдає 30% шкоди від зброї по цілі, але ви втрачаєте здоров'я в об'ємі 10% від нанесеної шкоди. Поки ця печатка активна, члени вашої групи та рейду в радіусі 40 м відновлюють ману в об'ємі 10% від шкоди, нанесеної цією печаткою.\n\nВивільнення енергії цієї печатки засудить ворога, миттєво завдаючи йому 70% шкоди від зброї ціною здоров'я в об'ємі 10% від завданої шкоди.", "Атаки ближнього бою завдають додаткову шкоду вашій цілі, а також завдають шкоду вам і відновлюють ману членам вашої групи та рейду." }, -- Seal of Martyrdom
[407799] = { "Печатка мучеництва", nil, nil }, -- Seal of Martyrdom
[407800] = { "Печатка мучеництва", "Печатка мучеництва також завдає шкоду паладину.", nil }, -- Seal of Martyrdom
[409925] = { "Печатка мучеництва", "Отримати здібність \"Печатка мучеництва\":", nil, rune=407798 }, -- Seal of Martyrdom


-- Engraving
[425619] = { "Гравіювання нагрудника - Егіда", "Вигравіювати на нагруднику руну \"Егіда\":", nil, rune=425589 }, -- Engrave Chest - Aegis
[410014] = { "Гравіювання нагрудника - Божественна буря", "Вигравіювати на нагруднику руну \"Божественна буря\":", nil, rune=407778 }, -- Engrave Chest - Divine Storm
[425618] = { "Гравіювання нагрудника - Ріг Лордерона", "Вигравіювати на нагруднику руну \"Ріг Лордерона\":", nil, rune=425600 }, -- Engrave Chest - Horn of Lordaeron
[410015] = { "Гравіювання нагрудника - Печатка мучеництва", "Вигравіювати на нагруднику руну \"Печатка мучеництва\":", nil, rune=407798 }, -- Engrave Chest - Seal of Martyrdom
[409999] = { "Гравіювання рукавиць - Маяк світла", "Вигравіювати на рукавицях руну \"Маяк світла\":", nil, rune=407613 }, -- Engrave Gloves - Beacon of Light
[410002] = { "Гравіювання рукавиць - Удар хрестоносця", "Вигравіювати на рукавицях руну \"Удар хрестоносця\":", nil, rune=407676 }, -- Engrave Gloves - Crusader Strike
[410001] = { "Гравіювання рукавиць - Десниця відплати", "Вигравіювати на рукавицях руну \"Десниця відплати\":", nil, rune=407631 }, -- Engrave Gloves - Hand of Reckoning
[410008] = { "Гравіювання штанів - Щит месника", "Вигравіювати на штанях руну \"Щит месника\":", nil, rune=407669 }, -- Engrave Pants - Avenger's Shield
[410010] = { "Гравіювання штанів - Божественна жертва", "Вигравіювати на штанях руну \"Божественна жертва\":", nil, rune=407804 }, -- Engrave Pants - Divine Sacrifice
[416037] = { "Гравіювання штанів - Екзорцист", "Вигравіювати на штанях руну \"Екзорцист\":", nil, rune=415076 }, -- Engrave Pants - Exorcist
[410011] = { "Гравіювання штанів - Взірець натхнення", "Вигравіювати на штанях руну \"Взірець натхнення\":", nil, rune=407880 }, -- Engrave Pants - Inspiration Exemplar
[425621] = { "Гравіювання штанів - Докір", "Вигравіювати на штанях руну \"Докір\":", nil, rune=425609 }, -- Engrave Pants - Rebuke

}

for k, v in pairs(paladin_spells) do addonTable.spell[k] = v end
