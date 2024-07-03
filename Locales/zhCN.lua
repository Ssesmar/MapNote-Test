﻿local ADDON_NAME = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "zhCN")
if not L then return end

--0 Restore
L["canceled"] = "取消"
L["Delete this icon"] = "删除此图标"
L["A icon has been deleted"] = "符号被删除"
L["Restore all deleted icons for different types of maps"] = "恢复不同类型地图的所有已删除图标"
L["Restore all deleted icons"] = "恢复所有已删除的图标"
L["which you removed with the function"] = "您已经使用该功能删除了"
L["All deleted icons have been restored"] = "所有删除的图标均已恢复"
--0.1 Sync function
L["synchronizes"] = "同步"
L["Synchronizes the Zones tab with the Minimap tab"] = "将“区域”选项卡与“小地图”选项卡同步"
L["Which deactivates the functions from the Minimap tab and is now controlled together by the Zones tab"] = "这会禁用“小地图”选项卡上的功能，现在通过“区域”选项卡集中控制"
L["This will delete all Minimap settings and replace them with those from Zones tab"] = "这将删除所有小地图设置并将其替换为“区域”选项卡中的设置"
L["Synchronizes the Capitals tab with the Capitals - Minimap tab"] = "将“ Capital”标签与“ 首都迷你卡” Tab同步"
L["Which deactivates the functions from the Capitals - Minimap tab and is now controlled together by the Capitals tab"] = "这停用了“ 首都迷你卡”标签的功能，现在正在通过“ 省会城市”选项卡一起控制"
L["This will delete all Capitals - Minimap settings and replace them with those from Capitals tab"] = "这删除了“首都 - 迷你卡”的所有设置，并由“ 省会城市”选项卡上的设置取代"
--1 Capitals
L["Leather Armor"] = "皮甲"
L["Heavy Armor"] = "重甲"
L["Plate Armor"] = "板甲"
L["Cloth Armor"] = "布甲"
L["Quartermaster"] = "军需官"
L["The Scryers"] = "占星者"
L["The Aldor"] = "奥尔多"
L["Paths"] = "路径"
L["Path"] = "小路"
L["Capitals"] = "省会城市"
L["Alchemy"] = "炼金术"
L["Engineer"] = "工程师"
L["Jewelcrafting"] = "珠宝加工"
L["Leatherworking"] = "制皮"
L["Blacksmithing"] = "锻造"
L["Tailoring"] = "裁缝"
L["Skinning"] = "剥皮"
L["Mining"] = "采矿"
L["Herbalism"] = "草药学"
L["Enchanting"] = "附魔"
L["Warspear"] = "战争之矛"
L["Stormshield"] = "暴风之盾"
L["Shrine2Moons"] = "双月殿"
L["Shrine7Stars"] = "七星殿"
L["Starting on the first Sunday of each month for one week"] = "在本月的第一个星期日开始一个星期"
L["Enables the display of icons for a specific capital city"] = "激活特定资本的符号的显示"
L["This MapNotes icons shows various icons that are too close to each other together"] = "此MAPNOTES符号显示了不同的符号，这些符号太近了。"
L["Only affects instance passage icons, not path icons such as exit icons or icons on an instance map or the Capitals category / Minimap Capitals"] = "仅通过符号来影响实例，而不是路径符号，例如实例地图上的启动符号或符号"
L["Zones"] = "区域"
L["Continents"] = "各大洲"
--2 Unexplored Areas function
L["Unexplored Areas"] = "未开发领域"
L["Unexplored Areas visibility"] = "未探索领域的可见性"
L["Changes the visibility of unexplored Areas"] = "改变未探索区域的可见性"
L["Fog"] = "多雾路段"
L["Mist of the Unexplored"] = "未探索的雾"
L["Leaves the unexplored areas revealed but adds a slight fog so you can still see which ones you haven't explored yet"] = "留下未探索的区域，但增加了淡淡的雾，因此您仍然可以看到尚未探索的区域"
L["Reveals unexplored areas and shows the individual areas of each zone that are actually still unexplored"] = "揭示未探索的区域并显示每个区域中实际上尚未探索的各个区域"
--3 Info tab
L["Info"] = "信息"
L["A description of what this addon does and what functions it offers"] = "描述此插件提供的功能"
L["A collection of various icons on various maps from previous expansions up to Dragonflight"] = "来自所有版本的不同地图上不同图标的集合"
L["Displays instance entrances, portals, ships, zeppelins, exits, passage, enemy faction and other transport icons"] = "显示团队副本入口，传送，船，飞艇，港口，通道，敌方阵营和其他运输工具图标"
L["All icons can be activated or deactivated separately!"] = "所有图标都可以单独启用或禁用！"
L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] = "切换功能选项：您可以使用或不使用Shift单击的MapNotes图标"
L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"] = "隐藏MapNotes！ 选项：所有图标都可以单击显示"
L["Normally on a maximized map you cannot use instance icons from Blizzard or other addons that would open the adventure guide. But not for MapNotes! You can use all functions on minimized or maximized maps!"] = "通常，您无法使用暴雪或其他插件团队副本图标来打开“冒险指南”。 但mapnotes不一样！ 您可以在最小化或最大化地图上使用所有功能！"
L["Worldmap function"] = "世界地图功能"
L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] = "右键点击任何图标都可以添加一个tomtom导航（艾泽拉斯地图和小地图除外）"
L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] = "左键点击团队副本图标，可以打开“冒险指南”中相对应的地下城及团本。"
L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] = "艾泽拉斯/大陆地图：左键点击运输图标，直接打开图标所在的地图"
L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"] = "区域地图：左键点击运输图标，直接打开图标所在的地图"
L["Example zone map: => Orgrimmar. Left-click on this icon opens the map of Orgrimmar"] = "区域地图示例：“=> 奥格瑞玛”左键点击符号，奥格瑞玛的地图将打开"
L["Example Azeroth/continent map: 'Jade Forest Portal => Orgrimmar' Left-click on this symbol opens the map of the Jade Forest. So you can see where you need to go to get to the portal"] = "艾泽拉斯/大陆地图示例：“翡翠梦境 => 奥格瑞玛”左键点击此图标了打开翡翠梦境地图， 这样您就能看到前往传送门需要去的地方"
L["Maximized Map function"] = "最大化的地图功能"
L["After the adventure guide is opened using a MapNote instance icon and you then switch to the dungeon map using the 'Show map' option in the adventure guide, the map is shown reduced in size so that you can move with the character within the instance and see where you have to go. This minimized map feature ends when you close the map or once! Press the “World map on/off” button (which you have set under 'ESC - Keyboard assignment - Interface function'), whereupon the map will be maximized"] = "使用 MapNote 示例图标打开冒险指南后，再使用冒险指南中的“显示地图”选项切换到地下城地图，地图就会缩小显示，这样您就可以在地城中与角色一起移动，并看到您要去的地方。关闭地图或关闭一次后，地图缩小功能就会结束！按下“世界地图开/关 ”按钮（您已在 “ESC - 键盘分配 - 界面功能”下进行了设置），此时地图将最大化。"
L["Minimap button function"] = "小地图按钮功能"
L["Left-click opens or close the MapNote setting menu"] = "左键点击打开或关闭MapNotes设置界面"
L["Right-click opens or close the HandyNote setting menu"] = "右键点击打开或关闭HandyNote设置界面"
L["Shift+Right-click hide the minimap button"] = "Shift+右键 - 点击，隐藏小地图按钮"
L["Chat commands"] = "聊天命令"
--4 General tab
L["Description"] = "描述"
L["Position of the real Instance Entrance"] = "实际团队副本入口的位置"
L["Way to the Instance Entrance"] = "前往团队副本入口的路径"
L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] = "同时禁用区域地图上的所有暴雪团队副本图标。不过，可以在地图右上方“地图过滤器”地下城入口放大镜内重新激活这些图标。暴雪，再次停用区域地图上的团队副本图标"
L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] = "隐藏某些暴雪图标（例如部落/联盟/中立主城图标或地图上的一般旅行图标），代之以几乎相同的 MapNotes 图标，提供更多信息和功能"
L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"] = "仅在地图注释标记和暴雪图标重叠的地方移除暴雪图标，从而使鼠标提示和地图注释标记的功能在重叠点上再次可用"
L["If the map is open, after enabling or disabling this option, the map must be reopened once for the changes to display correctly"] = "如果地图已打开，在启用或禁用该选项后，必须重新打开地图一次，才能正确显示更改内容"
L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"] = "左键点击该地图上的图标，可打开“冒险指南”中的关联的团队副本、传送门、船、飞艇或特殊运输工具图标所在的地图"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "左键点击地图上的这些标识之一，就会打开关联的探险指南或目的地地图"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "左键点击多个图标将打开地下城所在的地图"
L["At the same time, all icons representing additional instance inputs are removed"] = "同时，删除所有代表附加团队副本入口的图标"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "将所有地图上的所有通道标志更改为地下城、团队副本或多重标记。此外，所有地方的通道选项都将被禁用，图标将被添加到关联的团队副本、地下城或多重选项中（地下城地图保持不变）"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "在不同的地图上显示不同的图标。所有图标都可点击（小地图上的图标除外），并具有特定功能 地图图标可使用或不使用 Shift 键。只需更改 Shift 功能即可！"
L["Generally"] = "一般来说"
L["General"] = "一般的"
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "同时适用于艾泽拉斯/大陆/地下城地图的常规设置"
L["General settings / Additional functions"] = "常规设置/附加功能"
L["Shift function!"] = "交互/路径功能！"
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."] = "启用后，您必须在左键或右键单击之前按 Shift 键才能与 MapNotes 图标进行交互。但这样做也有好处，因为游戏中有很多图标，包括来自其他插件的图标，这样就不会不小心点击某个图标标识而改变地图，或错误地创建 TomTom 点。"
L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"] = "现在，您必须始终同时按住 Shift + 点击，才能与地图注释标识交互"
L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"] = "现在，您无需同时按住 Shift + 点击即可与 MapNotes 图标进行交互"
L["Settings apply to the zone map and the mini map at the same time"] = "设置同时适用于区域地图和小地图"
L["symbol size"] = "图标大小"
L["Changes the size of the icons"] = "更改图标的大小"
L["symbol visibility"] = "图标可见性"
L["Changes the visibility of the icons"] = "更改图标的可见性"
L["hide minimap button"] = "隐藏小地图按钮"
L["Hide the MapNotes button on the minimap"] = "在迷你卡上隐藏mapnotes按钮"
L["hide worldmap button"] = "隐藏世界地图按钮"
L["Hide the MapNotes button on the worldmap"] = "隐藏世界地图上的mapnotes按钮"
L["hide MapNotes!"] = "隐藏地图注释！"
L["-> Hide all MapNotes icons <-"] = "-> 隐藏所有 MapNotes 图标 <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "禁用MapNotes，每张地图上的所有图标将被隐藏，所有类别将被禁用"
L["Adventure guide"] = "冒险指南"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "左键单击地图上的 MapNotes 团队副本（绿色）、地下城（蓝色）或多个图标（绿色和蓝色）可在冒险指南中打开相应的地下城或团队地图（地图不得全屏打开）"
L["TomTom waypoints"] = "TomTom 航点"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "shift+右键点击大陆或地下城地图上的团队副本、地下城、多重符号、传送门、船、飞艇、通道或地图注释中的出口，即可创建指向该点的 TomTom 航点（但必须安装 TomTom 插件才能实现此功能）"
L["extra information"] = "更多信息"
L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"] = "显示有关地下城或团队副本的其他信息。 例如，已经被杀的首领"
L["gray single"] = "个人灰色"
L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"] = "只将指定地下城和团队副本的个别点涂上灰色（如果您有ID）"
L["gray all"] = "全是灰色"
L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"] = "所有人的颜色！分配的地下城和团队副本也有多个灰色点（如果您有ID）"
L["enemy faction"] = "敌对阵营"
L["Shows enemy faction (horde/alliance) icons"] = "显示敌方阵营（部落/联盟）图标"
L["chat message"] = "聊天消息" 
L["Disables MapNotes status chat messages excluding core information"] = "停用MAPNOTES状态聊天新闻除了核心信息"
L["Shows special transport icons like"] = "显示特殊的运输图标"
L["Combines several different grouped symbols that lie on one point, thus showing all possible transport/instance symbols that are located here instead of just one of several possible ones"] = "将位于一个点上的几个不同的分组图标组合在一起，从而显示出位于此处的所有可能的运输/团队副本图标，而不仅仅是几个可能图标中的一个"
L["Left-clicking on one of these symbols on the map opens the corresponding map, which contains all of the points listed by the symbol on the map"] = "左键点击地图上的这些图标，可打开关联的地图，其中包含该图标在地图上列出的所有点"
L["Informations"] = "资讯"
L["Chat commands:"] = "聊天命令："
L["to show MapNotes info in chat: /mn, /MN"] = "在聊天中显示 MapNotes 信息：/mn 或 /MN"
L["to open MapNotes menu: /mno, /MNO"] = "打开 MapNotes 菜单：/mno 或 /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "关闭 MapNotes 菜单：/mnc 或 /MNC"
L["to show minimap button: /mnb or /MNB"] = "显示小地图按钮：/mnb 或 /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "隐藏小地图按钮：/mnbh 或 /MNBH"
--5 Tab specific
L["Left-clicking on a symbol on this map type opens the corresponding map in which the symbol is located"] = "左键单击此卡类型上的符号打开符号所在的相应卡"
L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"] = "某些实例图标不能隐藏，因为它们是由暴风雪本身创建的，而不是由mapnotes创建的"
L["Azeroth map"] = "艾泽拉斯地图"
L["Continent map"] = "大陆地图"
L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"] = "图标尺寸2.0将是区域地图上暴雪自己实例图标的默认尺寸"
L["Zone map"] = "区域图"
L["Dungeon map"] =  "地下城地图"
--6 Map Tabs together
L["Instance Entrance"] = "副本入口"
L["switches weekly between"] = "每周切换"
L["Activate icons"] = "激活图标"
L["Show individual icons"] = "显示单独的图标"
L["Exits"] = "港口"
L["Raids"] = "团队副本"
L["Dungeons"] = "地下城"
L["Passages"] = "通道"
L["Multiple"] = "多个"
L["Portals"] = "传送门"
L["Zeppelins"] = "飞艇"
L["Ships"] = "舰船"
L["Transport"] = "运输工具"
L["Special"] = "特别的"
L["Ogre Waygate"] = "食人魔传送门"
L["Old Instances"] = "旧副本"
L["Show icons of passage on this map"] = "在这张地图上显示通道的图标"
L["Show icons of raids on this map"] = "在这张地图上显示团队副本的图标"
L["Show icons of dungeons on this map"] = "在此地图上显示地下城的图标"
L["Show icons of multiple on this map"] = "在此地图上显示多个图标"
L["Show icons of portals on this map"] = "在此地图上显示传送门的图标"
L["Show icons of zeppelins on this map"] = "在此地图上显示飞艇的图标"
L["Show icons of ships on this map"] = "在此地图上显示船舶的图标"
L["Show all MapNotes for a specific map"] = "显示特定地图的所有地图注释"
L["Show icons of MapNotes dungeon exit on this map"] = "在此地图上显示 MapNotes 地下城及港口的图标"
L["Enables the display of all possible icons on this map"] = "启用此地图上所有可能的图标的显示"
L["Show icons of passage to raids and dungeons on this map"] = "在这张地图上显示团队副本和地下城通道的图标"
L["Show Ogre Waygate icons from Garrison on this map"] = "在这张地图上显示食人魔传送门图标"
L["Activates the display of all possible icons on this map"] = "激活此地图上所有可能的图标的显示"
L["Show icons of multiple (dungeons,raids) on this map"] = "在此地图上显示多个（地下城、团队团队副本）的图标"
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有外域 MapNotes 团队副本、地下城、传送门、飞艇和船舶等图标"
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有德拉诺 MapNotes 团队副本、地下城、传送门、飞艇和船舶等图标"
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有暗影国度 MapNotes 团队副本、地下城、传送门、飞艇和船舶等图标"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有卡利姆多 MapNotes 团队副本、地下城、传送门、飞艇和船舶等图标"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有东部王国 MapNotes 团队副本、地下城、传送门、飞艇和船舶等图标"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有诺森德 MapNotes 团队副本、地下城、传送门、飞艇和船舶等图标"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有潘达利亚 MapNotes 团队副本、地下城、传送门、飞艇和船舶等图标"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有赞达拉 MapNotes 团队副本、地下城、传送门、飞艇和船舶等图标"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有库尔提拉斯 MapNotes 团队副本、地下城、传送门、飞艇和船舶等图标"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有破碎群岛 MapNotes 团队副本、地下城、传送门、飞艇和船舶等图标"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有巨龙群岛 MapNotes 团队副本、地下城、传送门、飞艇和船舶等图标"
L["Show all Khaz Algar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "显示此地图上的所有 Khaz Algar MapNotes 地下城、突袭、传送门、飞艇和船舶图标"
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "某些图标可以显示或不显示。如果该类别中的选项（激活图标）已激活"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "显示普通版本的地下城和团队副本，例如纳克萨玛斯、通灵学院或血色修道院，这需要成就或其他东西"
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "与地图上其他图标距离太近的个别图标在地图上的位置并非 100% 精确！如需更精确的坐标，请使用区域地图上的点"
--7 Maps
L["Kalimdor"] = "卡利姆多"
L["Eastern Kingdom"] = "东部王国"
L["Outland"] = "外域"
L["Northrend"] = "诺森德"
L["Pandaria"] = "潘达利亚"
L["Draenor"] = "德拉诺"
L["Broken Isles"] = "破碎群岛"
L["Zandalar"] = "赞达拉"
L["Kul Tiras"] = "库尔提拉斯"
L["Shadowlands"] = "暗影国度"
L["Dragon Isles"] = "巨龙群岛"
--8 Core specific
L["Shift function"] = "路径功能"
L["-> MiniMapButton <-"] = "-> 小地图按钮 <-"
L["-> WorldMapButton <-"] = "-> 世界卡按钮 <-"
L["MapNotes menu window"] = "MapNotes 菜单窗口"
L["All set icons have been restored"] = "所有设置的图标已恢复"
L["All MapNotes icons have been hidden"] = "所有 MapNotes 图标已被隐藏"
L["is activated"] = "已激活"
L["is deactivated"] = "已停用"
L["are shown"] = "显示"
L["are hidden"] = "被隐藏"
L["Left-click => Open/Close"] = "左键点击=>打开/关闭"
L["Right-click => Open/Close"] = "右键点击=>打开/关闭"
L["Shift + Right-click => hide"] = "Shift + 右键点击​​ => 隐藏"
L["Middle-Mouse-Button => Open/Close"] = "中间鼠标按钮=>打开/关闭"
--9 transport
L["icons"] = "图标"
L["Exit"] = "港口"
L["Entrance"] = "入口"
L["Passage"] = "通道"
L["Portal"] = "传送门"
L["Ship"] = "船"
L["Zeppelin"] = "飞艇"
L["Portalroom"] = "传送门房间"
L["The Dark Portal"] = "黑暗之门"
L["Captain Krooz"] = "库鲁兹船长"
L["Thrallmar Mage"] = "萨尔玛法师"
L["Honor Hold Mage"] = "荣耀堡法师"
L["Use the Old Keyring"] = "使用旧钥匙圈"
L["Travel"] = "旅行"
L["Teleporter"] = "传送器"
L["Old Keyring"] = "旧钥匙圈"
L["Old Version"] = "旧版"
L["Secret Portal"] = "密室传送门"
L["Secret Entrance"] = "密室入口"
L["Ogre Waygate to Garrison"] = "通往要塞的食人魔传送门"
L["in the basement"] = "在地下室"
L["(on the tower)"] = "（在塔上）"
L["(inside portal chamber)"] = "（室内传送门）"
L["(inside building)"] = "（建筑物内）"
L["talk to"] = "与之交谈"
--10 places
L["Auberdine"] = "奥伯丁"
L["Ratchet"] = "棘齿城"
L["Theramore Isle"] = "塞拉摩"
L["Dire Maul"] = "厄运之槌"
L["Blackfathom Deeps"] = "黑暗深渊"
L["Stormwind"] = "暴风城"
L["Shadowfang Keep"] = "影牙城堡"
L["Undercity"] = "幽暗城"
L["Rut'theran"] = "鲁瑟兰"
L["Azuremyst Isle"] = "秘蓝岛"
L["Bel'ameth, Amirdrassil"] = "贝拉梅斯，阿梅达希尔"
L["Ruins of Gilneas"] = "吉尔尼斯废墟"
L["Darnassus"] = "达纳苏斯"
L["Teldrassil"] = "泰达希尔"
L["Graveyard"] = "墓地"
L["Library"] = "图书馆"
L["Cathedral"] = "大教堂"
L["Armory"] = "军械库"
L["Ashran"] = "阿什兰"
L["The Timeways"] = "时光之穴"
L["Vol'mar"] = "沃尔玛"
L["Zuldazar"] ="祖达萨"
L["Thunder Bluff"] = "雷霆崖"
L["Silvermoon City"] = "银月城"
L["Boralus, Tiragarde Sound"] = "伯拉勒斯，提拉加德海峡"
L["Valdrakken"] = "瓦尔德拉肯"
L["Badlands"] = "荒芜之地"
L["Oribos"] = "奥利波斯"
L["Azsuna"] = "阿苏纳"
L["Uldum"] = "奥丹姆"
L["Dazar'alor"] = "达萨罗"
L["Shattrath City"] = "沙塔斯城"
L["Echo Isles, Durotar"] = "回声群岛，杜隆塔尔"
L["Silithus"] = "希利苏斯"
L["Nazjatar"] = "纳沙塔尔"
L["Emerald Dream"] = "翡翠梦境"
L["Thunder Bluff"] = "雷霆崖"
L["Howling Fjord"] = "嚎风峡湾"
L["Ruins of Lordaeron"] = "洛丹伦废墟"
L["Isle of Thunder"] = "雷神岛"
L["Twilight Highlands"] = "暮光高地"
L["Vashj'ir"] = "瓦斯琪尔"
L["The Waking Shores, Dragon Isles"] = "觉醒海岸，巨龙群岛"
L["Shado-Pan Garrison, Townlong Steppes"] = "影踪卫戍营，螳螂草原"
L["Grom'gol, Stranglethorn Vale"] = "格罗姆高，荆棘谷"
L["Exodar"] = "埃索达"
L["Jade Forest"] = "翡翠林"
L["Drustvar"] = "德鲁斯瓦"
L["Gorgrond"] = "戈尔隆德"
L["Ohn'ahran Plains"] = "欧恩哈拉平原"
L["Borean Tundra"] = "北风苔原"
L["Tirisfal Glades"] = "提瑞斯法林地"
L["Wintergrasp"] = "冬拥湖"
L["Boralus"] = "伯拉勒斯"
L["Stormsong Valley"] = "斯托颂谷地"
L["Tiragarde Sound"] = "提拉加德之声"
L["Ironforge"] = "铁炉堡"
L["Blasted Lands"] = "诅咒之地"
L["Darkshore"] = "黑海岸"
L["Durotar"] = "杜隆塔尔"
L["Dustwallow Marsh"] = "尘泥沼泽"
L["Vale of Eternal Blossoms"] = "锦绣谷"
L["Arathi Highlands"] = "阿拉希高地"
L["Nazmir"] = "纳兹米尔"
L["Vol'dun"] = "沃顿"
L["Isle of Quel'Danas"] = "奎尔丹纳斯岛"
L["Hellfire Peninsula"] = "地狱火半岛"
L["Korthia"] = "刻希亚"
L["The Maw"] = "噬渊"
L["Zereth Mortis"] = "扎雷殁提斯"
L["Icecrown"] = "冰冠冰川"
L["Townlong Steppes"] = "螳螂高原"
L["Kun-Lai Summit"] = "昆莱山"
L["Valley of the Four Winds"] = "四风谷"
L["Barnard 'The Smasher' Bayswort"] = "“碎天者”巴纳德·贝斯沃斯"
L["Desha Stormwallow"] = "德萨·风落"
L["Daria Smithson"] = "达丽雅·斯密斯森"
L["Swellthrasher"] = "痛击者"
L["Grok Seahandler"] = "葛罗克·抚海"
L["Erul Dawnbrook"] = "埃卢尔·晨溪"
L["Dread-Admiral Tattersail"] = "亡灵舰长塔特赛尔"
L["Grand Admiral Jes-Tereth"] = "杰塔瑞斯将军"
L["Naxxramas"] = "纳克萨玛斯"
L["Scholomance"] = "通灵学院"
L["Temple of Ahn'Qiraj"] = "安其拉"
L["Lorewalker Han"] = "游学者韩恩"
L["Archmage Timear"] = "大法师提迈尔"
L["Kiku"] = "基库"
L["Eppu"] = "埃浦"
L["Ta'elfar"] = "塔·艾尔法"
L["Seer Kazal"] = "先知卡扎尔"
L["Auridormi"] = "奥里多米"
L["Registrant"] = "登记"
L["Scarlet Instances"] = "猩红红色实例"
L["hide Cosmos map symbols"] = "隐藏宇宙符号"
L["Shows the locations of Raidbrowser applicants for old Raids"] = "显示屠宰场浏览器的位置归因于旧的屠宰场"
L["Deactivates the display of all possible icons on this map"] = "停用此卡上所有可能的图标的显示"
--11 Specific
L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] = "此实例入口处于不同的时间表。 可以在Zidormi上激活其他时间表"
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "在不同的地图上显示团队副本、地下城、传送门、船舶和飞艇图标的位置"
L["(Wards of the Dread Citadel - Achievement)"] = "（恐怖之城的结界 - 成就）"
L["(Memory of Scholomance - Achievement)"] = "（通灵学院的回忆 - 成就）"
L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] = "（只有当你的阵营当前占领巴莎兰时，\n 它才会出现在游戏中）"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "注意：阿拉希高地传送门只有在你的阵营目前占领了阿拉希高地时才会激活"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "这个黑海岸传送门只有在你的阵营目前占领巴莎兰时才会激活"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "（杰塔瑞斯将军）将带你前往沃顿、纳兹米尔或祖达萨"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "（亡灵舰长塔特赛尔）将带你前往德鲁斯瓦、提拉加德海峡或斯托颂谷地"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "旧钥匙圈\n你可以在[万圣节活动]或[拍卖行]的[装满战利品的南瓜]中获得猩红钥匙\n现在你可以在这里激活[旧钥匙圈]\n来激活旧钥匙圈血色修道院的地下城版本"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "在某个团队副本进度后首先出现\n或需要某个成就"
--12 Classic
L["Ulduar"] = "奥杜尔"
L["Trial of the Champion"] = "冠军的试炼"
L["Trial of the Crusader"] = "十字军的试炼"
L["Azjol-Nerub"] = "艾卓-尼鲁布"
L["Drak'Tharon Keep"] = "达克萨隆要塞"
L["Utgarde Pinnacle"] = "乌特加德之巅"
L["Utgarde Keep"] = "乌特加德城堡"
L["Magisters' Terrace"] = "魔导师平台"
L["Karazhan"] = "卡拉赞"
L["The Culling of Stratholme"] = "净化斯坦索姆"
L["Old Hillsbrad Foothills"] = "O旧希尔斯布莱德丘陵"
L["The Oculus"] = "魔环"
L["The Ruby Sanctum"] = "红玉圣殿"
L["Black Temple"] = "黑暗神殿"
L["Auchenai Crypts"] = "奥金尼地穴"
L["Sethekk Halls"] = "塞泰克大厅"
L["The Arcatraz"] = "禁魔监狱"
L["Reforge"] = "重铸"
--13 The War Within
L["Khaz Algar"] = "Khaz Algar"
L["Dornogal"] = "Dornogal"
L["Catalyst"] = "Catalyst"
L["Merchant for Renown items"] = "Merchant for Renown items"
L["Council of Dornogal"] = "Council of Dornogal"
L["The Assembly of the Deeps"] = "The Assembly of the Deeps"
L["Hallowfall Arathi"] = "Hallowfall Arathi"
-- 14
L["Displays zone icons on a specific continent"] = "在特定大陆上显示区域图标"
L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"] = "如果您看不到此图标，则可能处于不同的阶段。 \n更改Zidormi上的相位"
L["The associated settings are regulated here. \nRegardless of whether it is the display of an icon, an entire icon group or the display of the complete icons for the corresponding Continent"] = "关联的设置在此处进行监管。\n无论是显示图标，整个图标组还是相应大陆的完整图标的显示"
L["The associated settings are regulated here. \nRegardless of whether it is the display of an icon, an entire icon group or the display of the complete icons for the corresponding Capital"] = "关联的设置在此处进行监管。\n无论是显示图标的显示，整个图标组还是相应资本的完整图标的显示"