local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "ruRU")
if not L then return end

--1 General tab--1 Вкладка "Общие"
L["Description"] = "Описание"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "Если вы нажмете один из этих символов на карте с левой кнопкой мыши, откроется связанное руководство приключений или карта цели"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "Если вы нажмете на несколько символов с левой кнопкой мыши, карта, на которой расположены подземелья, будет открыта"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "Измените все символы на всех картах на подземелье, рейд или несколько символов. Кроме того, опция прохода деактивируется повсюду, и символы соответствующих рейдов, подземелья или несколько вариантов добавляются (карта Dungeon остается неизменной из всего этого)"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "Показывать разные значки на разных картах. Все значки кликабельны (кроме мини-карты) и имеют функцию. Значки на карте работают как с клавишей Shift, так и без нее. Просто измените функцию Shift!"
L["General"] =  "Общий" 
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Общие настройки, применимые одновременно к карте Азерота/Континента/Подземелья"
L["General settings / Additional functions"] = "Общие настройки/Дополнительные функции"
L["Shift function!"] = "Функция переключения!"
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."] = "Если эта функция включена, вы должны нажать Shift перед тем, как щелкнуть левой или правой кнопкой мыши, чтобы взаимодействовать со значками MapNotes. Но это имеет преимущество, поскольку в игре так много значков, в том числе из других дополнений, поэтому вы случайно не нажмете на значки MapNotes. символ и измените карту или по ошибке создайте точку TomTom"
L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"] = "Теперь вам всегда нужно нажимать кнопку Shift + мыши одновременно, чтобы взаимодействовать с символами MapNotes"
L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"] = "Теперь вы можете взаимодействовать с символами MapNotes без необходимости нажимать кнопку Shift + мыши одновременно"
L["Settings apply to the zone map and the mini map at the same time"] = "Настройки применяются к карте зоны и мини -карте одновременно"
L["symbol size"] = "размер символа"
L["Changes the size of the icons"] = "Изменяет размер иконок"
L["symbol visibility"] = "видимость символа"
L["Changes the visibility of the icons"] = "Изменяет видимость значков"
L["hide minimap button"] = "скрыть кнопку мини-карты"
L["Hide the minimap button on the minimap"] = "Скрыть кнопку миникарты на миникарте"
L["hide MapNotes!"] = "скрыть заметки MapNotes!"
L["-> Hide all MapNotes icons <-"] = "-> Скрыть все значки MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Отключите MapNotes, все значки будут скрыты на каждой карте и все категории будут отключены"
L["Adventure guide"] = "Путеводитель по приключениям"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Нажатие левой кнопкой мыши на рейд MapNotes (зеленый), подземелье (синий) или несколько значков (зеленый и синий) на карте открывает соответствующую карту подземелья или рейда в Путеводителе приключений (карта не должна быть открыта в полноэкранном режиме)"
L["TomTom waypoints"] = "Путевые точки TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Shift+щелчок правой кнопкой мыши по рейду, подземелью, множественному символу, порталу, кораблю, дирижаблю, проходу или выходу из MapNotes на карте континента или подземелья создает путевую точку TomTom к этой точке (но для этого должно быть установлено дополнение TomTom) )"
L["extra information"] = "Дополнительная информация"
L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"] = "Отображает дополнительную информацию для подземелий или рейдов. Например, количество убитых боссов"
L["gray single"] = "Индивидуальный серый"
L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"] = "Только окрашенные отдельные точки назначенных подземелий и рейдов в сером (если у вас есть идентификатор)"
L["gray all"] = "Все серые"
L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"] = "Раскрасьте все! Присвоенные подземелья и рейды серые также несколько точек (если у вас есть идентификатор)"
L["enemy faction"] = "вражеская фракция"
L["Shows enemy faction (horde/alliance) icons"] = "Показывает значки вражеской фракции (орды/альянса)"
L["Informations"] = "Информация"
L["Chat commands:"] = "Команды чата:"
L["to show MapNotes info in chat: /mn, /MN"] = "чтобы показать информацию MapNotes в чате: /mn, /MN"
L["to open MapNotes menu: /mno, /MNO"] = "чтобы открыть меню MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "чтобы закрыть меню MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "чтобы отобразить кнопку мини-карты: /mnb или /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "чтобы скрыть кнопку мини-карты: /mnbh или /MNBH"
--2 Azeroth tab specific --2 Специальная вкладка Азерот
L["Azeroth map"] = "Карта Азерота"
--3 Continent tab specific --3 Конкретная вкладка "Континент"
L["Continent map"] = "Карта континента"
--4 Zone tab specific --4 Вкладка "Зона"
L["Zone / Minimap"] = "Зоны / мини -карта"
--5 DungeonMap Tab specific --5 Специальная вкладка DungeonMap
L["Dungeon map"] =  "Карта подземелья" 
--6 Map Tabs together --6 вкладок карты вместе
L["Activate icons"] = "Активировать значки"
L["Show individual icons"] = "Показать отдельные значки"
L["Exits"] = "Выходы"
L["Raids"] = "Рейды"
L["Dungeons"] = "Подземелья"
L["Passages"] = "Проходы"
L["Multiple"] = "Несколько"
L["Portals"] = "Порталы"
L["Zeppelins"] = "Цеппелины"
L["Ships"] = "Корабли"
L["Transport"] = "Транспорт"
L["Ogre Waygate"] = "Огр Вейгейт"
L["Old Instances"] = "Старые экземпляры"
L["Show icons of passage on this map"] = "Показать значки проезда на этой карте"
L["Show icons of raids on this map"] = "Показать значки рейдов на этой карте"
L["Show icons of dungeons on this map"] = "Показать значки подземелий на этой карте"
L["Show icons of multiple on this map"] = "Показать значки нескольких на этой карте"
L["Show icons of portals on this map"] = "Показать значки порталов на этой карте"
L["Show icons of zeppelins on this map"] = "Показать значки дирижаблей на этой карте"
L["Show icons of ships on this map"] = "Показать значки кораблей на этой карте"
L["Show all MapNotes for a specific map"] = "Показать все заметки MapNotes для конкретной карты"
L["Show icons of MapNotes dungeon exit on this map"] = "Показать значки выхода из подземелья MapNotes на этой карте"
L["Enables the display of all possible icons on this map"] = "Включает отображение всех возможных значков на этой карте"
L["Show icons of passage to raids and dungeons on this map"] = "Показать на этой карте иконки перехода в рейды и подземелья"
L["Show icons of other transport possibilities on this map"] = "Показать значки других транспортных возможностей на этой карте"
L["Show Ogre Waygate icons from Garrison on this map"] = "Показать на этой карте значки Огрских ворот из Гарнизона"
L["Activates the display of all possible icons on this map"] = "Активирует отображение всех возможных значков на этой карте"
L["Show icons of multiple (dungeons,raids) on this map"] = "Показать значки нескольких (подземелий, рейдов) на этой карте"
L["Show icons of other transport possibilities on the continent and minimap"] = "Показать значки других транспортных возможностей на континенте и мини-карте"
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей Запределья на этой карте"
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей Дренора на этой карте"
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей Shadowlands MapNotes на этой карте"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей Калимдора на этой карте"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей Восточного Королевства на этой карте"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей Нордскола на этой карте"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей Пандарии на этой карте"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей Зандалара на этой карте"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей Кул-Тираса на этой карте"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей на этой карте"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей на этой карте"
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "Определенные значки могут отображаться или не отображаться. Если в этой категории активирована опция (Активировать значки)"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Показать ванильные версии подземелий и рейдов, таких как Наксрамас, Некроситет или Монастырь Алого ордена, для которых требуются достижения или другие вещи"
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "Отдельные символы, которые слишком близки к другим символам на этой карте, не размещены на 100 % точно на эту карту! Для более подробных координат, используйте точки на карте зоны"
--7 Maps --7 карт
L["Kalimdor"] = "Калимдор"
L["Eastern Kingdom"] = "Восточное королевство"
L["Outland"] = "Запределье"
L["Northrend"] = "Нордтренд"
L["Pandaria"] = "Пандария"
L["Draenor"] = "Дренор"
L["Broken Isles"] = "Расколотые острова"
L["Zandalar"] = "Зандалар"
L["Kul Tiras"] = "Кул Тирас"
L["Shadowlands"] = "Земли теней"
L["Dragon Isles"] = "Драконьи острова"
--8 Core specific --8 специфичных для ядра
L["Shift function"] = "Функция переключения"
L["-> MiniMapButton <-"] = "-> MiniMapButton <-"
L["MapNotes menu window"] = "Окно меню MapNotes"
L["All set icons have been restored"] = "Все установленные значки восстановлены"
L["All MapNotes icons have been hidden"] = "Все значки MapNotes скрыты"
L["is activated"] = "активирован"
L["is deactivated"] = "деактивирован"
L["are shown"] = "показаны"
L["are hidden"] = "спрятаны"
L["Left-click => Open/Close"] = "Клик левой кнопкой мыши => Открыть/Закрыть"
L["Right-click => Open/Close"] = "Щелкните правой кнопкой мыши => Открыть/Закрыть"
L["Shift + Right-click => hide"] = "Shift + щелчок правой кнопкой мыши => скрыть"
--9 transport --9 транспорт
L["icons"] = "иконки"
L["Exit"] = "Выход"
L["Entrance"] = "Вход"
L["Passage"] = "Проход"
L["Portal"] = "Портал"
L["Ship"] = "Корабль"
L["Zeppelin"] = "дирижабль"
L["Portalroom"] = "Портальная комната"
L["The Dark Portal"] = "Темный портал"
L["Captain Krooz"] = "Капитан Крооз"
L["Use the Old Keyring"] = "Используй старый брелок"
L["Travel"] = "Путешествовать"
L["Old Keyring"] = "Старый брелок"
L["Old Version"] = "Старая версия"
L["Secret Portal"] = "Секретный портал"
L["Secret Entrance"] = "Тайный вход"
L["Ogre Waygate to Garrison"] = "Врата огра в гарнизон"
L["in the basement"] = "в подвале"
L["(on the tower)"] = "(на башне)"
L["(inside portal chamber)"] = "(внутри портальной камеры)"
L["(inside building)"] = "(внутри здания)"
--10 places --10 мест
L["Graveyard"] = "Кладбище"
L["Library"] = "Библиотека"
L["Cathedral"] = "Кафедральный собор"
L["Armory"] = "Оружейная палата"
L["Ashran"] = "Ашран"
L["The Timeways"] = "Дороги времени"
L["Vol'mar"] = "Вольмар"
L["Zuldazar"] = "Зулдазар"
L["Thunder Bluff"] = "Громовой Утес"
L["Silvermoon City"] = "Город Луносвета"
L["Boralus, Tiragarde Sound"] = "Боралус, Тирагардское поморье"
L["Valdrakken"] = "Вальдраккен"
L["Badlands"] = "Бесплодные земли"
L["Oribos"] = "Орибос"
L["Azsuna"] = "Азсуна"
L["Uldum"] = "Ульдум"
L["Dazar'alor"] = "Дазар'алор"
L["Shattrath City"] = "Город Шаттрат"
L["Echo Isles, Durotar"] = "Острова Эха, Дуротар"
L["Silithus"] = "Силитус"
L["Nazjatar"] = "Назжатар"
L["Emerald Dream"] = "Изумрудный сон"
L["Thunder Bluff"] = "Громовой Утес"
L["Howling Fjord"] = "Воющий фьорд"
L["Ruins of Lordaeron"] = "Руины Лордерона"
L["Isle of Thunder"] = "Остров Грома"
L["Twilight Highlands"] = "Сумеречное нагорье"
L["Vashj'ir"] = "Вайш'ир"
L["The Waking Shores, Dragon Isles"] = "Пробуждающиеся берега, Драконьи острова"
L["Shado-Pan Garrison, Townlong Steppes"] = "Гарнизон Шадо-Пан, Танлунские степи"
L["Grom'gol, Stranglethorn Vale"] = "Гром'гол, Тернистая долина"
L["Exodar"] = "Экзодар"
L["Jade Forest"] = "Нефритовый лес"
--11 Specific --11 Конкретные
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "Показывает расположение рейдов, подземелий, порталов, значков кораблей и дирижаблей на разных картах"
L["(Wards of the Dread Citadel - Achievement)"] = "(Обереги Цитадели Ужаса – Достижение)"
L["(Memory of Scholomance - Achievement)"] = "(Память о Некроситете - Достижение)"
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "(оно отображается в игре только в том случае, если ваша фракция в настоящее время оккупирует Башал'Аран)"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Этот портал в Нагорье Арати активен только в том случае, если ваша фракция в данный момент оккупирует Ар'горок"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Этот портал Темных берегов активен только в том случае, если ваша фракция в настоящее время оккупирует Башал'Аран"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Гранд-адмирал Джес-Терет) отвезет вас в Вол'Дун, Назмир или Зулдазар"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Ужасающий адмирал Рваный Парус) доставит вас в Друствар, Тирагардское поморье или в долину Штормов"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Старый брелок \n Вы получаете Алый ключ в \n [Наполненной добычей тыкве] в [Конец Хэллоуина] или в [Аукционном доме] \n теперь вы можете активировать [Старый брелок] здесь \n, чтобы активировать старый брелок версии подземелий из Монастыря Алого ордена"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "Появляется первым после определенного прогресса в инстансе\n или требует определенного достижения" 