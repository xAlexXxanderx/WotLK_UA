local _, addonTable = ...

local rogue_spells = {

-- [id] = {
--     [ref] = ID (optional),
--     [1] = title (optional),
--     [2] = description (optional),
--     [3] = aura (optional),
-- }

-- Adrenaline Rush
[13750] = { "Викид адреналіну", "Збільшує швидкість відновлення енергії на {1}% на {2} с.#by {1}% for {2} sec", "Швидкість відновлення енергії збільшено на {1}%.#by {1}" }, -- Adrenaline Rush

-- Aggression
[18427] = { "Агресивність", "Збільшує пошкодження вашими здібностями \"Зловісний удар\" та \"Потрошіння\" на {1}%.#by {1}" }, -- Aggression (Rank 1)
[18428] = { ref=18427 }, -- Aggression (Rank 2)
[18429] = { ref=18427 }, -- Aggression (Rank 3)

-- Ambush
[8676] = { "Засідка", "Раптовий удар, завдає цілі {1}% від базового пошкодження зброєю плюс {2}. Необхідно бути непомітним та позаду цілі. Працює лише за наявності кинджалу в основній руці. Збільшує довжину комбінації на {3} прийом.#causing {1}#plus {2}#{3} combo" }, -- Ambush (Rank 1)
[8724] = { ref=8676 }, -- Ambush (Rank 2)
[8725] = { ref=8676 }, -- Ambush (Rank 3)
[11267] = { ref=8676 }, -- Ambush (Rank 4)
[11268] = { ref=8676 }, -- Ambush (Rank 5)
[11269] = { ref=8676 }, -- Ambush (Rank 6)

-- Backstab
[53] = { "Удар у спину", "Вдаряє ціль у спину, завдає {1}% від базового пошкодження зброєю та додаткові {2} пошкодження. Необхідно бути позаду цілі. Працює лише за наявності кинджалу в основній руці. Збільшує довжину комбінації на {3} прийом.#causing {1}#plus {2}#{3} combo" }, -- Backstab (Rank 1)
[2589] = { ref=53 }, -- Backstab (Rank 2)
[2590] = { ref=53 }, -- Backstab (Rank 3)
[2591] = { ref=53 }, -- Backstab (Rank 4)
[8721] = { ref=53 }, -- Backstab (Rank 5)
[11279] = { ref=53 }, -- Backstab (Rank 6)
[11280] = { ref=53 }, -- Backstab (Rank 7)
[11281] = { ref=53 }, -- Backstab (Rank 8)
[25300] = { ref=53 }, -- Backstab (Rank 9)

-- Blade Flurry
[13877] = { "Шквал клинків", "Збільшує вашу швидкість атаки на {1}%. Також, ваші атаки завдають удару додатковому супернику поруч. Триває {2} с.#by {1}#Lasts {2} sec", "Швидкість атаки збільшено на {1}%. Атаки зброєю завдають удару додатковому супернику поруч.#by {1}" }, -- Blade Flurry

-- Blind
[2094] = { "Засліплення", "Засліплює ціль, змушує її блукати дезорієнтованою впродовж {1} с. Будь-яке пошкодження знімає ефект.#for up to {1} sec", "Дезорієнтований." }, -- Blind

-- Blinding Powder
[6510] = { "Сліпучий порошок", "Створює реагент для здібності \"Засліплення\"." }, -- Blinding Powder

-- Camouflage
[13975] = { "Камуфляж", "Збільшує вашу швидкість руху в стані непомітності на {1}% та зменьшує час поновлення вашої здібності \"Непомітність\" на {2} с.#by {1}%#by {2} sec" }, -- Camouflage (Rank 1)
[14062] = { ref=13975 }, -- Camouflage (Rank 2)
[14063] = { ref=13975 }, -- Camouflage (Rank 3)
[14064] = { ref=13975 }, -- Camouflage (Rank 4)
[14065] = { ref=13975 }, -- Camouflage (Rank 5)

-- Cheap Shot
[1833] = { "Підла витівка", "Приголомшує ціль на {1} с. Необхідно бути непомітним. Збільшує довжину комбінації на {2} прийоми.#for {1} sec#{2} combo", "Приголомшений." }, -- Cheap Shot

-- Cold Blood
[14177] = { "Стигла кров", "При активації, збільшує ймовірність критичного удару вашої наступної здібності \"Зловісний удар\", \"Удар у спину\", \"Засідка\" чи \"Потрошіння\" на {1}%.#by {1}", "Імовірність критичного удару вашої наступної здібності \"Зловісний удар\", \"Удар у спину\", \"Засідка\" чи \"Потрошіння\" збільшено на {1}%.#by {1}" }, -- Cold Blood

-- Crippling Poison
[3420] = { "Травматична отрута", "Вкриває зброю отрутою на {1} хв. Кожен удар має {2}% імовірності отруїти ворога, сповільнюючи рух на {3}% на {4} с.#lasts for {1} min#{2}% chance#speed by {3}% for {4} sec" }, -- Crippling Poison (Rank 1)
[3421] = { "Травматична отрута II", ref=3420 }, -- Crippling Poison II (Rank 2)

-- Dagger Specialization
[13706] = { "Спеціалізація на кинджалах", "Підвищує ймовірність завдати критичного удару кинджалами на {1}%.#by {1}" }, -- Dagger Specialization (Rank 1)
[13804] = { ref=13706 }, -- Dagger Specialization (Rank 2)
[13805] = { ref=13706 }, -- Dagger Specialization (Rank 3)
[13806] = { ref=13706 }, -- Dagger Specialization (Rank 4)
[13807] = { ref=13706 }, -- Dagger Specialization (Rank 5)

-- Deadliness
[30902] = { "Смертоносність", "Збільшує вашу силу атаки на {1}%.#by {1}" }, -- Deadliness (Rank 1)
[30903] = { ref=30902 }, -- Deadliness (Rank 2)
[30904] = { ref=30902 }, -- Deadliness (Rank 3)
[30905] = { ref=30902 }, -- Deadliness (Rank 4)
[30906] = { ref=30902 }, -- Deadliness (Rank 5)

-- Deadly Poison
[2835] = { "Смертельна отрута", "Вкриває зброю отрутою на {1} хв. Кожен удар має {2}% імовірності отруїти ворога, завдаючи {3} пошкодження природою протягом {4} с. Накладається до {5} разів на одній цілі. {6} зарядів.#lasts for {1} min#{2}% chance#for {3} Nature damage over {4} sec#{5} times#{6} charges" }, -- Deadly Poison (Rank 1)
[2837] = { "Смертельна отрута II", ref=2835 }, -- Deadly Poison II (Rank 2)
[11357] = { "Смертельна отрута III", ref=2835 }, -- Deadly Poison III (Rank 3)
[11358] = { "Смертельна отрута IV", ref=2835 }, -- Deadly Poison IV (Rank 4)
[25347] = { "Смертельна отрута V", ref=2835 }, -- Deadly Poison V (Rank 5)

-- Deflection
[13713] = { "Відбиття", "Збільшує вашу ймовірність парирувати на {1}%.#chance by {1}" }, -- Deflection (Rank 1)
[13853] = { ref=13713 }, -- Deflection (Rank 2)
[13854] = { ref=13713 }, -- Deflection (Rank 3)
[13855] = { ref=13713 }, -- Deflection (Rank 4)
[13856] = { ref=13713 }, -- Deflection (Rank 5)

-- Detect Traps
[2836] = { "Виявлення пасток", "Значно підсилює здатність виявляти пастки.", "Виявлення пасток." }, -- Detect Traps

-- Dirty Deeds
[14082] = { "Брудні вчинки", "Знижує вартість енергії ваших здібностей \"Підла витівка\" та \"Гарота\" на {1}.#by {1}" }, -- Dirty Deeds (Rank 1)
[14083] = { ref=14082 }, -- Dirty Deeds (Rank 2)

-- Disarm Trap
[1842] = { "Знешкодження пасток", "Підкрастися до пастки та знешкодити її. Не наближайтеся занадто близько, інакше пастка спрацює." }, -- Disarm Trap

-- Distract
[1725] = { "Відволікання", "Метнути принаду, яка відволіче увагу всіх монстрів поблизу на {1} с. Не порушує непомітності.#for {1} sec" }, -- Distract

-- Dual Wield Specialization
[13715] = { "Спеціалізація на бою з двох рук", "Збільшує пошкодження, заподіяне вашою зброєю в неосновній руці, на {1}%.#weapon by {1}" }, -- Dual Wield Specialization (Rank 1)
[13848] = { ref=13715 }, -- Dual Wield Specialization (Rank 2)
[13849] = { ref=13715 }, -- Dual Wield Specialization (Rank 3)
[13851] = { ref=13715 }, -- Dual Wield Specialization (Rank 4)
[13852] = { ref=13715 }, -- Dual Wield Specialization (Rank 5)

-- Elusiveness
[13981] = { "Невловимість", "Зменшує час відновлення ваших здібностей \"Зникнення\" та \"Засліплення\" на {1} с.#by {1} sec" }, -- Elusiveness (Rank 1)
[14066] = { "Невловимість", "Зменшує час відновлення ваших здібностей \"Зникнення\" та \"Засліплення\" на {1} хв.#by {1} min" }, -- Elusiveness (Rank 2)

-- Endurance
[13742] = { "Витримка", "Зменшує час відновлення ваших здібностей \"Спринт\" та \"Уникнення\" на {1} с.#by {1} sec" }, -- Endurance (Rank 1)
[13872] = { "Витримка", "Зменшує час відновлення ваших здібностей \"Спринт\" та \"Уникнення\" на {1} хв.#by {1} min" }, -- Endurance (Rank 2)

-- Evasion
[5277] = { "Уникнення", "Збільшує ймовірність ухилитися на {1}% на {2} с.#by {1}% for {2} sec", "Збільшує ймовірність ухилитися на {1}%.#by {1}" }, -- Evasion

-- Eviscerate
[2098] = { "Потрошіння", "Завершальний рух, завдає пошкодження залежно від довжини комбінації та збільшується силою атаки:\n  1 прийом: {1}-{2} пошкодження\n  2 прийоми: {3}-{4} пошкодження\n  3 прийоми: {5}-{6} пошкодження\n  4 прийоми: {7}-{8} пошкодження\n  5 прийомів: {9}-{10} пошкодження#1 point  : {1}-{2}#2 points: {3}-{4}#3 points: {5}-{6}#4 points: {7}-{8}#5 points: {9}-{10}" }, -- Eviscerate (Rank 1)
[6760] = { ref=2098 }, -- Eviscerate (Rank 2)
[6761] = { ref=2098 }, -- Eviscerate (Rank 3)
[6762] = { ref=2098 }, -- Eviscerate (Rank 4)
[8623] = { ref=2098 }, -- Eviscerate (Rank 5)
[8624] = { ref=2098 }, -- Eviscerate (Rank 6)
[11299] = { ref=2098 }, -- Eviscerate (Rank 7)
[11300] = { ref=2098 }, -- Eviscerate (Rank 8)
[31016] = { ref=2098 }, -- Eviscerate (Rank 9)

-- Expose Armor
[8647] = { "Оголення броні", "Завершальний рух, оголює ціль на {1} с, зменшуючи броню за кожен прийом комбінації:\n  1 прийом: {2} броні\n  2 прийоми: {3} броні\n  3 прийоми: {4} броні\n  4 прийоми: {5} броні\n  5 прийомів: {6} броні#for {1} sec#1 point  : {2}#2 points: {3}#3 points: {4}#4 points: {5}#5 points: {6}", "Броню зменшено." }, -- Expose Armor (Rank 1)
[8649] = { ref=8647 }, -- Expose Armor (Rank 2)
[8650] = { ref=8647 }, -- Expose Armor (Rank 3)
[11197] = { ref=8647 }, -- Expose Armor (Rank 4)
[11198] = { ref=8647 }, -- Expose Armor (Rank 5)

-- Feint
[1966] = { "Фінт", "Виконує оманливий випад, не завдаючи пошкодження, та трохи зменшує вашу загрозу. Це знизить вірогідність того, що ворог атакуватиме саме вас." }, -- Feint (Rank 1)
[6768] = { "Фінт", "Виконує оманливий випад, не завдаючи пошкодження, та середньо зменшує вашу загрозу. Це знизить вірогідність того, що ворог атакуватиме саме вас." }, -- Feint (Rank 2)
[8637] = { "Фінт", "Виконує оманливий випад, не завдаючи пошкодження, та значно зменшує вашу загрозу. Це знизить вірогідність того, що ворог атакуватиме саме вас." }, -- Feint (Rank 3)
[11303] = { ref=8637 }, -- Feint (Rank 4)
[25302] = { ref=8637 }, -- Feint (Rank 5)

-- Fist Weapon Specialization
[13707] = { "Спеціалізація на кулачній зброї", "Підвищує ймовірність завдати критичного удару кулачною зброєю на {1}%.#by {1}" }, -- Fist Weapon Specialization (Rank 1)
[13966] = { ref=13707 }, -- Fist Weapon Specialization (Rank 2)
[13967] = { ref=13707 }, -- Fist Weapon Specialization (Rank 3)
[13968] = { ref=13707 }, -- Fist Weapon Specialization (Rank 4)
[13969] = { ref=13707 }, -- Fist Weapon Specialization (Rank 5)

-- Garrote
[703] = { "Гарота", "Душить ворога, завдаючи {1} пошкодження протягом {2} с, збільшене вашою силою атаки. Необхідно бути непомітним та позаду цілі. Збільшує довжину комбінації на {3} прийом.#causing {1} damage over {2} sec#{3} combo", "{1} пошкодження кожні {2} с.#{1} damage every {2} sec" }, -- Garrote (Rank 1)
[8631] = { ref=703 }, -- Garrote (Rank 2)
[8632] = { ref=703 }, -- Garrote (Rank 3)
[8633] = { ref=703 }, -- Garrote (Rank 4)
[11289] = { ref=703 }, -- Garrote (Rank 5)
[11290] = { ref=703 }, -- Garrote (Rank 6)

-- Ghostly Strike
[14278] = { "Примарний удар", "Удар, що завдає {1}% пошкодження зброєю та збільшує вашу ймовірність ухилитися на {2}% на {3} с. Збільшує довжину комбінації на {4} прийом.#{1}% weapon#by {2}% for {3} sec#{4} combo", "Імовірність ухилитися збільшена на {1}%.#by {1}" }, -- Ghostly Strike

-- Gouge
[1776] = { "Кривда", "Завдає {1} пошкодження, робить ворога недієздатним на {2} с. та зупиняє вашу атаку. Ціль має бути повернута до вас. Будь-яке пошкодження знімає ефект з ураженої цілі. Збільшує довжину комбінації на {3} прийом.#Causes {1}#for {2} sec#{3} combo", "Недієздатний." }, -- Gouge (Rank 1)
[1777] = { ref=1776 }, -- Gouge (Rank 2)
[8629] = { ref=1776 }, -- Gouge (Rank 3)
[11285] = { ref=1776 }, -- Gouge (Rank 4)
[11286] = { ref=1776 }, -- Gouge (Rank 5)

-- Heightened Senses
[30894] = { "Загострені відчуття", "Підсилює вашу здатність виявлення непомітності та зменшує ймовірність поцілити вас закляттями та атаками дальнього бою на {1}%.#by {1}" }, -- Heightened Senses (Rank 1)
[30895] = { "Загострені відчуття", "Підсилює вашу здатність виявлення непомітності та зменшує ймовірність поцілити вас закляттями та атаками дальнього бою на {1}%. Дієвіше за \"Загострені відчуття\" (Ранг {2}).#by {1}#(Rank {2})" }, -- Heightened Senses (Rank 2)

-- Hemorrhage
[16511] = { "Крововилив", "Миттєвий удар, завдає пошкодження супернику та призводить до крововиливу, збільшуючи отримуване фізичне пошкодження на {1}. Триває {2} зарядів або {3} с. Збільшує довжину комбінації на {4} прийом.#by up to {1}#Lasts {2} charges or {3} sec#{4} combo", "Збільшує отримуване пошкодження на {1}.#by {1}" }, -- Hemorrhage (Rank 1)
[17347] = { ref=16511 }, -- Hemorrhage (Rank 2)
[17348] = { ref=16511 }, -- Hemorrhage (Rank 3)

-- Improved Ambush
[14079] = { "Покращена засідка", "Збільшує ймовірність критичного удару вашої здібності \"Засідка\" на {1}%.#by {1}" }, -- Improved Ambush (Rank 1)
[14080] = { ref=14079 }, -- Improved Ambush (Rank 2)
[14081] = { ref=14079 }, -- Improved Ambush (Rank 3)

-- Improved Backstab
[13733] = { "Покращений удар у спину", "Збільшує ймовірність критичного удару вашої здібності \"Удар у спину\" на {1}%.#by {1}" }, -- Improved Backstab (Rank 1)
[13865] = { ref=13733 }, -- Improved Backstab (Rank 2)
[13866] = { ref=13733 }, -- Improved Backstab (Rank 3)

-- Improved Eviscerate
[14162] = { "Покращене потрошіння", "Збільшує пошкодження вашої здібності \"Потрошіння\" на {1}%.#by {1}" }, -- Improved Eviscerate (Rank 1)
[14163] = { ref=14162 }, -- Improved Eviscerate (Rank 2)
[14164] = { ref=14162 }, -- Improved Eviscerate (Rank 3)

-- Improved Expose Armor
[14168] = { "Покращене оголення броні", "Збільшує зниження броні від вашої здібності \"Оголення броні\" на {1}%.#by {1}" }, -- Improved Expose Armor (Rank 1)
[14169] = { ref=14168 }, -- Improved Expose Armor (Rank 2)

-- Improved Gouge
[13741] = { "Покращена кривда", "Подовжує дію ефекту вашої здібності \"Кривда\" на {1} с.#by {1}" }, -- Improved Gouge (Rank 1)
[13793] = { ref=13741 }, -- Improved Gouge (Rank 2)
[13792] = { ref=13741 }, -- Improved Gouge (Rank 3)

-- Improved Kick
[13754] = { "Покращена підніжка", "Надає вашій здібності \"Підніжка\" {1}% імовірності знемовити ціль на {2} с.#{1}% chance#for {2} sec" }, -- Improved Kick (Rank 1)
[13867] = { ref=13754 }, -- Improved Kick (Rank 2)
[18425] = { "Підніжка - Безмовний", nil, "Безмовний." }, -- Kick - Silenced (aura)

-- Improved Kidney Shot
[14174] = { "Покращений удар по нирках", "Перебуваючи під дією вашої здібності \"Удар по нирках\", ціль додатково отримує {1}% пошкодження від усіх джерел.#additional {1}" }, -- Improved Kidney Shot (Rank 1)
[14175] = { ref=14174 }, -- Improved Kidney Shot (Rank 2)
[14176] = { ref=14174 }, -- Improved Kidney Shot (Rank 3)

-- Improved Poisons
[14113] = { "Покращені отрути", "Збільшує ймовірність отруїти ціль на {1}%.#by {1}" }, -- Improved Poisons (Rank 1)
[14114] = { ref=14113 }, -- Improved Poisons (Rank 2)
[14115] = { ref=14113 }, -- Improved Poisons (Rank 3)
[14116] = { ref=14113 }, -- Improved Poisons (Rank 4)
[14117] = { ref=14113 }, -- Improved Poisons (Rank 5)

-- Improved Sap
[14076] = { "Покращене оглушення", "Надає вам {1}% імовірності повернутися у стан непомітності після застосування здібності \"Оглушення\".#{1}% chance" }, -- Improved Sap (Rank 1)
[14094] = { ref=14076 }, -- Improved Sap (Rank 2)

-- Improved Sinister Strike
[13732] = { "Покращений зловісний удар", "Зменшує витрати енергії здібності \"Зловісний удар\" на {1}.#by {1}" }, -- Improved Sinister Strike (Rank 1)
[13863] = { ref=13732 }, -- Improved Sinister Strike (Rank 2)

-- Improved Slice and Dice
[14165] = { "Покращена м'ясорубка", "Збільшує тривалість дії вашої здібності \"М'ясорубка\" на {1}%.#by {1}" }, -- Improved Slice and Dice (Rank 1)
[14166] = { ref=14165 }, -- Improved Slice and Dice (Rank 2)
[14167] = { ref=14165 }, -- Improved Slice and Dice (Rank 3)

-- Improved Sprint
[13743] = { "Покращений спринт", "Надає {1}% імовірності позбутися всіх ефектів перешкоди руху при активації вашої здібності \"Спринт\".#{1}% chance" }, -- Improved Sprint (Rank 1)
[13875] = { ref=13743 }, -- Improved Sprint (Rank 2)

-- Initiative
[13976] = { "Ініціатива", "Надає вам {1}% імовірності збільшити довжину комбінації на додатковий прийом на цілі, використовуючи здібності \"Засідка\", \"Гарота\" або \"Підла витівка\".#{1}% chance" }, -- Initiative (Rank 1)
[13979] = { ref=13976 }, -- Initiative (Rank 2)
[13980] = { ref=13976 }, -- Initiative (Rank 3)

-- Instant Poison
[8681] = { "Миттєва отрута", "Вкриває зброю отрутою на {1} хв. Кожен удар має {2}% імовірності отруїти ворога, миттєво завдаючи від {3} до {4} пошкодження природою. {5} зарядів.#lasts for {1} min#{2}% chance#inflicts {3} to {4}#{5} charges" }, -- Instant Poison (Rank 1)
[8687] = { "Миттєва отрута II", ref=8681 }, -- Instant Poison II (Rank 2)
[8691] = { "Миттєва отрута III", ref=8681 }, -- Instant Poison III (Rank 3)
[11341] = { "Миттєва отрута IV", ref=8681 }, -- Instant Poison IV (Rank 4)
[11342] = { "Миттєва отрута V", ref=8681 }, -- Instant Poison V (Rank 5)
[11343] = { "Миттєва отрута VI", ref=8681 }, -- Instant Poison VI (Rank 6)

-- Kick
[1766] = { "Підніжка", "Швидка підніжка травмує ціль та завдає {1} пошкодження. Також перериває вимову закляття та унеможливлює вимову заклять тієї ж школи протягом {2} с.#for {1} damage#for {2} sec" }, -- Kick (Rank 1)
[1767] = { ref=1766 }, -- Kick (Rank 2)
[1768] = { ref=1766 }, -- Kick (Rank 3)
[1769] = { ref=1766 }, -- Kick (Rank 4)

-- Kidney Shot
[408] = { "Удар по нирках", "Завершальний рух, приголомшує ціль. Тривалість залежить від довжини комбінації:\n  1 прийом: {1} с\n  2 прийоми: {2} с\n  3 прийоми: {3} с\n  4 прийоми: {4} с\n  5 прийомів: {5} с#1 point  : {1}#2 points: {2}#3 points: {3}#4 points: {4}#5 points: {5}", "Приголомшений." }, -- Kidney Shot (Rank 1)
[8643] = { ref=408 }, -- Kidney Shot (Rank 2)

-- Lethality
[14128] = { "Летальність", "Збільшує пошкодження критичних ударів ваших здібностей \"Зловісний удар\", \"Кривда\", \"Удар у спину\", \"Примарний удар\" та \"Крововилив\" на {1}%.#by {1}" }, -- Lethality (Rank 1)
[14132] = { ref=14128 }, -- Lethality (Rank 2)
[14135] = { ref=14128 }, -- Lethality (Rank 3)
[14136] = { ref=14128 }, -- Lethality (Rank 4)
[14137] = { ref=14128 }, -- Lethality (Rank 5)

-- Lightning Reflexes
[13712] = { "Блискавичні рефлекси", "Збільшує вашу ймовірність ухилитися на {1}%.#by {1}" }, -- Lightning Reflexes (Rank 1)
[13788] = { ref=13712 }, -- Lightning Reflexes (Rank 2)
[13789] = { ref=13712 }, -- Lightning Reflexes (Rank 3)
[13790] = { ref=13712 }, -- Lightning Reflexes (Rank 4)
[13791] = { ref=13712 }, -- Lightning Reflexes (Rank 5)

-- Mace Specialization
[13709] = { "Спеціалізація на булавах", "Збільшує ваші навички володіння булавами на {1}. Також надає вам {2}% імовірністі приголомшити ціль на {3} с при використанні булави.#Maces by {1}#{2}% chance#for {3} sec" }, -- Mace Specialization (Rank 1)
[13800] = { ref=13709 }, -- Mace Specialization (Rank 2)
[13801] = { ref=13709 }, -- Mace Specialization (Rank 3)
[13802] = { ref=13709 }, -- Mace Specialization (Rank 4)
[13803] = { ref=13709 }, -- Mace Specialization (Rank 5)

-- Malice
[14138] = { "Злість", "Збільшує вашу ймовірність завдати критичного удару на {1}%.#by {1}" }, -- Malice (Rank 1)
[14139] = { ref=14138 }, -- Malice (Rank 2)
[14140] = { ref=14138 }, -- Malice (Rank 3)
[14141] = { ref=14138 }, -- Malice (Rank 4)
[14142] = { ref=14138 }, -- Malice (Rank 5)

-- Master of Deception
[13958] = { "Майстер омани", "Зменьшує ймовірність виявлення вас ворогами, перебуваючи у стані непомітності." }, -- Master of Deception (Rank 1)
[13970] = { "Майстер омани", "Зменьшує ймовірність виявлення вас ворогами, перебуваючи у стані непомітності. Дієвіше за \"Майстер омани\" (Ранг {1}).#(Rank {1})" }, -- Master of Deception (Rank 2)
[13971] = { ref=13970 }, -- Master of Deception (Rank 3)
[13972] = { ref=13970 }, -- Master of Deception (Rank 4)
[13973] = { ref=13970 }, -- Master of Deception (Rank 5)

-- Mind-numbing Poison
[5763] = { "Задурлива отрута", "Вкриває зброю отрутою на {1} хв. Кожен удар має {2}% імовірності отруїти ворога, сповільнюючи вимову заклять на {3}% на {4} с. {5} зарядів.#lasts for {1} min#{2}% chance#by {3}% for {4} sec#{5} charges" }, -- Mind-numbing Poison (Rank 1)
[8694] = { "Задурлива отрута II", ref=5763 }, -- Mind-numbing Poison II
[11400] = { "Задурлива отрута III", ref=5763 }, -- Mind-numbing Poison III

-- Murder
[14158] = { "Вбивство", "Збільшує все завдане пошкодження гуманоїдам, велетням, звірам та драконам на {1}%.#by {1}" }, -- Murder (Rank 1)
[14159] = { ref=14158 }, -- Murder (Rank 2)

-- Opportunity
[14057] = { "Нагода", "Збільшує пошкодження атакою зі спини вашими здібностями \"Удар у спину\", \"Гарота\" та \"Засідка\" на {1}%.#by {1}" }, -- Opportunity (Rank 1)
[14072] = { ref=14057 }, -- Opportunity (Rank 2)
[14073] = { ref=14057 }, -- Opportunity (Rank 3)
[14074] = { ref=14057 }, -- Opportunity (Rank 4)
[14075] = { ref=14057 }, -- Opportunity (Rank 5)

-- Pick Lock
[1804] = { "Зламування замків", "Дозволяє відкривати зачинені сундуки та двері." }, -- Pick Lock

-- Pick Pocket
[921] = { "Обшукування кишень", "Обшукати кишеню цілі." }, -- Pick Pocket

-- Poisons
[2842] = { "Отрути", "Ви можете створювати та змішувати отрути як зі знайдених, так і з придбаних інгредієнтів." }, -- Poisons

-- Precision
[13705] = { "Точність", "Збільшує вашу ймовірність поцілити зброєю ближнього бою на {1}%.#by {1}" }, -- Precision (Rank 1)
[13832] = { ref=13705 }, -- Precision (Rank 2)
[13843] = { ref=13705 }, -- Precision (Rank 3)
[13844] = { ref=13705 }, -- Precision (Rank 4)
[13845] = { ref=13705 }, -- Precision (Rank 5)

-- Premeditation
[14183] = { "Задум", "При активації, додає {1} прийоми комбінації до вашої цілі. Ви повинні використати ці прийоми або додати до них ще прийомів протягом {2} с, інакше вони будуть втрачені.#adds {1} combo#within {2} sec" }, -- Premeditation

-- Preparation
[14185] = { "Підготовка", "При активації, миттєво завершує відновлення інших здібнослей розбійника." }, -- Preparation

-- Relentless Strikes
[14179] = { "Невідступні удари", "Ваші завершальні рухи з імовірністю {1}% на кожен прийом комбінації відновлять {2} енергії.#{1}% chance#restore {2}" }, -- Relentless Strikes

-- Remorseless Attacks
[14144] = { "Безжалісні атаки", "Вбивство суперника, яке принесло досвід або честь, збільшує ймовірність критичного удару вашої наступної здібності \"Зловісний удар\", \"Удар у спину\", \"Засідка\" або \"Примарний удар\" на {1}%. Триває {2} с.#{1}% increased#Lasts {2} sec" }, -- Remorseless Attacks (Rank 1)
[14148] = { ref=14144 }, -- Remorseless Attacks (Rank 2)
[14143] = { "Безжалісність", nil, "Імовірність критичного удару вашої наступної здібності \"Зловісний удар\", \"Удар у спину\", \"Засідка\" або \"Примарний удар\" збільшено на {1}%.#by {1}" }, -- Remorseless (aura)
[14149] = { ref=14143 }, -- Remorseless (aura)

-- Riposte
[14251] = { "Відповідь", "Удар, який можливо виконали лише після парирування атаки опонента. Ця атака завдає {1}% пошкодження зброєю та роззброює ціль на {2} с.#deals {1}#for {2} sec", "Роззброєний." }, -- Riposte

-- Rupture
[1943] = { "Розрив", "Завершальний рух, завдає пошкодження протягом деякого часу, яке збільшене вашою силою атаки. Тривалість залежить від довжини комбінації:\n  1 прийом: {1} пошкодження за {2} c\n  2 прийоми: {3} пошкодження за {4} c\n  3 прийоми: {5} пошкодження за {6} c\n  4 прийоми: {7} пошкодження за {8} c\n  5 прийомів: {9} пошкодження за {10} c#1 point  : {1} damage over {2}#2 points: {3} damage over {4}#3 points: {5} damage over {6}#4 points: {7} damage over {8}#5 points: {9} damage over {10}", "{1} пошкодження кожні {2} с.#{1} damage every {2} sec" }, -- Rupture (Rank 1)
[8639] = { ref=1943 }, -- Rupture (Rank 2)
[8640] = { ref=1943 }, -- Rupture (Rank 3)
[11273] = { ref=1943 }, -- Rupture (Rank 4)
[11274] = { ref=1943 }, -- Rupture (Rank 5)
[11275] = { ref=1943 }, -- Rupture (Rank 6)

-- Ruthlessness
[14156] = { "Нещадність", "Надає вашим завершальним рухам {1}% імовірності додати прийом комбінації до вашої цілі.#{1}% chance" }, -- Ruthlessness (Rank 1)
[14160] = { ref=14156 }, -- Ruthlessness (Rank 2)
[14161] = { ref=14156 }, -- Ruthlessness (Rank 3)

-- Safe Fall
[1860] = { "Безпечне падіння", "Зменшує пошкодження від падіння." }, -- Safe Fall

-- Sap
[6770] = { "Оглушення", "Робить ціль недієздатною на {1} с. Необхідно бути непомітним. Діє лише проти гуманоїдів, що перебувають поза боєм. Будь-яке пошкодження знімає ефект з ураженої цілі. Одночасно лише {2} ціль може бути оглушеною.#up to {1} sec#{2} target", "Недієздатний." }, -- Sap (Rank 1)
[2070] = { ref=6770 }, -- Sap (Rank 2)
[11297] = { ref=6770 }, -- Sap (Rank 3)

-- Seal Fate
[14186] = { "Відбиток долі", "Ваші критичні удари здібностями, які додають прийом комбінації, з {1}% імовірності додадуть ще один прийом.#{1}% chance" }, -- Seal Fate (Rank 1)
[14190] = { ref=14186 }, -- Seal Fate (Rank 2)
[14193] = { ref=14186 }, -- Seal Fate (Rank 3)
[14194] = { ref=14186 }, -- Seal Fate (Rank 4)
[14195] = { ref=14186 }, -- Seal Fate (Rank 5)

-- Serrated Blades
[14171] = { "Зубчасті леза", "Ваші атаки ігнорують {1} броні цілі, а ваша здібність \"Розрив\" завдає на {2}% більше пошкодження. Значення ігнорованої броні зростає з вашим рівнем.#ignore {1}#by {2}" }, -- Serrated Blades (Rank 1)
[14172] = { ref=14171 }, -- Serrated Blades (Rank 2)
[14173] = { ref=14171 }, -- Serrated Blades (Rank 3)

-- Setup
[13983] = { "Налаштованість", "Надає вам {1}% імовірності додати прийом комбінації до цілі після того, як ви ухилилися від атаки або ж повністю протидіяли закляттю.#{1}% chance" }, -- Setup (Rank 1)
[14070] = { ref=13983 }, -- Setup (Rank 2)
[14071] = { ref=13983 }, -- Setup (Rank 3)

-- Sinister Strike
[1752] = { "Зловісний удар", "Миттєвий удар, завдає додатково {1} пошкодження до звичайного пошкодження зброєю. Збільшує довжину комбінації на {2} прийом.#causes {1}#{2} combo" }, -- Sinister Strike (Rank 1)
[1757] = { ref=1752 }, -- Sinister Strike (Rank 2)
[1758] = { ref=1752 }, -- Sinister Strike (Rank 3)
[1759] = { ref=1752 }, -- Sinister Strike (Rank 4)
[1760] = { ref=1752 }, -- Sinister Strike (Rank 5)
[8621] = { ref=1752 }, -- Sinister Strike (Rank 6)
[11293] = { ref=1752 }, -- Sinister Strike (Rank 7)
[11294] = { ref=1752 }, -- Sinister Strike (Rank 8)

-- Sleight of Hand
[30892] = { "Спритність рук", "Зменшує ймовірність отримати критичне пошкодження атаками ближнього та дального бою на {1}%. Також збільшує на {2}% зниження загрози вашої здібності \"Фінт\".#attacks by {1}#ability by {2}" }, -- Sleight of Hand (Rank 1)
[30893] = { ref=30892 }, -- Sleight of Hand (Rank 2)

-- Slice and Dice
[5171] = { "М'ясорубка", "Завершальний рух, збільшує швидкість атаки ближнього бою на {1}%. Тривалість залежить від довжини комбінації:\n  1 прийом: {2} с\n  2 прийоми: {3} с\n  3 прийоми: {4} с\n  4 прийоми: {5} с\n  5 прийомів: {6} с#speed by {1}#1 point  : {2}#2 points: {3}#3 points: {4}#4 points: {5}#5 points: {6}", "Швидкість атаки ближнього бою збільшена на {1}%.#by {1}" }, -- Slice and Dice (Rank 1)
[6774] = { ref=5171 }, -- Slice and Dice (Rank 2)

-- Sprint
[2983] = { "Спринт", "Збільшує швидкість руху на {1}% на {2} с. Не порушує непомітності.#speed by {1}% for {2} sec", "Швидкість руху збільшена на {1}%.#by {1}" }, -- Sprint (Rank 1)
[8696] = { ref=2983 }, -- Sprint (Rank 2)
[11305] = { ref=2983 }, -- Sprint (Rank 3)

-- Stealth
[1784] = { "Непомітність", "Дозволяє розбійнику пересуватися непомітно, знижує швидкість руху на {1}%. Триває до скасування.#by {1}", "Непомітний. Рух сповільнено на {1}%.#by {1}" }, -- Stealth (Rank 1)
[1785] = { ref=1784 }, -- Stealth (Rank 2)
[1786] = { ref=1784 }, -- Stealth (Rank 3)
[1787] = { ref=1784 }, -- Stealth (Rank 4)

-- Sword Specialization
[13960] = { "Спеціалізація на мечах", "Надає {1}% імовірності провести додаткову атаку по тій самій цілі після нанесення пошкодження мечем.#{1}% chance" }, -- Sword Specialization (Rank 1)
[13961] = { ref=13960 }, -- Sword Specialization (Rank 2)
[13962] = { ref=13960 }, -- Sword Specialization (Rank 3)
[13963] = { ref=13960 }, -- Sword Specialization (Rank 4)
[13964] = { ref=13960 }, -- Sword Specialization (Rank 5)

-- Vanish
[1856] = { "Зникнення", "Дозволяє розбійнику зникнути з поля зору ворогів, увійшовши в стан покращеної непомітності на {1} с. Також знімає всі ефекти перешкоди руху.#for {1} sec", "Покращена непомітність." }, -- Vanish (Rank 1)
[1857] = { "Зникнення", "Дозволяє розбійнику зникнути з поля зору ворогів, увійшовши в стан покращеної непомітності на {1} с. Також знімає всі ефекти перешкоди руху. Дієвіше за \"Зникнення\" (Ранг {2}).#for {1} sec#(Rank {2})", "Покращена непомітність." }, -- Vanish (Rank 2)
[11327] = { ref=1856 }, -- Vanish (aura)
[11329] = { ref=1856 }, -- Vanish (aura)

-- Vigor
[14983] = { "Бадьорість", "Збільшує вашу максимальну енергію на {1}.#by {1}" }, -- Vigor

-- Vile Poisons
[16513] = { "Мерзенні отрути", "Збільшує пошкодження від ваших отрут на {1}% та надає їм додатково {2}% імовірності протидіяти ефектам розсіювання.#by {1}#{2}% chance" }, -- Vile Poisons (Rank 1)
[16514] = { ref=16513 }, -- Vile Poisons (Rank 2)
[16515] = { ref=16513 }, -- Vile Poisons (Rank 3)
[16719] = { ref=16513 }, -- Vile Poisons (Rank 4)
[16720] = { ref=16513 }, -- Vile Poisons (Rank 5)

-- Weapon Expertise
[30919] = { "Вправність володіння зброєю", "Збільшує ваші навички володіння мечами, кулачною зброєю та кинджалами на {1}.#by {1}" }, -- Weapon Expertise (Rank 1)
[30920] = { ref=30919 }, -- Weapon Expertise (Rank 2)

-- Wound Poison
[13220] = { "Агонічна отрута", "Вкриває зброю отрутою на {1} хв. Кожен удар має {2}% імовірності отруїти ворога, знижуючи ефективність будь-якого зцілення на {3} на {4} с.#lasts for {1} min#{2}% chance#them by {3} for {4} sec" }, -- Wound Poison (Rank 1)
[13228] = { "Агонічна отрута II", ref=13220 }, -- Wound Poison II (Rank 2)
[13229] = { "Агонічна отрута III", ref=13220 }, -- Wound Poison III (Rank 3)
[13230] = { "Агонічна отрута IV", ref=13220 }, -- Wound Poison IV (Rank 4)

}

for k, v in pairs(rogue_spells) do addonTable.spell[k] = v end
