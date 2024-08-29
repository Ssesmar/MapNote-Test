local ADDON_NAME = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "ruRU")
if not L then return end

--0.1 profiles
L["Profile has been changed"] = "Профиль был изменен"
L["Profile has been reset to default"] = "Профиль был сброшен в настройки по умолчанию"
L["Profile has been adopted"] = "Профиль был захвачен"
L["Profile has been deleted"] = "Профиль был удален"
--0.2 Change Zones
L["Location"] = "Расположение"
L["Show joined zone names in chat"] = "Показывать названия присоединившихся зон в чате"
L["Capital cities are excluded from this because there would be too much chat spam"] = "Столицы исключены из этого списка, поскольку в чате будет слишком много спама"
L["Show Zone Names"] = "Показать имена зон"
L["In addition to the zone names, it also displays the names of specific locations within a zone. Disabling the Show Zone Names feature will also disable this feature"] = "Помимо названий зон, здесь также отображаются названия конкретных мест внутри зоны. Отключение функции «Показать имена зон» также отключит эту функцию"
L["You are now in"] = "Вы сейчас находитесь в"
L["When entering a new zone, the name of the new zone will be displayed in the chat"] = "При входе в новую зону в чате будет отображаться название новой зоны"
--0.3 Classic function Change
L["Number"] = "Число"
L["Orientation"] = "Ориентация"
L["Old icon style"] = "старый стиль символов"
L["Changes the appearance of the icons. When activated, the listed icons will be changed with the previous style of these icons"] = "Изменяет внешний вид иконок. При активации перечисленные значки будут изменены на предыдущий стиль этих значков"
--0.4 Restore
L["canceled"] = "отменен"
L["Delete this icon"] = "Удалить этот значок"
L["A icon has been deleted"] = "Символ был удален"
L["Restore all deleted icons for different types of maps"] = "Восстановить все удаленные значки для разных типов карт"
L["Restore all deleted icons"] = "Восстановить все удаленные значки"
L["which you removed with the function"] = "что вы удалили с функцией"
L["All deleted icons have been restored"] = "Все удаленные значки восстановлены"
--0.5 Sync function
L["synchronizes"] = "синхронизирует"
L["Synchronizes the Zones tab with the Minimap tab"] = "Синхронизирует вкладку «Зоны» с вкладкой «Миникарта»"
L["Which deactivates the functions from the Minimap tab and is now controlled together by the Zones tab"] = "Это отключает функции на вкладке «Мини-карта», и теперь управление ими осуществляется коллективно через вкладку «Зоны»"
L["This will delete all Minimap settings and replace them with those from Zones tab"] = "Это удалит все настройки мини-карты и заменит их настройками на вкладке «Зоны»"
L["Synchronizes the Capitals tab with the Capitals - Minimap tab"] = "Синхронизирует вкладку «Капитал» с вкладкой «Столицы - Миникарте»"
L["Which deactivates the functions from the Capitals - Minimap tab and is now controlled together by the Capitals tab"] = "Это деактивирует функции вкладки «Столицы - Миникарте» и теперь контролируется вместе с помощью вкладки «Столицы»"
L["This will delete all Capitals - Minimap settings and replace them with those from Capitals tab"] = "Это удалило все настройки для «Капиталов - мини -карта» и заменено настройками на вкладке «Столичные города»"
--0.6 MapNotes icons and hide blizzard POIs
L["Displays special MapNotes summary icons containing several different pieces of information (dungeons/raids/portals, etc.)"] = "Отображает специальные значки MapNotes, содержащие несколько различных деталей информации (Dungeons/Raids/Portals и т. Д.)"
L["Points of interests"] = "Точки интересов"
L["Disables the display of all Blizzard Dungeon and Raid icons on the zone map"] = "Деактивирует отображение всех значков Blizzard Dungeon и Raid на карте зоны"
--1 Capitals
L["Leather Armor"] = "Кожаная броня"
L["Heavy Armor"] = "Тяжелая броня"
L["Plate Armor"] = "Латный доспех"
L["Cloth Armor"] = "Тканевая броня"
L["Quartermaster"] = "Интендант"
L["The Scryers"] = "Провидцы"
L["The Aldor"] = "Алдоры"
L["Paths"] = "Пути"
L["Path"] = "путь"
L["Capitals"] = "столицы"
L["Alchemy"] = "Алхимия"
L["Engineer"] = "инженер"
L["Jewelcrafting"] = "Ювелирное дело"
L["Leatherworking"] = "Кожевничество"
L["Blacksmithing"] = "Кузнечное дело"
L["Tailoring"] = "Портняжное дело"
L["Skinning"] = "Снятие шкур"
L["Mining"] = "Горное дело"
L["Herbalism"] = "Травничество"
L["Enchanting"] = "Наложение чар"
L["Warspear"] = "Копье Войны"
L["Stormshield"] = "Преграда Ветров"
L["Shrine2Moons"] = "Святилище2Лун"
L["Shrine7Stars"] = "Святилище7Звезд"
L["Starting on the first Sunday of each month for one week"] = "Начинается на неделю в первое воскресенье месяца"
L["Enables the display of icons for a specific capital city"] = "Активирует отображение символов для определенного капитала"
L["This MapNotes icons shows various icons that are too close to each other together"] = "Этот символ MapNotes показывает разные символы, которые слишком близки друг к другу."
L["Only affects instance passage icons, not path icons such as exit icons or icons on an instance map or the Capitals category / Minimap Capitals"] = "Влияет только на экземпляр только через символы, а не символы пути, такие как начальные символы или символы на карте экземпляров или столицы / мини -карты"
L["Zones"] = "зоны"
L["Continents"] = "континенты"
--2 Unexplored Areas function
L["Unexplored Areas"] = "Неизведанные территории"
L["Fog"] = "Туман"
L["Mist of the Unexplored"] = "Тумана неизведанного"
L["Leaves the unexplored areas revealed but adds a slight fog so you can still see which ones you haven't explored yet"] = "Оставляет неисследованные области раскрыты"
L["Reveals unexplored areas and shows the individual areas of each zone that are actually still unexplored"] = "Отображает неисследованные области и показывает отдельные области каждой зоны, которые на самом деле еще не исследованы"
--3 Info tab
L["Info"] = "Информация"
L["A description of what this addon does and what functions it offers"] = "Описание того, что делает этот аддон и какие функции он предлагает"
L["A collection of various icons on various maps from previous expansions up to Dragonflight"] = "Коллекция разных символов на разных картах от всех расширений"
L["Displays instance entrances, portals, ships, zeppelins, exits, passage, enemy faction and other transport icons"] = "Отображает экземпляры, порталы, корабли, Zeppeline, выходы, отрывки, вражеские фракции и другие символы"
L["All icons can be activated or deactivated separately!"] = "Все символы могут быть активированы или деактивированы отдельно!"
L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] = "Опция функции сдвига: вы можете использовать символы MapNotes с или без него."
L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"] = "Скрыть Mapnotes! Вариант: все символы могут отображаться одним щелчком"
L["Normally on a maximized map you cannot use instance icons from Blizzard or other addons that would open the adventure guide. But not for MapNotes! You can use all functions on minimized or maximized maps!"] = "Обычно вы не можете использовать Blizzard или другие символы экземпляра аддонс на максимизированной карте, которая откроет руководство по приключениям. Но не для Mapnotes! Вы можете использовать все функции на минимизированных или максимизированных картах!"
L["Worldmap function"] = "Функция карты мира"
L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] = "Щелкните правой кнопкой мыши на символ добавляет набор Tomtom Way -Ground (кроме Azeroth и Mini Card)"
L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] = "Щелкните слева от символа экземпляра открывает соответствующее подземелье в руководстве приключений"
L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] = "Карта Ацерота/Континента: нажимайте слева на транспортном символе, открывается карта, где символ"
L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"] = "Зоневая карта: щелкните слева на транспортном символе, открывается карта, от цели символа"
L["Example zone map: => Orgrimmar. Left-click on this icon opens the map of Orgrimmar"] = "Пример зоны карты: '=> orgrimmar' Щелкните на левом"
L["Example Azeroth/continent map: 'Jade Forest Portal => Orgrimmar' Left-click on this symbol opens the map of the Jade Forest. So you can see where you need to go to get to the portal"] = "Пример Азерота/Континента Карта: «Jadewald Portal => Orgrimmar». Так что вы видите, куда вам нужно пойти, чтобы добраться до портала"
L["Maximized Map function"] = "Максимизированная карта функция"
L["After the adventure guide is opened using a MapNote instance icon and you then switch to the dungeon map using the 'Show map' option in the adventure guide, the map is shown reduced in size so that you can move with the character within the instance and see where you have to go. This minimized map feature ends when you close the map or once! Press the “World map on/off” button (which you have set under 'ESC - Keyboard assignment - Interface function'), whereupon the map will be maximized"] = "После того, как лидер приключений был открыт символом экземпляра, а затем переключен на карту Dungeon в Руководстве по приключениям через опцию «Показать карту», ​​карта отображается в сокращении, чтобы вы могли перемещаться с символом в экземпляре и посмотреть Куда вы должны идти. Это минимизированная функция карты заканчивается, когда вы закрываете карту или один раз! Нажмите кнопку «Вкл/выключение карты мира» (которую вы установили в разделе «ESC - Mayout клавиатура - интерфейсфункция»), после чего карта максимизирована"
L["Minimap button function"] = "Мини -гарден функция"
L["Left-click opens or close the MapNote setting menu"] = "Левый -Клик открывает или закрывает меню настройки MapNote"
L["Right-click opens or close the HandyNote setting menu"] = "Право -клик открывает или закрывает меню настройки синоте сотового телефона"
L["Shift+Right-click hide the minimap button"] = "Shift+Right -Click, скрыть кнопку Mini Garden"
L["Chat commands"] = "Команды чата"
--4 General tab
L["Description"] = "Описание"
L["Position of the real Instance Entrance"] = "Положение ввода реального экземпляра"
L["Way to the Instance Entrance"] = "Путь к вводу экземпляра"
L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] = "Также деактивирует все символы экземпляра Blizzard на карте зоны. Тем не менее, они могут быть реактивированы на карте в верхней части входов подземелий Lupe 'Карточный фильтр'. Реактививация и активация MapNotes Vs. Blizzard, снова деактивирует символы экземпляра на карте зоны"
L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] = "Скрытые определенные символы метели (например, символы столиц Орды / Альянс / Нейтральные или общие перемещения на карте) и заменяют их почти идентичными символами MapNotes, которые предлагают дополнительную информацию и функции"
L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"] = "Удаляет символы Blizzard только там, где символы MapNotes и символы перекрытия Blizzard, что означает, что подсказка и функция символов MapNote можно использовать снова в перекрывающихся точках"
L["If the map is open, after enabling or disabling this option, the map must be reopened once for the changes to display correctly"] = "Если карта открыта, карта должна быть снова открыта после активации или деактивации этой опции, чтобы изменения были правильно отображены"
L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"] = "Щелчок левой кнопкой мыши по значку на этой карте открывает соответствующий экземпляр в путеводителе по приключениям или на карте, на которой находится значок портала, корабля, дирижабля или специального транспорта"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "Если вы нажмете один из этих символов на карте с левой кнопкой мыши, откроется связанное руководство приключений или карта цели"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "Если вы нажмете на несколько символов с левой кнопкой мыши, карта, на которой расположены подземелья, будет открыта"
L["At the same time, all icons representing additional instance inputs are removed"] = "В то же время все значки, обозначающие дополнительные входные данные экземпляра, удалены"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "Измените все символы на всех картах на подземелье, рейд или несколько символов. Кроме того, опция прохода деактивируется повсюду, и символы соответствующих рейдов, подземелья или несколько вариантов добавляются (карта Dungeon остается неизменной из всего этого)"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "Показывать разные значки на разных картах. Все значки кликабельны (кроме мини-карты) и имеют функцию. Значки на карте работают как с клавишей Shift, так и без нее. Просто измените функцию Shift!"
L["Generally"] = "В целом"
L["General"] = "Общий"
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
L["Hide the MapNotes button on the minimap"] = "Скрыть кнопку MapNotes на мини -карте"
L["hide worldmap button"] = "Скрыть кнопку карты мира"
L["Hide the MapNotes button on the worldmap"] = "Скрыть кнопку MapNotes на карте мира"
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
L["chat message"] = "Сообщения чата"
L["Disables MapNotes status chat messages excluding core information"] = "Деактивированные новости о статусе MapNotes, за исключением основной информации"
L["Shows special transport icons like"] = "Показывает специальные транспортные иконки, как"
L["Combines several different grouped symbols that lie on one point, thus showing all possible transport/instance symbols that are located here instead of just one of several possible ones"] = "Объединяет несколько различных сгруппированных символов, которые лежат на одной точке, показывая все возможные символы транспорта/экземпляра, которые расположены здесь вместо одного из нескольких возможных"
L["Left-clicking on one of these symbols on the map opens the corresponding map, which contains all of the points listed by the symbol on the map"] = "Щелчок левой кнопкой мыши по одному из этих символов на карте открывает соответствующую карту, которая содержит все точки, перечисленные этим символом на карте"
L["Informations"] = "Информация"
L["Chat commands:"] = "Команды чата:"
L["to show MapNotes info in chat: /mn, /MN"] = "чтобы показать информацию MapNotes в чате: /mn, /MN"
L["to open MapNotes menu: /mno, /MNO"] = "чтобы открыть меню MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "чтобы закрыть меню MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "чтобы отобразить кнопку мини-карты: /mnb или /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "чтобы скрыть кнопку мини-карты: /mnbh или /MNBH"
--5 Tab specific
L["Left-clicking on a symbol on this map type opens the corresponding map in which the symbol is located"] = "Нажмите на щелчок на символ на этом типе карты открывает соответствующую карту, в которой находится символ"
L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"] = "Иконки некоторых экземпляров не могут быть скрыты, потому что они были созданы самими Blizzard, а не Mapnotes"
L["Azeroth map"] = "Карта Азерота"
L["Continent map"] = "Карта континента"
L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"] = "Размер значков 2.0 будет размером с собственных значков экземпляра Blizzard на карте зоны"
L["Zone map"] = "Карта зоны "
L["Dungeon map"] =  "Карта подземелья" 
--6 Map Tabs together
L["Instance Entrance"] = "Вход экземпляра"
L["switches weekly between"] = "переключается еженедельно между ними"
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
L["Special"] = "Oсобенный"
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
L["Show Ogre Waygate icons from Garrison on this map"] = "Показать на этой карте значки Огрских ворот из Гарнизона"
L["Activates the display of all possible icons on this map"] = "Активирует отображение всех возможных значков на этой карте"
L["Show icons of multiple (dungeons,raids) on this map"] = "Показать значки нескольких (подземелий, рейдов) на этой карте"
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
L["Show all Khaz Algar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Показать все значки подземелий, рейдов, порталов, дирижаблей и кораблей Khaz Algar MapNotes на этой карте"
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "Определенные значки могут отображаться или не отображаться. Если в этой категории активирована опция (Активировать значки)"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Показать ванильные версии подземелий и рейдов, таких как Наксрамас, Некроситет или Монастырь Алого ордена, для которых требуются достижения или другие вещи"
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "Отдельные символы, которые слишком близки к другим символам на этой карте, не размещены на 100 % точно на эту карту! Для более подробных координат, используйте точки на карте зоны"
--7 Maps
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
--8 Core specific
L["Shift function"] = "Функция переключения"
L["-> MiniMapButton <-"] = "-> MiniMapButton <-"
L["-> WorldMapButton <-"] = "-> Кнопка мировой карты <-"
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
L["Middle-Mouse-Button => Open/Close"] = "Кнопка средней мыши => открыть/закрыть"
--9 transport
L["Ever-Shifting Mirror"] = "Непрестанно меняющееся зеркало"
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
L["Thrallmar Mage"] = "Траллмарский маг"
L["Honor Hold Mage"] = "Маг Оплота Чести"
L["Use the Old Keyring"] = "Используй старый брелок"
L["Travel"] = "Путешествовать"
L["Teleporter"] = "Телепортер"
L["Old Keyring"] = "Старый брелок"
L["Old Version"] = "Старая версия"
L["Secret Portal"] = "Секретный портал"
L["Secret Entrance"] = "Тайный вход"
L["Ogre Waygate to Garrison"] = "Врата огра в гарнизон"
L["in the basement"] = "в подвале"
L["(on the tower)"] = "(на башне)"
L["(inside portal chamber)"] = "(внутри портальной камеры)"
L["(inside building)"] = "(внутри здания)"
L["talk to"] = "говорить с"
--10 places
L["Telogrus Rift"] = "Телогрус"
L["Sholazar Basin"] = "Низина Шолазар"
L["Un'Goro Crater"] = "Кратер Ун'Горо"
L["Auberdine"] = "Аубердин"
L["Ratchet"] = "Кабестан"
L["Theramore Isle"] = "Терамор"
L["Dire Maul"] = "Забытый Город"
L["Blackfathom Deeps"] = "Непроглядная Пучина"
L["Stormwind"] = "Штормград"
L["Shadowfang Keep"] = "Крепость Темного Клыка"
L["Undercity"] = "Подгород"
L["Rut'theran"] = "Рут'теран"
L["Azuremyst Isle"] = "Остров Лазурной Дымки"
L["Bel'ameth, Amirdrassil"] = "Беламет, Амирдрассил"
L["Ruins of Gilneas"] = "Руины Гилнеаса"
L["Darnassus"] = "Дарнас"
L["Teldrassil"] = "Тельдрассил"
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
L["Drustvar"] = "Друствар"
L["Gorgrond"] = "Горгронд"
L["Talador"] = "Таладор"
L["Nagrand"] = "Награнд"
L["Frostfire Ridge"] = "Хребет Ледяного Огня"
L["Tanaan Jungle"] = "Танаанские джунгли"
L["Shadowmoon Valley"] = "Долина Призрачной Луны"
L["Spires of Arak"] = "Пики Арака"
L["Netherstorm"] = "Пустоверть"
L["Blade's Edge Mountains"] = "Острогорье"
L["Zangarmarsh"] = "Зангартопь"
L["Terokkar Forest"] = "Лес Тероккар"
L["Ohn'ahran Plains"] = "Равнины Он'ахран"
L["Borean Tundra"] ="Борейская тундра"
L["Tirisfal Glades"] = "Тирисфальские леса"
L["Wintergrasp"] = "Зимние оковы"
L["Boralus"] = "Боралус"
L["Stormsong Valley"] = "Долина Штормов"
L["Tiragarde Sound"] = "Тирагардский звук"
L["Ironforge"] = "Стальгорн"
L["Blasted Lands"] = "Выжженные земли"
L["Darkshore"] = "Темные берега"
L["Durotar"] = "Дуротар"
L["Dustwallow Marsh"] = "Пылевые болота"
L["Vale of Eternal Blossoms"] = "Вечноцветущий дол"
L["Arathi Highlands"] = "Нагорье Арати"
L["Nazmir"] = "Назмир"
L["Vol'dun"] = "Вол'дун"
L["Isle of Quel'Danas"] = "Остров Кель'Данас"
L["Hellfire Peninsula"] = "Полуостров Адского Пламени"
L["Korthia"] = "Кортия"
L["The Maw"] = "Утроба"
L["Zereth Mortis"] = "Зерет Мортис"
L["Icecrown"] = "Ледяная Корона"
L["Krasarang Wilds"] = "Красарангские джунгли"
L["Townlong Steppes"] = "Танлунские степи"
L["Kun-Lai Summit"] = "Вершина Кунь-Лай"
L["Valley of the Four Winds"] = "Долина Четырех Ветров"
L["Barnard 'The Smasher' Bayswort"] = "Барнард 'Сокрушитель' Бэйворт"
L["Desha Stormwallow"] = "Деша Буреваллоу"
L["Daria Smithson"] = "Дарья Смитсон"
L["Swellthrasher"] = "Свелтрэшер"
L["Grok Seahandler"] = "Грок Морской Хендлер"
L["Erul Dawnbrook"] = "Эрул Донбрук"
L["Dread-Admiral Tattersail"] = "Ужасающий адмирал Рваный Парус"
L["Grand Admiral Jes-Tereth"] = "Гранд-адмирал Джес-Терет"
L["Naxxramas"] = "Наксрамас"
L["Scholomance"] = "Некроситет"
L["Temple of Ahn'Qiraj"] = "Ан'Кираж"
L["Lorewalker Han"] = "Хранитель истории Хань"
L["Archmage Timear"] = "Верховный маг Времиар"
L["Kiku"] = "Кику"
L["Eppu"] = "Эппу"
L["Ta'elfar"] = "Та'эльфар"
L["Seer Kazal"] = "Провидец Казал"
L["Auridormi"] = "Ауридорми"
L["Registrant"] = "Постановка на учет"
L["Scarlet Instances"] = "Алые красные экземпляры"
L["hide Cosmos map symbols"] = "Скрыть символы космоса"
L["Shows the locations of Raidbrowser applicants for old Raids"] = "Показывает позицию браузера бойни, чтобы быть приписанным старой бойни"
L["Deactivates the display of all possible icons on this map"] = "Деактивирует отображение всех возможных значков на этой карте"
--11 Specific
L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] = "Этот вход экземпляра находится в другой временной шкале. Другие временные шкалы могут быть активированы в Zidormi"
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "Показывает расположение рейдов, подземелий, порталов, значков кораблей и дирижаблей на разных картах"
L["(Wards of the Dread Citadel - Achievement)"] = "(Обереги Цитадели Ужаса – Достижение)"
L["(Memory of Scholomance - Achievement)"] = "(Память о Некроситете - Достижение)"
L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] = "(оно отображается в игре только в том случае, если ваша\n фракция в настоящее время оккупирует Башал'Аран)"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Этот портал в Нагорье Арати активен только в том случае, если ваша фракция в данный момент оккупирует Ар'горок"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Этот портал Темных берегов активен только в том случае, если ваша фракция в настоящее время оккупирует Башал'Аран"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Гранд-адмирал Джес-Терет) отвезет вас в Вол'Дун, Назмир или Зулдазар"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Ужасающий адмирал Рваный Парус) доставит вас в Друствар, Тирагардское поморье или в долину Штормов"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Старый брелок \n Вы получаете Алый ключ в \n [Наполненной добычей тыкве] в [Конец Хэллоуина] или в [Аукционном доме] \n теперь вы можете активировать [Старый брелок] здесь \n, чтобы активировать старый брелок версии подземелий из Монастыря Алого ордена"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "Появляется первым после определенного прогресса в инстансе\n или требует определенного достижения" 
--12 Classic
L["Ulduar"] = "Ульдуар"
L["Trial of the Champion"] = "Испытание чемпионаn"
L["Trial of the Crusader"] = "Испытание крестоносца"
L["Azjol-Nerub"] = "Азжол-Неруб"
L["Drak'Tharon Keep"] = "Крепость Драк'Тарон"
L["Utgarde Pinnacle"] = "Вершина Утгард"
L["Utgarde Keep"] = "Крепость Утгард"
L["Magisters' Terrace"] = "Терраса Магистров"
L["Karazhan"] = "Каражан"
L["The Culling of Stratholme"] = "Очищение Стратхольма"
L["Old Hillsbrad Foothills"] = "Старые предгорья Хилсбрада"
L["The Oculus"] = "Окулус"
L["The Ruby Sanctum"] = "Рубиновое святилище"
L["Black Temple"] = "Черный храм"
L["Auchenai Crypts"] = "Аукенайские гробницы"
L["Sethekk Halls"] = "Сетеккские залы"
L["The Arcatraz"] = "Аркатрас"
L["Reforge"] = "Перековка"
--13 The War Within
L["Khaz Algar"] = "Каз Алгар"
L["Dornogal"] = "Дорногал"
L["Catalyst"] = "Катализатор"
L["Merchant for Renown items"] = "Торговец известными предметами"
L["Council of Dornogal"] = "Совет Дорногала"
L["The Assembly of the Deeps"] = "Ассамблея глубин"
L["Hallowfall Arathi"] = "Арати Тайносводья"
-- 14
L["Displays zone icons on a specific continent"] = "Отображает значки зон на определенном континенте"
L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"] = "Если вы не видите эту иконку, это, вероятно, в другой фазе.\nИзменить фазу на Zidormi"
L["The associated settings are regulated here. \nRegardless of whether it is the display of an icon, an entire icon group or the display of the complete icons for the corresponding Continent"] = "Связанные настройки регулируются здесь.\nНезависимо от того, является ли это отображением значка, целой группы значков или отображения полных значков для соответствующего континента"
L["The associated settings are regulated here. \nRegardless of whether it is the display of an icon, an entire icon group or the display of the complete icons for the corresponding Capital"] = "Связанные настройки регулируются здесь. \nНезависимо от того, является ли это отображением значка, целой группы значков или отображения полных значков для соответствующего капитала"