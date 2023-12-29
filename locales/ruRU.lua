local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "ruRU")
if not L then return end

-- 0 = basics
-- 1 = General tab
-- 2 = Azeroth tab
-- 3 = Continent tab
-- 4 = Dungeon tab
-- 5 = Entrance/Exit/Passage nodes
-- 6 = Transport basics
-- 7 = dungeons/raids

--0 basics
L["Shows locations of raids, dungeons, portals ,ship and zeppelins symbols on different maps"] = "Показывает расположение рейдов, подземелий, порталов, символы кораблей и дирижаблей на разных картах"
L["MapNotes menu window"] = "Окно меню MapNotes"
L["All set symbols have been restored"] = "Все установленные символы восстановлены"
L["All MapNotes symbols have been hidden"] = "Все символы MapNotes скрыты"
L["is activated"] = "активирован"
L["is deactivated"] = "деактивирован"
L["are shown"] = "показаны"
L["are hidden"] = "скрыты"
L["symbols"] = "символы"
L["Left-click => Open/Close"] = "Клик левой кнопкой мыши => Открыть/Закрыть"
L["Right-click => Open/Close"] = "Щелкните правой кнопкой мыши => открыть/закройте"
L["Shift + Right-click => hide"] = "Shift + щелчок правой кнопкой мыши => скрыть"
L["(also opens MapNotes if hiding was unwanted)"] = "(открывает MapNotes, если скрытие было нежелательным)"


--1
L["General"] = "Общий"  --General tab
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Общие настройки, применимые одновременно к карте Азерота/Континента/Подземелья"
L["General settings / Additional functions"] = "Общие настройки/Дополнительные функции"
L["-> MiniMapButton <-"] = "-> Кнопка iniMap <-"
L["hide minimap button"] = "скрыть кнопку мини-карты"
L["Show the minimap button on the minimap"] = "Показать кнопку миникарты на миникарте"
L["Hide the minimap button on the minimap"] = "Скрыть кнопку миникарты на миникарте"
L["hide MapNotes!"] = "скрыть MapNotes!"
L["-> Hide all MapNotes symbols <-"] = "-> Скрыть все символы MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Отключите MapNotes, все значки будут скрыты на каждой карте и все категории будут отключены"
L["Resizes symbols on the azeroth, continent, zone, dungeon and minimap"] = "Изменяет размеры символов на Азероте, континенте, зоне, подземелье и мини-карте"
L["symbol visibility"] = "видимость символа"
L["Changes the visibility of the symbols"] = "Изменяет видимость символов"
L["Adventure guide"] = "Путеводитель по приключениям"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Щелчок левой кнопкой мыши по рейду MapNotes (зеленый), подземелью (синий) или нескольким значкам (зеленый и синий) на карте открывает соответствующую карту подземелья или рейда в Путеводителе приключений (карта не должна быть открыта в полноэкранном режиме)"
L["TomTom waypoints"] = "Путевые точки TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Shift+щелчок правой кнопкой мыши по рейду, подземелью, множественному символу, порталу, кораблю, дирижабле, проходу или выходу из MapNotes на карте континента или подземелья создает путевую точку TomTom к этой точке (но для этого должно быть установлено дополнение TomTom)"
L["killed Bosses"] = "убитых боссов"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "Для подземелий и рейдов, в которых вы убивали боссов и поэтому вам был присвоен идентификатор, этот символ на карте Азерота и континента покажет вам количество убитых или оставшихся боссов, как только вы наведете курсор на этот символ подземелья или рейда (например 2/8 мифический, 4/7 героический и т. д.)"
L["gray symbols"] = "несколько точек"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "Если вы назначены в подземелье или рейд и у вас есть идентификатор, эта опция сделает значок подземелья или рейда серым, пока этот идентификатор не будет сброшен, чтобы вы могли видеть, какое подземелье или рейд вы начали или завершили"
L["multiple points"] = "серый несколько точек"
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "Окрашивает мультиточки подземелий и/или рейдов в серый цвет, если вы назначены в какое-либо подземелье или рейд этой мультиточки и у вас есть идентификатор, чтобы вы могли видеть, что вы начали или завершили любое подземелье или рейд этой мультиточки"
L["enemy faction"] = "вражеская фракция"
L["Shows enemy faction (horde/alliance) symbols"] = "Также отображаются символы вражеской фракции (орды/альянса)"
L["Old Instances"] = "Старые экземпляры"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Показать ванильные версии подземелий и рейдов, таких как Наксрамас, Некроситет или Монастырь Алого ордена, для которых требуются достижения или другие вещи"
L["Informations"] = "Информация"
L["Chat commands:"] = "Команды чата:"
L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"] = "чтобы показать информацию MapNotes в чате: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"
L["to open MapNotes menu: /mno, /MNO"] = "чтобы открыть меню MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "чтобы закрыть меню MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "чтобы показать кнопку мини-карты: /mnb или /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "чтобы скрыть кнопку мини-карты: /mnbh или /MNBH"


--2
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "Информация: отдельные символы Азерота, расположенные слишком близко к другим символам на карте Азерота, не размещаются на карте Азерота на 100% точно! Для точной координации используйте точки на карте континента или карте зон"
L["Azeroth map"] = "Карта Азерота"  --Azeroth tab
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Настройки карты Азерота. Определенные символы могут отображаться или не отображаться. Если в этой категории активирована опция (Активировать символы)"
L["Activate symbols"] = "Активировать символы"
L["Activates the display of all possible symbols on the Azeroth map"] = "Активирует отображение всех возможных символов на карте Азерота"
L["symbol size"] = "размер символа"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "Изменяет размеры символов на карте зоны, карте Азерота и мини-карте"
L["Show individual symbols"] = "Показать отдельные символы"
L["Raids"] = "Рейды"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the Azeroth map"] = "Показать символы рейдов на карте Азерота"
L["Dungeons"] = "Подземелья"  -- Dungeon anzeigen
L["Show symbols of dungeons on the Azeroth map"] = "Показать символы подземелий на карте Азерота"
L["Multiple"] = "Несколько"  -- Gemischte anzeigen
L["Show symbols of multiple on the Azeroth map"] = "Показать символы множественности на карте Азерота"
L["Portals"] = "Порталы"  -- Portale anzeigen
L["Show symbols of portals on the Azeroth map"] = "Показать символы порталов на карте Азерота"
L["Zeppelins"] = "Цеппелины"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the Azeroth map"] = "Показать символы дирижаблей на карте Азерота"
L["Ships"] = "Корабли"  -- Schiffe anzeigen
L["Show symbols of ships on the Azeroth map"] = "Показать символы кораблей на карте Азерота"
L["Show all MapNotes for a specific map"] = "Показать все заметки MapNotes для конкретной карты"
L["Kalimdor"] = "Калимдор"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Kalimdor MapNotes на карте Азерота"
L["Eastern Kingdom"] = "Восточное Королевство"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Восточного Королевства на карте Азерота"
L["Northrend"] = "Нордскол"  -- Nordend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Northrend MapNotes на карте Азерота"
L["Pandaria"] = "Пандария"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Pandaria MapNotes на карте Азерота"
L["Zandalar"] = "Зандалар"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Zandalar MapNotes на карте Азерота"
L["Kul Tiras"] = "Кул Тирас"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Кул-Тираса на карте Азерота"
L["Broken Isles"] = "Расколотые острова"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей на карте Азерота"
L["Dragon Isles"] = "Драконьи острова"  -- Dracheninseln anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей на карте Азерота"


--3
L["Continent map"] = "Карта континента"  --Continent tab
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Настройки карты континента. Определенные символы могут отображаться или не отображаться. Если в этой категории активирована опция (Активировать символы)"
L["Activate symbols"] = "Активировать символы"
L["Activates the display of all possible symbols on the continent map"] = "Активирует отображение всех возможных символов на карте континента"
L["symbol size"] = "размер символа"
L["Resizes symbols on the continent map"] = "Изменяет размеры символов на карте континента"
L["Show individual symbols"] = "Показать отдельные символы"
L["Raids"] = "Рейды"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the continant map and minimap"] = "Показывать символы рейдов на карте континента и миникарте"
L["Dungeons"] = "Подземелья"  -- Dungeon anzeigen
L["Show symbols of dungeons on the continant map and minimap"] = "Отображать символы подземелий на карте континента и мини-карте"
L["Multiple"] = "Несколько"  -- Gemischte anzeigen
L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"] = "Показывать символы нескольких (подземелий,рейдов) на карте континента и мини-карте"
L["Portals"] = "Порталы"  -- Portale anzeigen
L["Show symbols of portals on the continant map and minimap"] = "Показать символы порталов на карте континента и мини-карте"
L["Zeppelins"] = "Цеппелины"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the continant map and minimap"] = "Показать символы дирижаблей на карте континента и мини-карте"
L["Ships"] = "Корабли"  -- Schiffe anzeigen
L["Show symbols of ships on the continant map and minimap"] = "Отображение символов кораблей на карте континента и мини-карте"
L["Ogre Waygate"] = "Огр Вейгейт"
L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"] = "Показать символы Огрских Врат из Гарнизона на карте континента Дренор и зоны"
L["Show all MapNotes for a specific map"] = "Показать все заметки MapNotes для конкретной карты"
L["Kalimdor"] = "Калимдор"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Kalimdor MapNotes на карте континента"
L["Eastern Kingdom"] = "Восточное Королевство"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Восточного Королевства на карте континента"
L["Outland"] = "Запределье"  -- Scherbenwelt anzeigen
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Outland MapNotes на карте континента"
L["Northrend"] = "Нордскол"  -- Northrend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Northrend MapNotes на карте континента"
L["Pandaria"] = "Пандария"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Pandaria MapNotes на карте континента"
L["Draenor"] = "Дренор"  -- Draenor anzeigen
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Draenor MapNotes на карте континента"
L["Broken Isles"] = "Расколотые острова"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей на карте континента"
L["Zandalar"] = "Зандалар"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Zandalar MapNotes на карте континента"
L["Kul Tiras"] = "Кул Тирас"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Кул-Тираса MapNotes на карте континента"
L["Shadowlands"] = "Земли Теней"  -- Schattendlande anzeigen
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Показать все символы подземелий, рейдов, порталов, дирижаблей и кораблей Shadowlands MapNotes на карте континента"
L["Dragon Isles"] = "Драконьи острова"  -- Dracheninseln anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Показать все символы Драконьих островов MapNotes подземелий, рейдов, порталов, дирижаблей и кораблей на карте континента"


--4
L["Dungeon map"] = "Карта подземелья" --DungeonMap Tab
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Настройки карты подземелья. Определенные символы могут отображаться или не отображаться. Если в этой категории активирована опция (Активировать символы). Показывает точки выхода и прохода MapNotes на карте подземелья (эти символы предназначены только для ориентации, и при нажатии на них ничего не происходит)"
L["Activate symbols"] = "Активировать символы"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Включает отображение всех возможных символов на карте подземелья (эти символы предназначены только для ориентации, и при нажатии на них ничего не происходит)"
L["Exits"] = "выходит"
L["Show symbols of MapNotes dungeon exit on the dungeon map"] = "Показывать символы выхода из подземелья MapNotes на карте подземелья"
L["Passages"] = "отрывки"
L["Show symbols of passage on the dungeon map"] = "Показать символы прохождения на карте подземелья"
L["Portals"] = "Порталы"  -- Portale anzeigen
L["Show symbols of portals on the dungeon map"] = "Показать символы порталов на карте подземелья"


--5 Entrance/Exit/Passage
L["Exit"] = "Выход"
L["Entrance"] = "Вход"
L["Passage"] = "Проход"


--6 Transport basics
L["Portal"] ="Портал"
L["Ship"] =  "Корабль" 
L["Zeppelin"] = "Дирижабль"
L["Portalroom"] = "Портальная комната"
L["(inside building)"] = "(внутри здания)"
L["(at basement)"] = "(в подвале)"
L["(inside portal chamber)"] = "(внутри портальной камеры)"
L["(on the tower)"] = "(на башне)"
-- Transport place -- Транспортные места
L["Ashran"] = "Ашран"
L["Azsuna"] = "Азсуна"
L["Boralus"] = "Боралус"
L["Boralus Harbor, Tiragarde Sound"] = "Гавань Боралуса, Тирагардское поморье"
L["Booty Bay, Stranglethorn Vale"] = "Бути-Бэй, Тернистая долина"
L["Caverns of Time"] = "Пещеры времени"
L["Drustvar"] = "Друствар"
L["Deepholm"] = "Дипхольм"
L["Dalaran"] = "Даларан"
L["Dalaran, Crystalsong Forest"] = "Даларан, Лес Хрустальной Песни"
L["Dazar'alor"] = "Дазар'алор"
L["Exodar"] = "Экзодар"
L["Echo Isles, Durotar"] = "Острова Эха, Дуротар"
L["Hellfire Peninsula"] = "Полуостров Адского Пламени"
L["Howling Fjord"] = "Воющий фьорд"
L["Hyjal"] = "Хиджал"
L["Ironforge"] = "Стальгорн"
L["Isle of Thunder"] = "Остров Грома"
L["Isle of Quel'Danas"] = "Остров Кель'Данас"
L["Lion's Watch"] = "Львиная гвардия"
L["Mechagon"] = "Мехагон"
L["Menethil Harbor, Wetlands"] = "Гавань Менетила, водно-болотные угодья"
L["Nazjatar"] = "Назжатар"
L["Nazmir"] = "Назмир"
L["Ogre Waygate to Garrison"] = "Врата огра в гарнизон"
L["Ohn'ahran Plains"] = "Равнины Он'ахран"
L["Orgrimmar"] = "Оргриммар"
L["Oribos"] = "Орибос"
L["Ruins of Lordaeron, Undercity"] = "Руины Лордерона, Подгород"
L["Ratchet, Northern Barrens"] = "Рэтчет, Северные степи"
L["Stormsong Valley"] = "Долина Штормов"
L["Stormwind City"] = "Город Штормграда"
L["Silithus"] = "Силитус"
L["Stranglethorn"] = "Тернистая долина"
L["Shado-Pan Garrison, TownlongWastes"] = "Гарнизон Шадо-Пан, Пустоши Танлун"
L["Silvermoon City"] = "Город Луносвета"
L["Stormshield, Ashran"] = "Штормовой щит, Ашран"
L["Shattrath"] = "Шаттрат"
L["The Dark Portal"] = "Темный портал"
L["The Emerald Dream"] = "Изумрудный сон"
L["Tol Barad"] = "Тол Барад"
L["Tiragarde Sound"] = "Тирагардский звук"
L["Twilight Highlands"] = "Сумеречное нагорье"
L["Thunderbluff"] = "Громовой Утес"
L["The Timeways"] = "Дороги времени"
L["Jade Forest"] = "Нефритовый лес"
L["Uldum"] = "Ульдум"
L["Vol'Dun"] = "Вол'Дун"
L["Vol'mar"] = "Вольмар"
L["Vashj'ir"] = "Вайш'ир"
L["Valdrakken"] = "Вальдраккен"
L["Valiance Keep, Borean Tundra"] = "Крепость Доблести, Борейская тундра"
L["Badlands"] = "Бесплодные земли"
L["Warspear, Ashran"] = "Копье войны, Ашран"
L["Waking Shores, Dragon Isles"] = "Пробуждение Берега, Острова Драконов"
L["Zuldazar"] = "Зулдазар"
L["Zandalar"] = "Зандалар"
-- other transport -- другие перевозки
L["Back to Zuldazar"] = "Возвращение в Зулдазар"
L["Back to Boralus"] = "Назад в Боралус"
L["(Captain Krooz) will take you to Mechagon"] = "(Капитан Круз) отвезет вас в Мехагон"
L["(Captain Krooz) will take you back to Zuldazar"] = "(Капитан Круз) отвезет вас обратно в Зулдазар"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Гранд-адмирал Джес-Терет) отвезет вас в Вол'Дун, Назмир или Зулдазар"
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "(оно отображается в игре только в том случае, если ваша фракция в настоящее время оккупирует Башал'Аран)"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Ужасающий адмирал Рваный Парус) доставит вас в Друствар, Тирагардское поморье или в долину Штормов"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Этот портал Арати -Хоххленд активен только в том случае, если ваша фракция в настоящее время занята Ar'gorok"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Этот портал Темного побережья активен только в том случае, если ваша фракция в настоящее время занята Bashal'aran"

--7 old dungeons/raids
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Старая версия Оружейной палаты Монастыря Алого ордена \n (необходимо активировать [Старый брелок] по координатам 48.33 55.88 внутри Монастыря Алого ордена)"
L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"] = " Старая версия Наксрамаса — Секретный вход\n (Защиты Цитадели Ужаса — Достижение)"
L["Old version of Scarlet Monastery Cathedral \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Старая версия собора Монастыря Алого ордена \n (необходимо активировать [Старый брелок] по координатам 48.33 55.88 внутри Монастыря Алого ордена)"
L["Old version of Scarlet Monastery Graveyard \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"]  "Старая версия кладбища Монастыря Алого ордена \n (необходимо активировать [Старый брелок] по координатам 48.33 55.88 внутри Монастыря Алого ордена."
L["Old version of Scarlet Monastery Library \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Старая версия библиотеки Монастыря Алого ордена \n (необходимо активировать [Старый брелок] по координатам 48.33 55.88 внутри Монастыря Алого ордена)"
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Старая версия Оружейной палаты Монастыря Алого ордена \n (необходимо активировать [Старый брелок] по координатам 48.33 55.88 внутри Монастыря Алого ордена)"
L["Old version of Scholomance - Secret Entrance \n (Memory of Scholomance - Achievement)"] = " Старая версия Некроситета — Секретный вход\n (Память Некроситета — Достижение)"
L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Старый брелок \n Вы получаете Алый ключ в \n [Тыкве, наполненной добычей] в [Конец Хэллоуина] или на [Аукционном доме] \n теперь вы можете активировать [Старый брелок] здесь \n, чтобы активировать старые версии подземелий из Алого монастыря "