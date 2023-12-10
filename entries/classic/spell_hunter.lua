local _, addonTable = ...

local hunter_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Aimed Shot
[19434] = { "Прицільний постріл", "Прицільний постріл зі збільшеним пошкодженням дальнього бою на {1}.#by {1}" }, -- Aimed Shot (Rank 1)
[20900] = { ref=19434 }, -- Aimed Shot (Rank 2)
[20901] = { ref=19434 }, -- Aimed Shot (Rank 3)
[20902] = { ref=19434 }, -- Aimed Shot (Rank 4)
[20903] = { ref=19434 }, -- Aimed Shot (Rank 5)
[20904] = { ref=19434 }, -- Aimed Shot (Rank 6)

-- Arcane Shot
[3044] = { "Арканічний постріл", "Миттєвий постріл, завдає {1} пошкодження арканою.#causes {1}" }, -- Arcane Shot (Rank 1)
[14281] = { ref=3044 }, -- Arcane Shot (Rank 2)
[14282] = { ref=3044 }, -- Arcane Shot (Rank 3)
[14283] = { ref=3044 }, -- Arcane Shot (Rank 4)
[14284] = { ref=3044 }, -- Arcane Shot (Rank 5)
[14285] = { ref=3044 }, -- Arcane Shot (Rank 6)
[14286] = { ref=3044 }, -- Arcane Shot (Rank 7)
[14287] = { ref=3044 }, -- Arcane Shot (Rank 8)

-- Aspect of the Beast
[13161] = { "Аспект звіра", "Мисливець переймає аспекти звіра та його стає неможливо відстежити. Одночасно може бути активним лише один аспект." }, -- Aspect of the Beast

-- Aspect of the Cheetah
[5118] = { "Аспект гепарда", "Мисливець переймає аспекти гепарда, збільшуючи швидкість руху на {1}%. При отриманні пошкодження у мисливця буде запаморочення на {2} с. Одночасно може бути активним лише один аспект.#speed by {1}#for {2} sec", "{1}% збільшення швидкості руху. Запаморочення при отриманні удару.#{1}% increased" }, -- Aspect of the Cheetah
[15571] = { "Запаморочений", nil, "Запаморочений." }, -- Dazed (aura)

-- Aspect of the Hawk
[13165] = { "Аспект яструба", "Мисливець переймає аспекти яструба, збільшуючи силу атаки дальнього бою на {1}. Одночасно може бути активним лише один аспект.#by {1}", "Збільшує силу атаки дальнього бою на {1}.#by {1}" }, -- Aspect of the Hawk (Rank 1)
[14318] = { ref=13165 }, -- Aspect of the Hawk (Rank 2)
[14319] = { ref=13165 }, -- Aspect of the Hawk (Rank 3)
[14320] = { ref=13165 }, -- Aspect of the Hawk (Rank 4)
[14321] = { ref=13165 }, -- Aspect of the Hawk (Rank 5)
[14322] = { ref=13165 }, -- Aspect of the Hawk (Rank 6)
[25296] = { ref=13165 }, -- Aspect of the Hawk (Rank 7)

-- Aspect of the Monkey
[13163] = { "Аспект мавпи", "Мисливець переймає аспекти мавпи, збільшуючи ймовірність ухилитися на {1}%. Одночасно може бути активним лише один аспект.#by {1}", "Збільшує ймовірність ухилитися на {1}%.#by {1}" }, -- Aspect of the Monkey

-- Aspect of the Pack
[13159] = { "Аспект зграї", "Мисливець і учасники групи в межах {1} м переймають аспекти зграї гепардів, збільшуючи швидкість руху на {2}%. При отриманні пошкодження, в учасника зграї буде запаморочення на {3} с. Одночасно може бути активним лише один аспект.#within {1} y#speed by {2}#for {3} sec", "{1}% збільшення швидкості руху. Запаморочення при отриманні пошкодження.#{1}% increased" }, -- Aspect of the Pack

-- Aspect of the Wild
[20043] = { "Аспект первісної природи", "Мисливець і учасники групи в межах {1} м переймають аспект первісної природи, збільшуючи супротив природі на {2}. Одночасно може бути активним лише один аспект.#within {1} y#resistance by {2}", "Супротив природі збільшено на {1}.#by {1}" }, -- Aspect of the Wild (Rank 1)
[20190] = { ref=20043 }, -- Aspect of the Wild (Rank 2)

-- Auto Shot
[75] = { "Автоматична стрільба", "Автоматична стрільба по цілі, що діє до скасування.", "Стрільба по цілі." }, -- Auto Shot

-- Barrage
[19461] = { "Загороджувальний вогонь", "Збільшує пошкодження ваших здібностей \"Багатозарядний постріл\" та \"Град\" на {1}%.#by {1}" }, -- Barrage (Rank 1)
[19462] = { ref=19461 }, -- Barrage (Rank 2)
[24691] = { ref=19461 }, -- Barrage (Rank 3)

-- Beast Lore
[1462] = { "Знання звіра", "Збирає інформацію про вибраного звіра. Підказка відобразить пошкодження, здоров'я, броню, спеціальні супротиви та дієту.", "Знання виявлено." }, -- Beast Lore

-- Beast Training
[5149] = { "Дресирування звіра", "Дозволяє мисливцю дресирувати свого вихованця різноманітним здібностям, які він вивчив." }, -- Beast Training

-- Bestial Discipline
[19590] = { "Звіряча дисципліна", "Прискорює відновлення фокусу ваших вихованців на {1}%.#by {1}" }, -- Bestial Discipline (Rank 1)
[19592] = { ref=19590 }, -- Bestial Discipline (Rank 2)

-- Bestial Swiftness
[19596] = { "Звіряча стрімкість", "Перебуваючи просто неба, швидкість руху ваших вихованців збільшена на {1}%.#by {1}" }, -- Bestial Swiftness

-- Bestial Wrath
[19574] = { "Звіряча лють", "Роздратовує вашого вихованця, що збільшує завдане ним пошкодження на {1}% на {2} с. Розлючений звір не відчуває ні жалю, ні страху, і зупинити його може лише смерть.#causing {1}#for {2} sec", "Розлючений." }, -- Bestial Wrath (Rank 1)

-- Call Pet
[883] = { "Виклик вихованця", "Викликає вашого вихованця." }, -- Call Pet

-- Clever Traps
[19239] = { "Розумні пастки", "Збільшує тривалість ефектів \"Заморожувальної пастки\" та \"Крижаної пастки\" на {1}%, також пошкодження від \"Обпалюючої пастки\" та \"Вибухової пастки\" на {2}%.#Frost trap effects by {1}#Explosive trap effects by {2}" }, -- Clever Traps (Rank 1)
[19245] = { ref=19239 }, -- Clever Traps (Rank 2)

-- Concussive Shot
[5116] = { "Шоковий постріл", "Запаморочує ціль, сповільнює рух на {1}% на {2} с.#by {1}% for {2} sec", "Рух сповільнено на {1}%.#by {1}" }, -- Concussive Shot

-- Counterattack
[19306] = { "Контратака", "Удар, який можливо провести лише після парирування атаки опонента. Ця атака завдає {1} пошкодження та знерухомлює ціль на {2} с. \"Контратаку\" неможливо блокувати, парирувати чи ухилитися від неї.#deals {1}#for {2} sec", "Нерухомий." }, -- Counterattack (Rank 1)
[20909] = { ref=19306 }, -- Counterattack (Rank 2)
[20910] = { ref=19306 }, -- Counterattack (Rank 3)

-- Deflection
[19295] = { "Відбиття", "Збільшує вашу ймовірність парирувати на {1}%.#chance by {1}" }, -- Deflection (Rank 1)
[19297] = { ref=19295 }, -- Deflection (Rank 2)
[19298] = { ref=19295 }, -- Deflection (Rank 3)
[19301] = { ref=19295 }, -- Deflection (Rank 4)
[19300] = { ref=19295 }, -- Deflection (Rank 5)

-- Deterrence
[19263] = { "Стримування", "При активації, збільшує вашу ймовірність ухилитися та парирувати на {1}% на {2} с.#by {1}% for {2} sec", "Імовірність ухилитися та парирувати збільшено на {1}%.#by {1}" }, -- Deterrence

-- Disengage
[781] =   { "Відступ", "Провести спробу відступити від цілі, зменшуючи створювану загрозу. Персонаж виходить з бойового режиму." }, -- Disengage (Rank 1)
[14272] = { "Відступ", "Провести спробу відступити від цілі, зменшуючи створювану загрозу. Дієвіше за \"Відступ\" (Ранг {1}). Персонаж виходить з бойового режиму.#(Rank {1})" }, -- Disengage (Rank 2)
[14273] = { ref=14272 }, -- Disengage (Rank 3)

-- Dismiss Pet
[2641] = { "Відклик вихованця", "Відкликає вашого вихованця та зменшує його щасливість на {1}.#by {1}" }, -- Dismiss Pet

-- Distracting Shot
[20736] = { "Відволікаючий постріл", "Відволікає ціль, спричиняє загрозу." }, -- Distracting Shot (Rank 1)
[14274] = { "Відволікаючий постріл", "Відволікає ціль, спричиняє загрозу. Дієвіше за \"Відволікаючий постріл\" (Ранг {1}).#(Rank {1})" }, -- Distracting Shot (Rank 2)
[15629] = { ref=14274 }, -- Distracting Shot (Rank 3)
[15630] = { ref=14274 }, -- Distracting Shot (Rank 4)
[15631] = { ref=14274 }, -- Distracting Shot (Rank 5)
[15632] = { ref=14274 }, -- Distracting Shot (Rank 6)

-- Eagle Eye
[6197] = { "Орлине око", "Загострює зір мисливця. Можна використовувати лише просто неба. Триває {1} хв.#Lasts {1} min" }, -- Eagle Eye

-- Efficiency
[19416] = { "Ефективність", "Зменшує витрати мани на ваші постріли й жала на {1}%.#by {1}" }, -- Efficiency (Rank 1)
[19417] = { ref=19416 }, -- Efficiency (Rank 2)
[19418] = { ref=19416 }, -- Efficiency (Rank 3)
[19419] = { ref=19416 }, -- Efficiency (Rank 4)
[19420] = { ref=19416 }, -- Efficiency (Rank 5)

-- Endurance Training
[19583] = { "Тренування витримки", "Збільшує здоров'я ваших вихованців на {1}%.#by {1}" }, -- Endurance Training (Rank 1)
[19584] = { ref=19583 }, -- Endurance Training (Rank 2)
[19585] = { ref=19583 }, -- Endurance Training (Rank 3)
[19586] = { ref=19583 }, -- Endurance Training (Rank 4)
[19587] = { ref=19583 }, -- Endurance Training (Rank 5)

-- Entrapment
[19184] = { "Западня", "Надає вашим здібностям \"Обпалююча пастка\", \"Крижана пастка\" та \"Вибухова пастка\" {1}% імовірності вхопити ціль, унеможливлюючи її рух впродовж {2} с.#{1}% chance#for {2} sec" }, -- Entrapment (Rank 1)
[19387] = { ref=19184 }, -- Entrapment (Rank 2)
[19388] = { ref=19184 }, -- Entrapment (Rank 3)
[19389] = { ref=19184 }, -- Entrapment (Rank 4)
[19390] = { ref=19184 }, -- Entrapment (Rank 5)
[19185] = { "Западня", nil, "Нерухомий." }, -- Entrapment (aura)

-- Explosive Trap
[13813] = { "Вибухова пастка", "Встановити вогняну пастку, яка вибухне при наближенні ворога, завдаючи від {1} до {2} пошкодження вогнем і додатково {3} пошкодження вогнем протягом {4} с усім у радіусі {5} м. Пастка існуватиме {6} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#causing {1} to {2}#{3} additional Fire damage over {4} sec#within {5} y#exist for {6} min" }, -- Explosive Trap (Rank 1)
[14316] = { ref=13813 }, -- Explosive Trap (Rank 2)
[14317] = { ref=13813 }, -- Explosive Trap (Rank 3)
[13812] = { "Ефект вибухової пастки", nil, "{1} пошкодження вогнем кожні {2} c.#{1} Fire damage every {2} sec" }, -- Explosive Trap Effect (aura)
[14314] = { ref=13812 }, -- Explosive Trap Effect (aura)
[14315] = { ref=13812 }, -- Explosive Trap Effect (aura)

-- Eyes of the Beast
[1002] = { "Очі звіра", "Узяти безпосередній контроль над вашим вихованцем і бачити його очима впродовж {1} хв.#for {1} min", "Безпосередній контроль вихованця." }, -- Eyes of the Beast

-- Feed Pet
[6991] = { "Годування вихованця", "Нагодувати вашого вихованця вибраним предметом. Годівля вихованця збільшує його щасливість. Використання їжі рівня близького до рівня вихованця дасть кращий результат." }, -- Feed Pet
[1539] = { "Ефект годування вихованця", nil, "Збільшує щасливість." }, -- Feed Pet Effect (aura)

-- Feign Death
[5384] = { "Удавання мертвого", "Прикинутися мертвим, що може ввести в оману ворогів та змусити їх вас ігнорувати. Триває {1} хв.#Lasts up to {1} min", "Удає мертвого." }, -- Feign Death

-- Ferocity
[19598] = { "Лютість", "Збільшує ймовірність критичного удару ваших вихованців на {1}%.#by {1}" }, -- Ferocity (Rank 1)
[19599] = { ref=19598 }, -- Ferocity (Rank 2)
[19600] = { ref=19598 }, -- Ferocity (Rank 3)
[19601] = { ref=19598 }, -- Ferocity (Rank 4)
[19602] = { ref=19598 }, -- Ferocity (Rank 5)

-- Flare
[1543] = { "Спалах", "Викриває всіх прихованих та невидимих ворогів в межах {1} м від вибраного місця протягом {2} с.#within {1} y#for {2} sec", "Виявлення прихованих та невидимих істот." }, -- Flare

-- Freezing Trap
[1499] = { "Заморожувальна пастка", "Встановити крижану пастку, яка заморозить першого ворога при наближенні та унеможливить всі його дії впродовж {1} с. Будь-яке пошкодження розіб'є лід. Пастка існуватиме {2} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#action for up to {1} sec#exist for {2} min" }, -- Freezing Trap (Rank 1)
[14310] = { ref=1499 }, -- Freezing Trap (Rank 2)
[14311] = { ref=1499 }, -- Freezing Trap (Rank 3)
[3355] = { "Ефект заморожувальної пастки", nil, "Заморожений." }, -- Freezing Trap Effect (aura)
[14308] = { ref=3355 }, -- Freezing Trap Effect (aura)
[14309] = { ref=3355 }, -- Freezing Trap Effect (aura)

-- Frenzy
[19621] = { "Оскаженіння", "Надає вашому вихованцю {1}% імовірності прискорити свою швидкість атаки на {2}% на {3} с після нанесення критичного удару.#{1}% chance#{2}% attack speed#for {3} sec" }, -- Frenzy (Rank 1)
[19622] = { ref=19621 }, -- Frenzy (Rank 2)
[19623] = { ref=19621 }, -- Frenzy (Rank 3)
[19624] = { ref=19621 }, -- Frenzy (Rank 4)
[19625] = { ref=19621 }, -- Frenzy (Rank 5)

-- Frost Trap
[13809] = { "Крижана пастка", "Встановити крижану пастку, яка вкриває льодом місцевість навколо на {1} с при наближенні першого ворога. Всі вороги в радіусі {2} м будуть сповільнені на {3}% допоки перебувають в зоні ефекту. Пастка існуватиме {4} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#around itself for {1} sec#within {2} y#slowed by {3}#exist for {4} min" }, -- Frost Trap
[13810] = { "Аура крижаної пастки", nil, "Швидкість руху сповільнено на {1}%.#by {1}" }, -- Frost Trap Aura (aura)

-- Hawk Eye
[19498] = { "Яструбине око", "Збільшує дальність вашої зброї дальнього бою на {1} м.#by {1}" }, -- Hawk Eye (Rank 1)
[19499] = { ref=19498 }, -- Hawk Eye (Rank 2)
[19500] = { ref=19498 }, -- Hawk Eye (Rank 3)

-- Humanoid Slaying
[19151] = { "Знищення гуманоїдів", "Збільшує все пошкодження проти гуманоїдів на {1}% та критичне пошкодження проти гуманоїдів на додаткові {2}%.#targets by {1}#additional {2}" }, -- Humanoid Slaying (Rank 1)
[19152] = { ref=19151 }, -- Humanoid Slaying (Rank 2)
[19153] = { ref=19151 }, -- Humanoid Slaying (Rank 3)

-- Hunter's Mark
[1130] = { "Мітка мисливця", "Відмічає ціль, збільшує силу атаки дальнього бою всіх нападників проти відміченої цілі на {1}. На додаток, мисливець завжди бачить відмічену ціль, навіть якщо та стає непомітною або невидимою. Також, ціль відображається на мінікарті. Триває {2} хв.#by {1}#Lasts for {2} min", "Всі нападники отримують {1} сили атаки дальнього бою проти цієї цілі.#gain {1}" }, -- Hunter's Mark (Rank 1)
[14323] = { ref=1130 }, -- Hunter's Mark (Rank 2)
[14324] = { ref=1130 }, -- Hunter's Mark (Rank 3)
[14325] = { ref=1130 }, -- Hunter's Mark (Rank 4)

-- Immolation Trap
[13795] = { "Обпалююча пастка", "Встановити вогняну пастку, яка підпалить першого ворога при наближенні й завдасть {1} пошкодження вогнем протягом {2} с. Пастка існуватиме {3} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#for {1} Fire damage over {2} sec#exist for {3} min" }, -- Immolation Trap (Rank 1)
[14302] = { ref=13795 }, -- Immolation Trap (Rank 2)
[14303] = { ref=13795 }, -- Immolation Trap (Rank 3)
[14304] = { ref=13795 }, -- Immolation Trap (Rank 4)
[14305] = { ref=13795 }, -- Immolation Trap (Rank 5)
[13797] = { "Ефект обпалюючої пастки", nil, "{1} пошкодження вогнем кожні {2} c.#{1} Fire damage every {2} sec" }, -- Immolation Trap Effect (aura)
[14298] = { ref=13797 }, -- Immolation Trap Effect (aura)
[14299] = { ref=13797 }, -- Immolation Trap Effect (aura)
[14300] = { ref=13797 }, -- Immolation Trap Effect (aura)
[14301] = { ref=13797 }, -- Immolation Trap Effect (aura)

-- Improved Arcane Shot
[19454] = { "Покращений арканічний постріл", "Зменшує час поновлення вашого \"Арканічного пострілу\" на {1} с.#by {1}" }, -- Improved Arcane Shot (Rank 1)
[19455] = { ref=19454 }, -- Improved Arcane Shot (Rank 2)
[19456] = { ref=19454 }, -- Improved Arcane Shot (Rank 3)
[19457] = { ref=19454 }, -- Improved Arcane Shot (Rank 4)
[19458] = { ref=19454 }, -- Improved Arcane Shot (Rank 5)

-- Improved Aspect of the Hawk
[19552] = { "Покращений аспект яструба", "Допоки \"Аспект яструба\" активний, всі звичайні атаки дальнього бою мають імовірність {1}% збільшити швидкість атаки дального бою на {2}% на {3} с.#{1}% chance#by {2}% for {3} sec" }, -- Improved Aspect of the Hawk (Rank 1)
[19553] = { ref=19552 }, -- Improved Aspect of the Hawk (Rank 2)
[19554] = { ref=19552 }, -- Improved Aspect of the Hawk (Rank 3)
[19555] = { ref=19552 }, -- Improved Aspect of the Hawk (Rank 4)
[19556] = { ref=19552 }, -- Improved Aspect of the Hawk (Rank 5)
[6150] = { "Швидкі постріли", nil, "Швидкість атаки дальнього бою збільшено на {1}%.#by {1}" }, -- Quick Shots (aura)

-- Improved Aspect of the Monkey
[19549] = { "Покращений аспект мавпи", "Збільшує бонус імовірності ухилитися вашого \"Аспекту мавпи\" на {1}%.#by {1}" }, -- Improved Aspect of the Monkey (Rank 1)
[19550] = { ref=19549 }, -- Improved Aspect of the Monkey (Rank 2)
[19551] = { ref=19549 }, -- Improved Aspect of the Monkey (Rank 3)
[24386] = { ref=19549 }, -- Improved Aspect of the Monkey (Rank 4)
[24387] = { ref=19549 }, -- Improved Aspect of the Monkey (Rank 5)

-- Improved Concussive Shot
[19407] = { "Покращений шоковий постріл", "Надає вашому \"Шоковому пострілу\" {1}% імовірності приголомшити ціль на {2} с.#{1}% chance#for {2} sec" }, -- Improved Concussive Shot (Rank 1)
[19412] = { ref=19407 }, -- Improved Concussive Shot (Rank 2)
[19413] = { ref=19407 }, -- Improved Concussive Shot (Rank 3)
[19414] = { ref=19407 }, -- Improved Concussive Shot (Rank 4)
[19415] = { ref=19407 }, -- Improved Concussive Shot (Rank 5)
[19410] = { "Покращений шоковий постріл", nil, "Приголомшений." }, -- Improved Concussive Shot (aura)

-- Improved Eyes of the Beast
[19557] = { "Покращені очі звіра", "Збільшує тривалість дії вашої здібності \"Очі звіра\" на {1} с.#by {1}" }, -- Improved Eyes of the Beast (Rank 1)
[19558] = { ref=19557 }, -- Improved Eyes of the Beast (Rank 2)

-- Improved Feign Death
[19286] = { "Покращене вдавання мертвого", "Зменшує ймовірність протидіяти вашій здібності \"Удавання мертвого\" на {1}%.#by {1}" }, -- Improved Feign Death (Rank 1)
[19287] = { ref=19286 }, -- Improved Feign Death (Rank 2)

-- Improved Hunter's Mark
[19421] = { "Покращена мітка мисливця", "Збільшує бонус сили атаки дальнього бою вашої \"Мітки мисливця\" на {1}%.#by {1}" }, -- Improved Hunter's Mark (Rank 1)
[19422] = { ref=19421 }, -- Improved Hunter's Mark (Rank 2)
[19423] = { ref=19421 }, -- Improved Hunter's Mark (Rank 3)
[19424] = { ref=19421 }, -- Improved Hunter's Mark (Rank 4)
[19425] = { ref=19421 }, -- Improved Hunter's Mark (Rank 5)

-- Improved Mend Pet
[19572] = { "Покращене зцілення вихованця", "Надає вашій здібності \"Зцілення вихованця\" {1}% імовірності очистити {2} ефект прокляття, хвороби, магії або отрути на кожному такті.#{1}% chance#cleansing {2}" }, -- Improved Mend Pet (Rank 1)
[19573] = { ref=19572 }, -- Improved Mend Pet (Rank 2)

-- Improved Revive Pet
[24443] = { "Покращене оживлення вихованця", "Зменшує час вимови \"Оживлення вихованця\" на {1} с та витрати мани на {2}%. Також, збільшує об'єм здоров'я, з яким вихованець повертається до життя, на додаткові {3}%.#time is reduced by {1}#cost is reduced by {2}#additional {3}" }, -- Improved Revive Pet (Rank 1)
[19575] = { ref=24443 }, -- Improved Revive Pet (Rank 2)

-- Improved Scorpid Sting
[19491] = { "Покращене жало скорпіда", "Зменшує витривалість цілей під дією вашого \"Жала скорпіда\" на {1}% від об'єму зменшеної сили.#by {1}" }, -- Improved Scorpid Sting (Rank 1)
[19493] = { ref=19491 }, -- Improved Scorpid Sting (Rank 2)
[19494] = { ref=19491 }, -- Improved Scorpid Sting (Rank 3)

-- Improved Serpent Sting
[19464] = { "Покращене жало змії", "Збільшує пошкодження вашої здібності \"Жало змії\" на {1}%.#by {1}" }, -- Improved Serpent Sting (Rank 1)
[19465] = { ref=19464 }, -- Improved Serpent Sting (Rank 2)
[19466] = { ref=19464 }, -- Improved Serpent Sting (Rank 3)
[19467] = { ref=19464 }, -- Improved Serpent Sting (Rank 4)
[19468] = { ref=19464 }, -- Improved Serpent Sting (Rank 5)

-- Improved Wing Clip
[19228] = { "Покращене підрізання крил", "Надає вашій здібності \"Підрізати крила\" {1}% імовірності знерухомити ціль на {2} с.#{1}% chance#for {2} sec" }, -- Improved Wing Clip (Rank 1)
[19232] = { ref=19228 }, -- Improved Wing Clip (Rank 2)
[19233] = { ref=19228 }, -- Improved Wing Clip (Rank 3)
[19234] = { ref=19228 }, -- Improved Wing Clip (Rank 4)
[19235] = { ref=19228 }, -- Improved Wing Clip (Rank 5)
[19229] = { "Покращене підрізання крил", nil, "Знерухомлений." }, -- Improved Wing Clip (aura)

-- Intimidation
[19577] = { "Залякування", "Наказати вашому вихованцю залякати ціль із наступною успішною атакою ближнього бою, спричиняючи високий рівень загрози та приголомшуючи ціль на {1} с.#for {1} sec", "Лячний." }, -- Intimidation
[24394] = { "Залякування", nil, "Приголомшений." }, -- Intimidation (aura)

-- Killer Instinct
[19370] = { "Інстинкт вбивці", "Збільшує ймовірність завдати критичного удару всіма видами атак на {1}%.#by {1}" }, -- Killer Instinct (Rank 1)
[19371] = { ref=19370 }, -- Killer Instinct (Rank 2)
[19373] = { ref=19370 }, -- Killer Instinct (Rank 3)

-- Lethal Shots
[19426] = { "Летальні постріли", "Збільшує ймовірність критичних атак зі зброєю дальнього бою на {1}%.#by {1}" }, -- Lethal Shots (Rank 1)
[19427] = { ref=19426 }, -- Lethal Shots (Rank 2)
[19429] = { ref=19426 }, -- Lethal Shots (Rank 3)
[19430] = { ref=19426 }, -- Lethal Shots (Rank 4)
[19431] = { ref=19426 }, -- Lethal Shots (Rank 5)

-- Lightning Reflexes
[19168] = { "Блискавичні рефлекси", "Збільшує вашу спритність на {1}%.#by {1}" }, -- Lightning Reflexes (Rank 1)
[19180] = { ref=19168 }, -- Lightning Reflexes (Rank 2)
[19181] = { ref=19168 }, -- Lightning Reflexes (Rank 3)
[24296] = { ref=19168 }, -- Lightning Reflexes (Rank 4)
[24297] = { ref=19168 }, -- Lightning Reflexes (Rank 5)

-- Mend Pet
[136] = { "Зцілення вихованця", "Відновлює {1} здоров'я щосекунди вашому вихованцю допоки ви зосереджуєтеся. Триває {2} с.#{1} health#Lasts {2} sec", "Відновлює {1} здоров'я щосекунди.#Heals {1}" }, -- Mend Pet (Rank 1)
[3111] = { ref=136 }, -- Mend Pet (Rank 2)
[3661] = { ref=136 }, -- Mend Pet (Rank 3)
[3662] = { ref=136 }, -- Mend Pet (Rank 4)
[13542] = { ref=136 }, -- Mend Pet (Rank 5)
[13543] = { ref=136 }, -- Mend Pet (Rank 6)
[13544] = { ref=136 }, -- Mend Pet (Rank 7)

-- Mongoose Bite
[1495] = { "Укус мангусти", "Контратакує ворога, завдає {1} пошкодження. Можна виконати лише після того, як ви ухилилися.#for {1} damage" }, -- Mongoose Bite (Rank 1)
[14269] = { ref=1495 }, -- Mongoose Bite (Rank 2)
[14270] = { ref=1495 }, -- Mongoose Bite (Rank 3)
[14271] = { ref=1495 }, -- Mongoose Bite (Rank 4)

-- Monster Slaying
[24293] = { "Знищення монстрів", "Збільшує все пошкодження проти звірів, велетнів та драконів на {1}% та критичне пошкодження проти звірів, велетнів та драконів на додаткові {2}%.#targets by {1}#additional {2}" }, -- Monster Slaying (Rank 1)
[24294] = { ref=19151 }, -- Monster Slaying (Rank 2)
[24295] = { ref=19151 }, -- Monster Slaying (Rank 3)

-- Mortal Shots
[19485] = { "Смертельні постріли", "Збільшує пошкодження критичних атак вашою зброєю дальнього бою на {1}%.#by {1}" }, -- Mortal Shots (Rank 1)
[19487] = { ref=19485 }, -- Mortal Shots (Rank 2)
[19488] = { ref=19485 }, -- Mortal Shots (Rank 3)
[19489] = { ref=19485 }, -- Mortal Shots (Rank 4)
[19490] = { ref=19485 }, -- Mortal Shots (Rank 5)

-- Multi-Shot
[2643] = { "Багатозарядний постріл", "Вистрілює декілька набоїв, вражаючи {1} цілі.#{1} targets" }, -- Multi-Shot (Rank 1)
[14288] = { "Багатозарядний постріл", "Вистрілює декілька набоїв, вражаючи {1} цілі та завдаючи додатково {2} пошкодження.#{1} targets#{2} damage" }, -- Multi-Shot (Rank 2)
[14289] = { ref=14288 }, -- Multi-Shot (Rank 3)
[14290] = { ref=14288 }, -- Multi-Shot (Rank 4)
[25294] = { ref=14288 }, -- Multi-Shot (Rank 5)

-- Pathfinding
[19559] = { "Орієнтування на місцевості", "Збільшує бонус швидкості руху ваших \"Аспекту гепарда\" та \"Аспекту зграї\" на {1}%.#by {1}" }, -- Pathfinding (Rank 1)
[19560] = { ref=19559 }, -- Pathfinding (Rank 2)

-- Ranged Weapon Specialization
[19507] = { "Спеціалізація на зброї дальнього бою", "Збільшує пошкодження, заподіяне зброєю дальнього бою на {1}%.#by {1}" }, -- Ranged Weapon Specialization (Rank 1)
[19508] = { ref=19507 }, -- Ranged Weapon Specialization (Rank 2)
[19509] = { ref=19507 }, -- Ranged Weapon Specialization (Rank 3)
[19510] = { ref=19507 }, -- Ranged Weapon Specialization (Rank 4)
[19511] = { ref=19507 }, -- Ranged Weapon Specialization (Rank 5)

-- Rapid Fire
[3045] = { "Швидка стрілянина", "Збільшує швидкість атаки дальнього бою на {1}% на {2} с.#by {1}% for {2} sec", "Збільшує швидкість атаки дальнього бою на {1}%.#by {1}" }, -- Rapid Fire

-- Raptor Strike
[2973] = { "Удар раптора", "Потужна атака зі збільшеним пошкодженням ближнього бою на {1}.#by {1}" }, -- Raptor Strike (Rank 1)
[14260] = { ref=2973 }, -- Raptor Strike (Rank 2)
[14261] = { ref=2973 }, -- Raptor Strike (Rank 3)
[14262] = { ref=2973 }, -- Raptor Strike (Rank 4)
[14263] = { ref=2973 }, -- Raptor Strike (Rank 5)
[14264] = { ref=2973 }, -- Raptor Strike (Rank 6)
[14265] = { ref=2973 }, -- Raptor Strike (Rank 7)
[14266] = { ref=2973 }, -- Raptor Strike (Rank 8)

-- Readiness
[23989] = { "Готовність", "При активації, миттєво завершує поновлення ваших здібностей \"Стримування\", \"Удавання мертвого\" та пасток." }, -- Readiness

-- Revive Pet
[982] = { "Оживлення вихованця", "Оживляє вашого вихованця, повертає до життя з {1}% здоров'я.#with {1}" }, -- Revive Pet

-- Savage Strikes
[19159] = { "Жорстокі удари", "Збільшує ймовірність критичної атаки \"Удару раптора\" та \"Укусу мангусти\" на {1}%.#by {1}" }, -- Savage Strikes (Rank 1)
[19160] = { ref=19159 }, -- Savage Strikes (Rank 2)

-- Scare Beast
[1513] = { "Відлякування звіра", "Відлякує звіра, змушуючи його тікати з переляку протягом {1} с. Завдане пошкодження може перервати ефект. Одночасно лише один звір може бути наляканим.#for up to {1} sec", "Наляканий." }, -- Scare Beast (Rank 1)
[14326] = { ref=1513 }, -- Scare Beast (Rank 2)
[14327] = { ref=1513 }, -- Scare Beast (Rank 3)

-- Scatter Shot
[19503] = { "Розсіяний постріл", "Постріл з короткої дистанції, завдає {1}% пошкодження зброєю та дезорієнтує ціль на {2} с. Будь-яке пошкодження скасує ефект. Припиняє вашу атаку при використанні.#deals {1}#for {2} sec", "Дезорієнтований." }, -- Scatter Shot

-- Scorpid Sting
[3043] = { "Жало скорпіда", "Уколює ціль, зменшує силу та спритність на {1} на {2} с. Лише один ефект жала від кожного мисливця може бути активним на одній цілі.#by {1} for {2} sec", "Силу та спритність зменшено на {1}.#by {1}" }, -- Scorpid Sting (Rank 1)
[14275] = { ref=3043 }, -- Scorpid Sting (Rank 2)
[14276] = { ref=3043 }, -- Scorpid Sting (Rank 3)
[14277] = { ref=3043 }, -- Scorpid Sting (Rank 4)

-- Serpent Sting
[1978] = { "Жало змії", "Уколює ціль, завдає {1} пошкодження природою протягом {2} с. Лише один ефект жала від кожного мисливця може бути активним на одній цілі.#{1} Nature damage over {2} sec", "Завдає {1} пошкодження природою кожні {2} с.#{1} Nature damage every {2} sec" }, -- Serpent Sting (Rank 1)
[13549] = { ref=1978 }, -- Serpent Sting (Rank 2)
[13550] = { ref=1978 }, -- Serpent Sting (Rank 3)
[13551] = { ref=1978 }, -- Serpent Sting (Rank 4)
[13552] = { ref=1978 }, -- Serpent Sting (Rank 5)
[13553] = { ref=1978 }, -- Serpent Sting (Rank 6)
[13554] = { ref=1978 }, -- Serpent Sting (Rank 7)
[13555] = { ref=1978 }, -- Serpent Sting (Rank 8)
[25295] = { ref=1978 }, -- Serpent Sting (Rank 9)

-- Spirit Bond
[19578] = { "Духовний зв'язок", "Поки ваш вихованець активний, ви та він відновлюватимете {1}% від загального здоров'я кожні {2} с.#{1}% of total health every {2} sec" }, -- Spirit Bond (Rank 1)
[20895] = { ref=19578 }, -- Spirit Bond (Rank 2)
[19579] = { "Духовний зв'язок", nil, "Відновлює {1}% від загального здоров'я кожні {2} с.#{1}% of total health every {2} sec" }, -- Spirit Bond (aura)
[24529] = { ref=19579 }, -- Spirit Bond (aura)

-- Surefooted
[19290] = { "Впевнені кроки", "Збільшує ймовірність поцілити на {1}% та ймовірність протидіяти ефектам перешкоди руху на додаткові {2}%.#hit chance by {1}#resisted by an additional {2}" }, -- Surefooted (Rank 1)
[19294] = { ref=19290 }, -- Surefooted (Rank 2)
[24283] = { ref=19290 }, -- Surefooted (Rank 3)

-- Survivalist
[19255] = { "Фахівець із виживання", "Збільшує загальний обсяг здоров'я на {1}%.#by {1}" }, -- Survivalist (Rank 1)
[19256] = { ref=19255 }, -- Survivalist (Rank 2)
[19257] = { ref=19255 }, -- Survivalist (Rank 3)
[19258] = { ref=19255 }, -- Survivalist (Rank 4)
[19259] = { ref=19255 }, -- Survivalist (Rank 5)

-- Tame Beast
[1515] = { "Приручення звіра", "Починає приручення звіра, який стане вашим супутником. Ваша броня знижується на {1}%, поки ви зосереджуєтеся на процесі приручення звіра впродовж {2} с. Якщо ви втратите увагу звіра з будь-якої причини, процес приручення провалиться. Після приручення, звір буде дуже нещасливим та недовірливим. Спробуйте одразу погодувати вихованця, щоб зробити його щасливим.#by {1}#for {2} sec", "Приручення вихованця." }, -- Tame Beast

-- Thick Hide
[19609] = { "Товста шкура", "Збільшує рейтинг броні ваших вихованців на {1}%.#by {1}" }, -- Thick Hide (Rank 1)
[19610] = { ref=19609 }, -- Thick Hide (Rank 2)
[19612] = { ref=19609 }, -- Thick Hide (Rank 3)

-- Track abilities
[1494] = {  "Вистежування звірів",      "Показує на мінікарті місце перебування звірів поблизу. Одночасно можна вистежувати лише щось одне.", "Вистежування звірів." }, -- Track Beasts
[19878] = { "Вистежування демонів",     "Показує на мінікарті місце перебування демонів поблизу. Одночасно можна вистежувати лише щось одне.", "Вистежування демонів." }, -- Track Demons
[19879] = { "Вистежування драконів",    "Показує на мінікарті місце перебування драконів поблизу. Одночасно можна вистежувати лише щось одне.", "Вистежування драконів." }, -- Track Dragonkin
[19880] = { "Вистежування елементалів", "Показує на мінікарті місце перебування елементалів поблизу. Одночасно можна вистежувати лише щось одне.", "Вистежування елементалів." }, -- Track Elementals
[19882] = { "Вистежування велетнів",    "Показує на мінікарті місце перебування велетнів поблизу. Одночасно можна вистежувати лише щось одне.", "Вистежування велетнів." }, -- Track Giants
[19883] = { "Вистежування гуманоїдів",  "Показує на мінікарті місце перебування гуманоїдів поблизу. Одночасно можна вистежувати лише щось одне.", "Вистежування гуманоїдів." }, -- Track Humanoids
[19884] = { "Вистежування невмерлих",   "Показує на мінікарті місце перебування невмерлих поблизу. Одночасно можна вистежувати лише щось одне.", "Вистежування невмерлих." }, -- Track Undead
[19885] = { "Вистежування прихованого", "Підсилює здатність виявлення непомітності та на мінікарті відображає прихованих істот в межах радіусу виявлення. Одночасно можна вистежувати лише щось одне.", "Вистежування прихованих цілей." }, -- Track Hidden

-- Tranquilizing Shot
[19801] = { "Заспокійливий постріл", "Спроба зняти {1} ефект навіженості з ворожої істоти.#remove {1}" }, -- Tranquilizing Shot

-- Trap Mastery
[19376] = { "Опанування пасток", "Зменшує ймовірність ворогів протидіяти ефектам пасток на {1}%.#by {1}" }, -- Trap Mastery (Rank 1)
[19377] = { ref=19376 }, -- Trap Mastery (Rank 1)

-- Trueshot Aura
[19506] = { "Аура влучного пострілу", "Збільшує силу атаки учасників групи в радіусі {1} м на {2}.#within {1} yards by {2}", "Силу атаки збільшено на {1}.#by {1}" }, -- Trueshot Aura (Rank 1)
[20905] = { ref=19506 }, -- Trueshot Aura (Rank 2)
[20906] = { ref=19506 }, -- Trueshot Aura (Rank 3)

-- Unleashed Fury
[19616] = { "Вивільнена лють", "Збільшує пошкодження від ваших вихованців на {1}%.#by {1}" }, -- Unleashed Fury (Rank 1)
[19617] = { ref=19616 }, -- Unleashed Fury (Rank 2)
[19618] = { ref=19616 }, -- Unleashed Fury (Rank 3)
[19619] = { ref=19616 }, -- Unleashed Fury (Rank 4)
[19620] = { ref=19616 }, -- Unleashed Fury (Rank 5)

-- Viper Sting
[3034] = { "Жало гадюки", "Уколює ціль, висушує {1} мани протягом {2} с. Лише один ефект жала від кожного мисливця може бути активним на одній цілі.#{1} mana over {2} sec", "Висушує {1} мани кожні {2} с.#{1} mana every {2} sec" }, -- Viper Sting (Rank 1)
[14279] = { ref=3034 }, -- Viper Sting (Rank 2)
[14280] = { ref=3034 }, -- Viper Sting (Rank 3)

-- Volley
[1510] = { "Залп", "Безперервно вкриває градом набоїв вибране місце, завдає {1} пошкодження арканою ворожим цілям в межах {2} м щосекунди протягом {3} с.#causing {1}#within {2} y#for {3} sec" }, -- Volley (Rank 1)
[14294] = { ref=1510 }, -- Volley (Rank 2)
[14295] = { ref=1510 }, -- Volley (Rank 3)

-- Wing Clip
[2974] = { "Підрізати крила", "Завдає {1} пошкодження та сповільнює рух ворога на {2}% на {3} с.#Inflicts {1}#by {2}% for {3} sec", "Швидкість руху зменшено на {1}%.#by {1}" }, -- Wing Clip (Rank 1)
[14267] = { ref=2974 }, -- Wing Clip (Rank 2)
[14268] = { ref=2974 }, -- Wing Clip (Rank 3)

-- Wyvern Sting
[19386] = { "Жало виверни", "Постріл, що жалить ціль та занурює її в сон на {1} с. Будь-яке пошкодження пробудить ціль. Коли ціль прокинеться, жало завдасть {2} пошкодження природою протягом {3} с. Можна використовувати лише поза боєм. Лише один ефект жала від кожного мисливця може бути активним на одній цілі.#sleep for {1} sec#causes {2}#over {3} sec", "Сплячий." }, -- Wyvern Sting (Rank 1)
[24132] = { ref=19386 }, -- Wyvern Sting (Rank 2)
[24133] = { ref=19386 }, -- Wyvern Sting (Rank 3)

}

for k, v in pairs(hunter_spells) do addonTable.spell[k] = v end
