local _, addonTable = ...
addonTable.text = { -- [key] = text

["Alliance Territory"] = "Територія Альянсу",
["Combat Zone"] = "Бойова зона",
["Contested Territory"] = "Спірна територія",
["Greed"] = "Не відмовлюсь",
["Horde Territory"] = "Територія Орди",
["Meeting Stone"] = "Камінь зустрічі",
["Need"] = "Потрібно",
["Pass"] = "Відмовляюсь",
["PvP Area"] = "PvP зона",
["Sanctuary"] = "Прихисток",
["Tracking"] = "Вистежування",
["Zoom In"] = "Наблизити",
["Zoom Out"] = "Віддалити",

-- addon info texts

["addon_changelog"] = [===[
Версія 5.5 / 20.04.24
— Додано переклад:
    - Classic: 986 предметів, 3 об'єкти
    - SOD (3-я фаза): 200 завдань, 9 книжок, 46 персонажів, 66 предметів, 16 заклять, 50 об'єктів
    - TBC: 58 об'єктів

Версія 5.4 / 06.04.24
— Додано переклад 517 завдань: півострів Пекельного Вогню (93%), болота Занґар (2%), цитадель Пекельного Вогню (31%), оновлення TBC та Wrath для Classic локацій
— Додано переклад 539 персонажів, 1320 предметів
— Додано переклад 3-ої фази SOD (персонажі, предмети, закляття, руни та гравіювання)
— Оновлено підтримувану версію гри для Classic (1.15.2)

Версія 5.3 / 09.03.24
— Додано переклад Classic: 56 персонажів, 24 предметів
— Додано переклад 2-ої фази SOD: 108 завдань, 46 персонажів, 539 предметів, 45 об'єктів, 57 гравіювань та багато класових заклять
— Додано переклад TBC: 81 об'єкту

Версія 5.2 / 10.02.24
— Додано переклад 202 завдань: острів Кривавої Мли, класові завдання TBC та Wrath
— Додано переклад 446 персонажів, 1480 предметів, 2 локацій
— Виправлено lua-помилку з підказками деяких рецептів
— Оновлено підтримувану версію гри для Classic (1.15.1)

Версія 5.1 / 20.01.24
— Додано переклад 124 завдань: острів Лазурової Мли, острів Кривавої Мли (67%), поля битв Wrath
— Додано переклад 2 персонажів

Версія 5.0 / 07.01.24
— Додано переклад 55 завдань TBC: Примарнокрай, острів Лазурової Мли (41%)
— Додано переклад 8 книжок SOD, 2 персонажів, 1 локації, 8 пліток
— Додану підтримку перекладу пліток (gossip)

Версія 4.9 / 30.12.23
— Додано переклад 108 завдань TBC
— Додано можливість визначити відмінювання імені персонажа гравця в налаштуваннях

Версія 4.8.2 / 25.12.23
— Виправлено помилку підключення файлу з предметами SOD (+311 предметів)

Версія 4.8.1 / 24.12.23
— Виправлено помилку з відображенням коду замість імені гравця в текстах деяких завдань

Версія 4.8 / 24.12.23
— Додано переклад 125 завдань
— Додано переклад 1976 персонажів, 29 предметів, 1 локації, 13 заклять, 91 об'єкту
— Виправлено lua-помилку з перекладом деяких плаваючих фреймів

Версія 4.7 / 10.12.23
— Додано підтримку Сезону Відкриттів (SOD)
— Додано переклад для SOD: 16 завдань, 23 персонажів, 107 предметів, 145 заклять та 108 рун
— Додано підтримку перекладу підказок порівняння предметів

Версія 4.6 / 02.12.23
— Додано переклад 3 завдань
— Додано переклад 1922 персонажів, 686 локацій, 509 заклять, 391 об'єкту
— Реалізовано переклад підказок міток на мапі світу та мінімапі
— Оновлено підтримувану версію гри для Classic (1.15.0)

Версія 4.5 / 14.11.23
— Додано переклад 27 завдань
— Додано переклад 13 персонажів, 44 предметів, 1 локації, 22 заклять

Версія 4.4 / 05.11.23
— Додано переклад 187 завдань: Наксрамаса, руїн Ан'Кіражу, храму Ан'Кіражу, завдання навали Скари
— Додано переклад 126 книжок, 544 персонажів, 1419 предметів, 550 об'єктів, 8 локації, 330 заклять
— Додано нові та виправлено помилки в існуючих закляттях мисливців (для Classic)

Версія 4.3 / 28.10.23
— Додано переклад 669 завдань: Танаріс, Зимоключ, Силітус, Грізний Молот, Чорноскельний шпиль, Розплавлене Ядро, лігво Оніксії, Зул'Ґуруб, завдання свят (Дитячий тиждень, Повечір'я святих, ярмарок Темного місяця тощо), інші завдання (репутаційні, легендарні тощо)
— Додано переклад 2 книжок, 67 предметів, 8 локації, 121 закляття
— Додано нові та виправлено помилки в існуючих закляттях чорнокнижників, їхніх прислужників та вихованців мисливців (для Classic)
— Виправлено помилку відображення випадаючого списку локацій на мапі світу (для Wrath)
— Оновлено підтримувану версію гри для Wrath (3.4.3)

Версія 4.2 / 04.10.23
— Додано переклад 237 завдань: Терниста долина, Танаріс (78%), Східні Зачумлені землі, Азшара, Силітус (6%), Стратгольм, Розплавлене Ядро (12%), лігво Чорного Крила
— Додано переклад 889 персонажів, 1511 предметів, 3 локації

Версія 4.1 / 24.09.23
— Додано переклад 242 завдань: Грізний Молот (12%), Західні Зачумлені землі, Зимоключ (17%), Спустошені землі, Стратгольм (29%), Східні Зачумлені землі (43%), Танаріс (64%), Чорноскельна гора, Чорноскельні надра, Чорноскельний шпиль (27%), Школоманс
— Додано переклад 10 книжок, 93 персонажів, 21 локації, 132 предметів, 662 заклять
— Додано нові закляття, а в існуючих виправлено помилки, числові значення та оновлено формулювання в описах для всіх класів, окрім чорнокнижників і мисливців (для Classic)
— Оновлено спосіб розташування вікна з перекладом в журналі завдань; тепер зміна розміру вікна завдань іншими аддонами має коректно працювати

Версія 4.0 / 27.08.23
— Додано переклад 904 завдань:
    - локації Східних Королівств: Випалена ущелина, височина Араті, Внутрішні землі, Західні Зачумлені землі (24%), Палаючий степ, Сквернолісся, Східні Зачумлені землі (3%)
    - локації Калімдору: Азшара (21%), Бруднолипка трясовина, Зимоключ (12%), кратер Ун'Ґоро, оплот Деревопузих, Спустошище, Танаріс (55%), Фералас
    - підземелля: Зул'Фаррак, Мародон, храм Атал'Гаккар, Чорноскельні надра (2%), Чорноскельний шпиль (13%)
    - рейд Зул'Ґуруб (1%)
    - всі поля битв
    - всі професії
— Додано переклад 12 книжок, 5 персонажів, 4 локацій
— Робота з талантами класів:
    - Виправлено помилку в вікні талантів коли переклад відображався до невірного закляття
    - Виправлено багато числових значень заклять у воїнів та магів (для Classic)
    - Додано ID для талантів воїнів (без Wrath-перекладу)
— Виправлено lua-помилку при вході в гру
— Оновлено підтримувану версію гри для Classic (1.14.4) та Wrath (3.4.2)

Версія 3.9 / 01.06.23
— Додано переклад 4 завдань: Танаріс (1%), тіснина Боєпісні (5%)
— Додано переклад 880 персонажів

Версія 3.8 / 22.05.23
— Додано переклад 1246 завдань:
    - локації Східних Королівств: Багрянокряжові гори, Випалена ущелина (15%), височина Араті (6%), Залізогарт, передгір'я Гіллзбраду, Смерколісся, Штормовій
    - локації Калімдору: Громовий Бескид, Дарнас, Каміннопазуристі гори, Орґріммар, Степи, Темнобережжя, Тисяча Шипів, Ясенеділ
    - підземелля: Багряний монастир, Гномреґан, крааль Бритвоболотих, Мертві копальні, нори Бритвоболотих, Плачучі печери, Ульдаман, Чорноскельні надра, Штормовійська в'язниця
    - класи: друїд, жрець, маг, мисливець, паладин, пройдисвіт, чорнокнижник, шаман
— Додано переклад 26 книжок, 32 персонажів, 1568 предметів, 7 об'єктів, 12 локацій
— Додано вікно налаштувань: головне меню > Interface Options > AddOns > ClassicUA
— Додано підтримку команди чату "/ua", відкриває вікно налаштувань
— Оновлено підтримувану версію Wrath-клієнта гри до 3.4.1

Версія 3.7 / 10.12.22
— Додано переклад 72 завдань: воїн (100%)
— Додано переклад 75 персонажів, 92 предметів, 10 об'єктів, 4 локації

Версія 3.6 / 22.10.22
— Додано переклад 17 завдань: Заболоття (100%), шаман (47%)
— Додано переклад 12 книжок, 54 персонажів, 9 предметів, 6 об'єктів

Версія 3.5 / 02.10.22
— Додано переклад 24 завдань: Заболоття (72%), шаман (34%)
— Додано переклад 28 персонажів, 20 предметів, 1 локація

Версія 3.4 / 03.09.22
— Додано переклад 39 завдань: Заболоття (50%), друїд (57%)
— Додано переклад 56 книжок, 96 персонажів, 103 предметів, 10 об'єктів

Версія 3.3.1 / 31.08.22
— Додано підтримку Wrath-клієнта гри

Версія 3.3 / 20.08.22
— Додано переклад 14 завдань: Тисяча Шипів (21%)
— Додано переклад 9 книжок, 28 персонажів, 25 предметів, 2 об'єкти
— Реалізовано переклад фрейму цілі та плаваючих фреймів (по замовчуванню активація по Alt/Ctrl/Shift + V)
— Текст в підказках тепер відображається відповідним кольором, тобто ефекти "Використання", "При спорядженні", "Шанс при влучанні" — зеленим, особливий опис — золотим
— Виправлено помилку коли перекладалися приручені звірі інших гравців

Версія 3.2 / 13.08.22
— Додано переклад 86 завдань: Дун-Морог (100%), Лох-Модан (100%), Залізогарт (2%), Випалена ущелина (3%)
— Додано переклад 307 персонажів (виправлено багато старих, тепер всі), 50 предметів, 1 локація
— Додано можливість мати переклад опису персонажа відповідний до статі (наприклад "корчмар/корчмарка")

Версія 3.1 / 02.08.22
— Додано переклад 34 завдань: болото Скорбот (100%), Степи (70%), Багрянокряжові гори (33%), Заболоття (7%)
— Додано переклад 26 персонажів, 7 предметів

Версія 3.0 / 31.07.22
— Додано переклад 44 завдань: Безплідні краї (100%), Степи (68%)
— Додано переклад 1 завдання на острові Лазурової Димки (доповнення TBC)
— Додано переклад 1 персонажа, 25 предметів, 35 заклять (виправлено деякі існуючі), 67 локацій

Версія 2.9.2 / 04.07.22
— Виправлено помилку з расами доповнення TBC (додано переклад відмінків для дренеїв та кривавих ельфів)

Версія 2.9.1 / 02.07.22
— Додано підтримку TBC-клієнта гри
— Оновлено підтримувану версію гри: 1.14.3 (Classic) та 2.5.4 (TBC)
— Виправлено помилку коду з SetBackdrop

Версія 2.9 / 24.10.20
— Додано переклад 2 завдань: Безплідні краї (47%)
— Додано переклад 1218 персонажів (виправлено багато старих, не всі)

Версія 2.8 / 04.10.20
— Додано переклад 17 завдань: Безплідні краї (42%)

Версія 2.7 / 08.08.20
— Додано переклад 18 завдань (Альтерацькі гори, Альтерацька долина, Безплідні краї 2%) та 16 локацій

Версія 2.6 / 12.07.20
— Додано переклад 12 завдань (Срібнохвойний праліс) та 53 локацій
— Оновлено підтримувану версію гри до 1.13.5

Версія 2.5 / 04.07.20
— Додано переклад 17 завдань (Срібнохвойний праліс 70%) та 24 локацій

Версія 2.4 / 27.06.20
— Додано переклад 13 завдань (Срібнохвойний праліс 30%), 3 персонажів, 1 предмета та 54 локацій

Версія 2.3 / 20.06.20
— Додано переклад 40 локацій

Версія 2.2 / 13.06.20
— Додано переклад 23 завдань (Підмістя, прірва Лютого Полум'я), 40 персонажів, 28 предметів та 92 локацій
— Додано логотип аддону

Версія 2.1 / 06.06.20
— Додано переклад 1 предмету, 1 книжки та 63 локацій
— Реалізовано переклад назви локації на мапі світу при наведені мишкою

Версія 2.0 / 30.05.20
— Додано переклад 23 завдань (Західний край) та 128 локацій
— Реалізовано переклад підказки на мапі вибору пункту призначення польоту

Версія 1.9 / 23.05.20
— Додано переклад 25 завдань (Ельвиннський ліс, Західний край 34%), 1 книжки, 1 предмета та 137 локацій
— Реалізовано переклад випадаючих списків локацій на мапі світу

Версія 1.8 / 16.05.20
— Додано переклад 17 завдань (Тірісфальське перелісся, фортеця Тінеклик), 1 книжки, 2 предметів
— Додано підтримку перекладу локацій: переклад відображається в підказках об'єктів (наприклад дорожній вказівник), над мінікартою, по середині екрану (коли гравець переходить в нову локацію); додано переклад 288 локацій
— Додано стилізовані шрифти з літерами "ї", "ґ", "є"; шрифт заголовка завдання тепер відрізняється від основного тексту завдання
— Оновлено формат виводу статистики при завантаженні аддону, тепер відображає загальну суму квестів замість окремих значень по фракціям

Версія 1.7 / 09.05.20
— Додано переклад 22 завдань (Тірісфальське перелісся 70%), 1 книжки та 2 предметів
— Виправлено помилку коли відображався фрейм із попереднім завдання в момент початку розмови з новим персонажем

Версія 1.6 / 01.05.20
— Додано переклад 41 завдання (Степи 45%, Тірісфальське перелісся 23%, Підмістя 37%)

Версія 1.5 / 25.04.20
— Додано переклад 78 завдань (Мулґор, Місячна галявина, Степи 24%, Багрянокряжові гори 16%)
— Додано розділ зі списком причетних до проекту в README-файл
— Оновлено підтримувану версію гри до 1.13.4

Версія 1.4 / 26.01.20
— Додано переклад 1 закляття та 6 персонажів, виправлено переклад 1 завдання Орди
— Додано підтримку ключа "ref" до об'єктів предметів
— Оновлено підтримувану версію гри до 1.13.3
— Виправлено помилку коли переклад в підказці починався з малої літери

Версія 1.3 / 08.12.19
— Додано переклад 269 заклять (воїн)

Версія 1.2 / 27.10.19
— Додано переклад 606 заклять (34 оновлено), 62 предметів (1 оновлено) та 2 персонажів
— Додано підтримку перекладу об'єктів: переклад відображається в підказках при наведені на нього мишкою; додано переклад 40 об'єктів (всі трави)

Версія 1.1 / 13.10.19
— Додано переклад 427 заклять (2 оновлено), 40 предметів та 153 персонажів (2 оновлено)
— Реалізовано підтримку шаблонів пошуку для заклять та предметів (для коректної локалізації тексту з динамічними числовими значеннями)

Версія 1.0 / 06.10.19
— Додано переклад 234 заклять (6 оновлено) та 24 предметів
— Додано фемінітиви форми для класів

Версія 0.9 / 29.09.19
— Додано переклад 33 завдань Альянсу (Тельдрассіль), 90+ заклять (70+ оновлено), 30 предметів та 2 персонажів

Версія 0.8 / 22.09.19
— Додано переклад 70+ предметів та 70+ персонажів
— Оновлено переклад 22 завдань Орди та 650+ заклять

Версія 0.7 / 15.09.19
— Додано переклад 40 завдань (Ельвиннський ліс)
— Виправлення помилок роботи аддону

Версія 0.6 / 08.09.19
— Додано переклад до багатьох предметів та заклять, серед них:
    - алхімія, травництво, гірництво (інструменти, рецепти, зілля, флакони, трави, руди, каміння, дорогоцінні камені тощо)
    - деякі закляття мисливців та шаманів
    - закляття навичок володіння зброєю
— Виправлено помилку з прокручуванням тексту в фреймі завдання
— Виправлено помилку коду з SelectQuestLogEntry

Версія 0.5 / 29.08.19
— Додано підтримку перекладу аур (позитивні та негативні ефекти, що лишаються на цілі після застосування закляття)
— Реалізовано фрейм із перекладом завдання вибраного в журналі завдань

Версія 0.4 / 26.08.19
— Додано та змінено багато перекладів
— Збільшено розмір шрифту тексту завдання
— Додано друк версії в чат при завантаженні аддону
— Виправлено помилку з розміром фрейму завдання
— Виправлено помилку коли фрейм завдання відображався порожнім якщо немає перекладу

Версія 0.3 / 22.08.19
— Додано підтримку перекладу книжок
— Перехід на офіційний Classic-клієнт гри та реєстрація аддону на CurseForge

Версія 0.2 / 11.08.19
— Реалізовано фрейм із перекладом завдання під час діалогу з персонажем
— Реалізовано підтримку кодів "ім'я", "раса", "клас", "стать"
— Додано теку entries та окремі файли для рас, класів, завдань, заклять, предметів та персонажів

Версія 0.1 / 03.08.19
— Перша версія, базова функціональність
]===],

["addon_contributors"] = [===[
— Annakonda — переклад нпц і предметів, переклад завдань Ельвиннського лісу та Степів, переклад книжок
— Annielis — переклад завдань Ясенедолу
— Bellany — переклад завдань шаманів та воїнів
— Cyrax — переклад і вичитування заклять
— Danpar — ідея проекту, пошук перекладачів, організація перекладу завдань, переклад персонажів і предметів, переклад завдань Дуротара, Мулґора, Альтерацької долини
— Daria — переклад завдань прірви Лютого Полум'я, Безплідних країв, Заболоття
— Imakantie — переклад завдань шаманів та Заболоття
— It_is_me1987 — шрифти
— Jakanis — переклад завдань Дун-Морога, Лох-Модану, Заболоття, Штормовою, Залізогарта, Орґріммара, Багрянокряжжя, Темнобережжя, Степів, Громового Бескиду, Дарнасу, воїнів, паладинів, друїдів, мисливців, шаманів; переклад персонажів, предметів, зон, об'єктів та заклять; вичитування завдань і книжок. Організація й підтримка перекладу окремих доповнень та сезонів.
— JeffyOLOLO — виправлення помилок в коді аддона
— JohnTau — вичитування завдань
— Jolgeirr — переклад завдань Срібнохвойного пралісу, Плачучих печер
— Julia_Logwin — переклад завдань передгір'їв Гіллзбраду
— Marinets — переклад завдань Смерколісся, Спустошених земель, Бруднолипкої трясовини, Сквернолісся, Випаленої ущелини, Внутрішніх земель, Танаріса, кратера Ун'Ґоро, Палаючого степу, Азшари, Зимоключа, оплоту Деревопузих, Зул'Ґуруба, магів, чорнокнижників, професій, щорічних свят, книжок (N-Z)
— MathLina — переклад завдань Тисячі Шипів, переклад віршів, вичитування завдань і книжок
— MrRay — переклад завдань Місячної галявини
— Orney — переклад завдань Тельдрассіля, вичитування завдань, переклад заклять
— Osterro — переклад персонажів, переклад завдань Багрянокряжжя
— Raketa — переклад завдань Тірісфальського перелісся, Альтерацьких гір, височини Араті та Підмістя
— Regis — переклад персонажів
— Saksagan — вичитування завдань
— Shadowfank — переклад завдань Каміннопазуристих гір, Тернистої долини, Спустошища, Сілітуса, Чорноскельних надр, Чорноскельного шпиля, Грізного Молоту, Мародона, Школоманса, храму Атал'Гаккар, Зул'Фаррака, Альтерацької долини, полів битв, книжок (A-M)
— Skye — програмування аддона
— Temcher0 — переклад завдань Ульдаману
— Terramoor — переклад завдань друїдів
— Tetisheri — організація перекладу заклять, переклад заклять і професій, вичитування заклять і завдань, термінологія (словник), логотип
— Tsubylko — переклад персонажів і предметів
— Velvet_Hazard — переклад завдань Тисячі Шипів, Західних та Східних Зачумлених земель, Розплавленого Серця, лігва Оніксії, лігва Чорнокрилих, Наксрамаса, руїн та храму Ан'Кіражу, жерців та пройдисвітів
— Zrada — переклад заклять і предметів, переклад завдань Західного краю, болота Скорбот, Дун-Морога
— Zyxer — виправлення помилок в коді аддона
]===],

["addon_char_desc"] = [===[
Ви можете визначити відмінювання імені вашого персонажа. Деякі переклади містять коди з відмінком. Якщо відмінок не задано, буде використано називний. Якщо називний не задано, буде використано оригінальне ім'я персонажа.

Внесені зміни будуть помітні лише після перезавантаження інтерфейсу гри.
]===],

}
