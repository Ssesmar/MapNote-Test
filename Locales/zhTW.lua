local ADDON_NAME = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "zhTW")
if not L then return end

--0 Restore
L["Restore all deleted icons for different types of maps"] = "恢復不同類型地圖的所有已刪除圖標"
L["Restore all deleted icons"] = "恢復所有已刪除的圖標"
L["which you removed with Alt + middle mouse button function"] = "使用 Alt + 滑鼠中鍵功能刪除的"
L["All deleted icons have been restored"] = "所有刪除的圖示均已恢復"
--0.1 Sync function
L["synchronizes"] = "同步"
L["Synchronizes the Zones tab with the Minimap tab"] = "將“區域”選項卡與“小地圖”選項卡同步“"
L["Which deactivates the functions from the Minimap tab and is now controlled together by the Zones tab"] = "這會停用「小地圖」標籤上的功能，現在透過「區域」標籤集中控制"
L["This will delete all Minimap settings and replace them with those from Zones tab"] = "這將刪除所有小地圖設置並將其替換為“區域”選項卡中的設置"
L["Synchronizes the Capitals tab with the Capitals - Minimap tab"] = "將“首都”標籤與“首都迷你卡”標籤同步"
L["Which deactivates the functions from the Capitals - Minimap tab and is now controlled together by the Capitals tab"] = "這停用了“首都迷你卡”標籤的功能，現在正在通過“省會城市”選項卡一起控制"
L["This will delete all Capitals - Minimap settings and replace them with those from Capitals tab"] = "這刪除了“首都 - 迷你卡”的所有設置，並由“省會城市”選項卡上的設置取代"
--1 Capitals
L["Leather Armor"] = "皮甲"
L["Heavy Armor"] = "重甲"
L["Plate Armor"] = "板甲"
L["Cloth Armor"] = "布甲"
L["Quartermaster"] = "军需官"
L["The Scryers"] = "占星者"
L["The Aldor"] = "奥尔多"
L["Paths"] = "方法"
L["Capitals"] = "省會城市"
L["Alchemy"] = "煉金術"
L["Engineer"] = "工程師"
L["Jewelcrafting"] = "珠宝加工"
L["Leatherworking"] = "制皮"
L["Blacksmithing"] = "锻造"
L["Tailoring"] = "裁縫"
L["Skinning"] = "剥皮"
L["Mining"] = "采矿"
L["Herbalism"] = "草药学"
L["Enchanting"] = "附魔"
L["Warspear"] = "战争之矛"
L["Stormshield"] = "暴风之盾"
L["Shrine2Moons"] = "双月殿"
L["Shrine7Stars"] = "七星殿"
L["Starting on the first Sunday of each month for one week"] = "在本月的第一個星期日開始一個星期"
L["Enables the display of icons for a specific capital city"] = "激活特定資本的符號的顯示"
L["This MapNotes icons shows various icons that are too close to each other together"] = "此MAPNOTES符號顯示了不同的符號，這些符號太近了。"
L["Only affects instance passage icons, not path icons such as exit icons or icons on an instance map or the Capitals category / Minimap Capitals"] = "僅通過符號來影響實例，而不是路徑符號，例如實例地圖上的啟動符號或符號"
L["Zones"] = "區域"
L["Continents"] = "各大洲"
--2 Unexplored Areas function
L["Unexplored Areas"] = "未開發領域"
L["Unexplored Areas visibility"] = "未探索領域的可見性"
L["Changes the visibility of unexplored Areas"] = "改變未探索區域的可見性"
L["Fog"] = "多霧路段"
L["Mist of the Unexplored"] = "未探索的霧"
L["Leaves the unexplored areas revealed but adds a slight fog so you can still see which ones you haven't explored yet"] = "留下未探索的區域，但增加了淡淡的霧，因此您仍然可以看到尚未探索的區域"
L["Reveals unexplored areas and shows the individual areas of each zone that are actually still unexplored"] = "揭示未探索的區域並顯示每個區域中實際上尚未探索的各個區域"
--3 Info tab
L["Info"] = "資訊"
L["A description of what this addon does and what functions it offers"] = "描述此插件的功能以及它提供的功能"
L["A collection of various icons on various maps from previous expansions up to Dragonflight"] = "來自所有擴展名的不同卡片上不同符號的集合"
L["Displays instance entrances, portals, ships, zeppelins, exits, passage, enemy faction and other transport icons"] = "顯示實例，門戶，船隻，Zeppeline，輸出，通道，敵方派系和其他符號"
L["All icons can be activated or deactivated separately!"] = "所有符號都可以分別激活或停用！"
L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] = "換檔功能選項：您可以使用或不使用Shift單擊的MAPNOTES符號"
L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"] = "隱藏mapnotes！ 選項：所有符號都可以單擊顯示"
L["Normally on a maximized map you cannot use instance icons from Blizzard or other addons that would open the adventure guide. But not for MapNotes! You can use all functions on minimized or maximized maps!"] = "通常，您不能在最大化的卡片上使用暴風雪或其他插件實例符號，該卡將打開“冒險指南”。 但不是為了mapnotes！ 您可以在最小化或最大化卡上使用所有功能！"
L["Worldmap function"] = "世界地圖功能"
L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] = "右鍵單擊符號添加tomtom Wayground（除了Azeroth和Mini卡除外）"
L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] = "左鍵單擊實例符號將在“冒險指南”中打開相應的地牢"
L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] = "艾澤拉斯/大陸圖:左鍵單擊傳輸符號，該卡打開該符號的位置"
L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"] = "區域卡：左鍵單擊傳輸符號，卡從符號的目標打開"
L["Example zone map: => Orgrimmar. Left-click on this icon opens the map of Orgrimmar"] = "示例區域卡：'=> orgrimmar'左單擊此符號，Orgrimmar的地圖打開"
L["Example Azeroth/continent map: 'Jade Forest Portal => Orgrimmar' Left-click on this symbol opens the map of the Jade Forest. So you can see where you need to go to get to the portal"] = "示例艾澤拉斯/大陸地圖：“ jadewald portal => orgrimmar”左鍵單擊符號，從玉森林中打開卡片。 這樣您就可以看到要去門戶的地方"
L["Maximized Map function"] = "最大化的卡功能"
L["After the adventure guide is opened using a MapNote instance icon and you then switch to the dungeon map using the 'Show map' option in the adventure guide, the map is shown reduced in size so that you can move with the character within the instance and see where you have to go. This minimized map feature ends when you close the map or once! Press the “World map on/off” button (which you have set under 'ESC - Keyboard assignment - Interface function'), whereupon the map will be maximized"] = "在通過實例符號打開冒險領袖，然後通過“顯示卡”選項切換到冒險指南中的地牢卡，該卡以簡化顯示，以便您可以在實例中使用字符移動並查看你必須去哪裡。 關閉卡或一次時，此最小化的卡功能結束了！ 按下“世界地圖開/關”按鈕（您已在'ESC-鍵盤佈局 -  interfaceFunFunction'下設置了該按鈕），然後將卡最大化"
L["Minimap button function"] = "Mini -Garden功能"
L["Left-click opens or close the MapNote setting menu"] = "左鍵單擊打開或關閉MAPNOTE設置菜單"
L["Right-click opens or close the HandyNote setting menu"] = "右鍵單擊打開或關閉手機styote設置菜單"
L["Shift+Right-click hide the minimap button"] = "Shift+正確 - 單擊，隱藏迷你花園按鈕"
L["Chat commands"] = "聊天命令"
--4 General tab
L["Description"] = "描述"
L["Position of the real Instance Entrance"] = "真實實例輸入的位置"
L["Way to the Instance Entrance"] = "實例輸入的方法"
L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] = "還可以停用區域卡上的所有暴風雪實例符號。 但是，這些可以在盧佩“卡過濾器”地牢輸入的頂部的地圖上重新激活。 mapnotes vs的重新分解和激活。 暴雪，再次在區域卡上停用實例符號"
L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] = "隱藏了某些暴風雪符號（例如，地圖上的大寫 /聯盟 /中性或一般旅行符號的首都符號），並用幾乎相同的mapnotes符號代替它們，這些符號提供了其他信息和功能"
L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"] = "僅在MAPNOTES符號和暴雪重疊符號的情況"
L["If the map is open, after enabling or disabling this option, the map must be reopened once for the changes to display correctly"] = "如果卡打開，則必須在激活或停用此選項後再次打開卡，以使更改正確顯示"
L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"] = "左鍵點選此地圖上的圖示可開啟冒險指南或入口網站、船舶、飛艇或特殊運輸圖示所在地圖中的對應實例"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "如果用左鼠標按鈕在卡上按下這些符號之一，則關聯的冒險指南或目標的地圖打開"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "如果單擊左鼠標按鈕單擊多個符號，則將打開地牢的卡片"
L["At the same time, all icons representing additional instance inputs are removed"] = "同時，所有代表附加實例輸入的圖示都被刪除"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "通過所有卡上的符號更改所有符號，以將其變為地牢，RAID或多個符號。 此外，段落選項無處不在，並添加了各個突襲，地牢或多個選項的符號（地下城卡與所有這些都保持不變）"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "「在不同的地圖上顯示不同的圖示。所有圖示都是可點擊的（小地圖上除外），並且具有地圖圖示使用或不使用 Shift 鍵的功能。只需更改 Shift 功能即可！"
L["Generally"] = "一般來說"
L["General"] = "一般的"
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "同時適用於艾澤拉斯/大陸/地下城地圖的常規設定"
L["General settings / Additional functions"] = "常規設定/附加功能"
L["Shift function!"] = "移位功能！"
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."] = "「啟用後，您必須在左鍵或右鍵單擊之前按Shift 鍵才能與MapNotes 圖標進行交互。但這有一個優點，因為遊戲中有很多圖標，包括來自其他插件的圖標，因此您不會意外單擊某個圖標符號並更改地圖，或錯誤地創建 TomTom 點。"
L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"] = "您總是必須同時按Shift +鼠標按鈕才能與MapNotes符號進行交互"
L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"] = "您現在可以與MapNotes符號進行交互，而不必同時按Shift +鼠標按鈕"
L["Settings apply to the zone map and the mini map at the same time"] = "設置同時適用於區域卡和迷你卡"
L["symbol size"] = "符號大小"
L["Changes the size of the icons"] = "更改圖示的大小"
L["symbol visibility"] = "符號可見性"
L["Changes the visibility of the icons"] = "更改圖示的可見性"
L["hide minimap button"] = "隱藏小地圖按鈕"
L["Hide the MapNotes button on the minimap"] = "在迷你卡上隱藏mapnotes按鈕"
L["hide worldmap button"] = "隱藏世界地圖按鈕"
L["Hide the MapNotes button on the worldmap"] = "隱藏世界地圖上的mapnotes按鈕"
L["hide MapNotes!"] = "隱藏地圖註釋！"
L["-> Hide all MapNotes icons <-"] = "-> 隱藏所有 MapNotes 圖示 <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "禁用MapNotes，每張地圖上的所有圖示將被隱藏，所有類別將被停用"
L["Adventure guide"] = "冒險指南"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "左鍵單擊地圖上的 MapNotes 團隊（綠色）、地下城（藍色）或多個圖標（綠色和藍色）可在冒險指南中打開相應的地下城或團隊地圖（地圖不得全屏打開）"
L["TomTom waypoints"] = "TomTom 航點"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "「在大陸或地牢地圖上的MapNotes 中，按住Shift 鍵並右鍵點擊突襲、地牢、多個符號、傳送門、船舶、飛艇、通道或出口，會建立到此點的TomTom 路徑點（但必須為此安裝TomTom 附加元件） ）"
L["extra information"] = "額外的信息"
L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"] = "顯示有關地牢或突襲的其他信息。 例如，老闆的數量已經被殺"
L["gray single"] = "個人灰色"
L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"] = "僅彩色分配的地牢和突襲的彩色單個點（如果您有ID）"
L["gray all"] = "全是灰色"
L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"] = "為大家著色！ 分配的地牢和突襲也有多個點（如果您有ID）"
L["enemy faction"] = "敵對派系"
L["Shows enemy faction (horde/alliance) icons"] = "顯示敵方派系（部落/聯盟）圖示"
L["chat message"] = "聊天消息" 
L["Disables MapNotes status chat messages excluding core information"] = "停用MAPNOTES狀態聊天新聞除了核心信息"
L["Shows special transport icons like"] = "顯示特殊的運輸圖標"
L["Combines several different grouped symbols that lie on one point, thus showing all possible transport/instance symbols that are located here instead of just one of several possible ones"] = "結合幾個位於一個點的幾個不同的分組符號，從而顯示了所有可能位於此處的運輸/實例符號，而不僅僅是幾個可能的傳輸符號"
L["Left-clicking on one of these symbols on the map opens the corresponding map, which contains all of the points listed by the symbol on the map"] = "左鍵點擊地圖上的這些符號之一會開啟對應的地圖，其中包含地圖上該符號列出的所有點"
L["Informations"] = "「資訊」"
L["Chat commands:"] = "聊天命令："
L["to show MapNotes info in chat: /mn, /MN"] = "聊天中顯示 MapNotes 資訊：/mn、/MN"
L["to open MapNotes menu: /mno, /MNO"] = "開啟 MapNotes 選單：/mno、/MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "關閉 MapNotes 選單：/mnc、/MNC"
L["to show minimap button: /mnb or /MNB"] = "顯示小地圖按鈕：/mnb 或 /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "隱藏小地圖按鈕：/mnbh 或 /MNBH"
--5 Tab specific
L["Left-clicking on a symbol on this map type opens the corresponding map in which the symbol is located"] = "左鍵單擊此卡類型上的符號打開符號所在的相應卡"
L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"] = "某些實例圖標不能隱藏，因為它們是由暴風雪本身創建的，而不是由mapnotes創建的"
L["Azeroth map"] = "艾澤拉斯地圖"
L["Continent map"] = "大陸地圖"
L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"] = "圖標尺寸2.0將是區域地圖上暴雪自己實例圖標的默認尺寸"
L["Zone map"] = "區域圖"
L["Dungeon map"] =  "地下城地圖"
--6 Map Tabs together
L["Instance Entrance"] = "實例入口"
L["switches weekly between"] = "每週切換之間"
L["Activate icons"] = "啟動圖示"
L["Show individual icons"] = "顯示單獨的圖示"
L["Exits"] = "退出"
L["Raids"] = "突襲"
L["Dungeons"] = "地下城"
L["Passages"] = "通道"
L["Multiple"] = "多種的"
L["Portals"] = "門戶"
L["Zeppelins"] = "齊柏林飛船"
L["Ships"] = "船"
L["Transport"] = "運輸"
L["Special"] = "特別的"
L["Ogre Waygate"] = "食人魔路門"
L["Old Instances"] = "舊事例"
L["Show icons of passage on this map"] = "在這張地圖上顯示通道的圖示"
L["Show icons of raids on this map"] = "在這張地圖上顯示突襲的圖示"
L["Show icons of dungeons on this map"] = "在此地圖上顯示地下城的圖示"
L["Show icons of multiple on this map"] = "在此地圖上顯示多個圖示"
L["Show icons of portals on this map"] = "在此地圖上顯示門戶的圖示"
L["Show icons of zeppelins on this map"] = "在此地圖上顯示齊柏林飛艇的圖示"
L["Show icons of ships on this map"] = "在此地圖上顯示船舶的圖示"
L["Show all MapNotes for a specific map"] = "顯示特定地圖的所有地圖註釋"
L["Show icons of MapNotes dungeon exit on this map"] = "在此地圖上顯示 MapNotes 地牢出口的圖示"
L["Enables the display of all possible icons on this map"] = "啟用此地圖上所有可能的圖示的顯示"
L["Show icons of passage to raids and dungeons on this map"] = "在這張地圖上顯示突襲和地下城通道的圖示"
L["Show Ogre Waygate icons from Garrison on this map"] = "在這張地圖上顯示來自加里森的食人魔傳送門圖示"
L["Activates the display of all possible icons on this map"] = "啟動此地圖上所有可能的圖示的顯示"
L["Show icons of multiple (dungeons,raids) on this map"] = "在此地圖上顯示多個（地下城、突襲）的圖示"
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "在這張地圖上顯示所有外域 MapNotes 地牢、團隊、傳送門、飛艇和船隻圖示"
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "顯示此地圖上的所有 Draenor MapNotes 地下城、團隊、傳送門、飛艇和船舶圖示"
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "在這張地圖上顯示所有 Shadowlands MapNotes 地下城、團隊、傳送門、飛艇和船舶圖示"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "在這張地圖上顯示所有卡利姆多 MapNotes 地下城、團隊、傳送門、飛艇和船舶圖示"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "在這張地圖上顯示所有東部王國 MapNotes 地牢、團隊、傳送門、飛艇和船隻圖標"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "在這張地圖上顯示所有諾森德 MapNotes 地牢、團隊、傳送門、飛艇和船舶圖標"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "顯示此地圖上所有 Pandaria MapNotes 地下城、團隊、傳送門、飛艇和船舶圖示"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "顯示此地圖上所有贊達拉 MapNotes 地下城、團隊、傳送門、飛艇和船舶圖示"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "在這張地圖上顯示所有庫爾提拉斯 MapNotes 地下城、團隊、傳送門、飛艇和船舶圖標"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "在這張地圖上顯示所有破碎群島 MapNotes 地下城、團隊、傳送門、飛艇和船舶圖示"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "在這張地圖上顯示所有 Dragon Isles MapNotes 地下城、團隊、傳送門、飛艇和船舶圖標"
L["Show all Khaz Algar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "顯示此地圖上的所有 Khaz Algar MapNotes 地下城、突襲、傳送門、飛艇和船舶圖標"
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "某些圖示可以顯示或不顯示。如果該類別中的選項（啟動圖示）已啟動"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "顯示普通版本的地下城和突襲，例如納克薩瑪斯、通靈學院或血色修道院，這需要成就或其他東西"
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "與此地圖上其他符號太近的個體符號並未將100％精確放在此卡上！ 有關更詳細的坐標，請使用區域卡上的點"
--7 Maps
L["Kalimdor"] = "卡利姆多"
L["Eastern Kingdom"] = "東方王國"
L["Outland"] = "外地"
L["Northrend"] = "諾森德"
L["Pandaria"] = "潘達利亞"
L["Draenor"] = "德拉諾"
L["Broken Isles"] = "破碎群島"
L["Zandalar"] = "贊達拉"
L["Kul Tiras"] = "庫爾提拉斯"
L["Shadowlands"] = "暗影國度"
L["Dragon Isles"] = "龍之島"
--8 Core specific
L["Shift function"] = "「平移功能」"
L["-> MiniMapButton <-"] = "-> 迷你地圖按鈕 <-"
L["-> WorldMapButton <-"] = "-> 世界卡按鈕 <-"
L["MapNotes menu window"] = "MapNotes 選單視窗"
L["All set icons have been restored"] = "所有設定的圖示已恢復"
L["All MapNotes icons have been hidden"] = "所有 MapNotes 圖示已被隱藏"
L["is activated"] = "已啟動"
L["is deactivated"] = "已停用"
L["are shown"] = "顯示"
L["are hidden"] = "被隱藏"
L["Left-click => Open/Close"] = "左鍵單擊=>開啟/關閉"
L["Right-click => Open/Close"] = "右鍵單擊=>開啟/關閉"
L["Shift + Right-click => hide"] = "Shift + 右鍵單擊 => 隱藏"
L["Middle-Mouse-Button => Open/Close"] = "中間鼠標按鈕=>打開/關閉"
--9 transport --9
L["icons"] = "圖示"
L["Exit"] = "出口"
L["Entrance"] = "入口"
L["Passage"] = "通道"
L["Portal"] = "門戶網站"
L["Ship"] = "船"
L["Zeppelin"] = "齊柏林飛艇"
L["Portalroom"] = "傳送門室"
L["The Dark Portal"] = "黑暗之門"
L["Captain Krooz"] = "克魯茲船長"
L["Use the Old Keyring"] = "使用舊鑰匙圈"
L["Travel"] = "旅行"
L["Teleporter"] = "傳送器"
L["Old Keyring"] = "舊鑰匙圈"
L["Old Version"] = "舊版"
L["Secret Portal"] = "秘密門戶"
L["Secret Entrance"] = "秘密入口"
L["Ogre Waygate to Garrison"] = "通往要塞的食人魔傳送門"
L["in the basement"] = "在地下室"
L["(on the tower)"] = "（在塔上）"
L["(inside portal chamber)"] = "（傳送門室內）"
L["(inside building)"] = "（建築物內）"
--10 places
L["Auberdine"] = "奧伯丁"
L["Ratchet"] = "棘輪"
L["Theramore Isle"] = "獅子山"
L["Dire Maul"] = "厄運之槌"
L["Blackfathom Deeps"] = "深邃的黑色洞穴"
L["Stormwind"] = "暴風"
L["Shadowfang Keep"] = "影牙城堡"
L["Undercity"] = "宇宙"
L["Rut'theran"] = "魯瑟蘭"
L["Azuremyst Isle"] = "秘藍島"
L["Bel'ameth, Amirdrassil"] = "貝拉梅斯，阿米達希爾"
L["Darnassus"] = "達納蘇斯"
L["Teldrassil"] = "泰達希爾"
L["Graveyard"] = "墓地"
L["Library"] = "圖書館"
L["Cathedral"] = "大教堂"
L["Armory"] = "軍械庫"
L["Ashran"] = "阿什蘭"
L["The Timeways"] = "時光之道"
L["Vol'mar"] = "沃爾瑪"
L["Zuldazar"] = "祖達薩"
L["Thunder Bluff"] = "雷霆崖"
L["Silvermoon City"] = "銀月城"
L["Boralus, Tiragarde Sound"] = "伯拉勒斯，提拉加德海峽"
L["Valdrakken"] = "瓦爾德拉肯"
L["Badlands"] = "荒原"
L["Oribos"] = "奧裡博斯"
L["Azsuna"] = "阿蘇納"
L["Uldum"] = "奧丹姆"
L["Dazar'alor"] = "達薩羅"
L["Shattrath City"] = "沙塔斯城"
L["Echo Isles, Durotar"] = "迴聲群島，杜隆塔爾"
L["Silithus"] = "希利蘇斯"
L["Nazjatar"] = "納沙塔爾"
L["Emerald Dream"] = "翡翠夢"
L["Thunder Bluff"] = "雷霆崖"
L["Howling Fjord"] = "呼嘯峽灣"
L["Ruins of Lordaeron"] = "洛丹倫廢墟"
L["Isle of Thunder"] = "雷霆島"
L["Twilight Highlands"] = "黃昏高地"
L["Vashj'ir"] = "瓦斯琪爾"
L["The Waking Shores, Dragon Isles"] = "甦醒的海岸，龍之島"
L["Shado-Pan Garrison, Townlong Steppes"] = "影蹤派駐軍，螳螂草原"
L["Grom'gol, Stranglethorn Vale"] = "格羅姆高，荊棘谷"
L["Exodar"] = "出埃及道"
L["Jade Forest"] = "玉森林"
L["Drustvar"] = "德魯斯瓦"
L["Gorgrond"] = "戈爾格朗德"
L["Ohn'ahran Plains"] = "奥纳阿兰平原"
L["Borean Tundra"] = "北風苔原"
L["Tirisfal Glades"] = "提瑞斯法林地"
L["Wintergrasp"] = "冬擁湖"
L["Boralus"] = "伯拉勒斯"
L["Stormsong Valley"] = "斯托頌谷地"
L["Tiragarde Sound"] = "提拉加德之聲"
L["Ironforge"] = "鐵爐堡"
L["Blasted Lands"] = "被詛咒的土地"
L["Darkshore"] = "黑海岸"
L["Durotar"] = "杜隆塔爾"
L["Dustwallow Marsh"] = "塵泥沼澤"
L["Vale of Eternal Blossoms"] = "錦繡谷"
L["Arathi Highlands"] = "阿拉希高地"
L["Nazmir"] = "納茲米爾"
L["Vol'dun"] = "沃頓"
L["Isle of Quel'Danas"] = "奎爾丹納斯島"
L["Hellfire Peninsula"] = "地獄火半島"
L["Korthia"] = "科西亞"
L["The Maw"] = "馬胃"
L["Zereth Mortis"] = "澤雷斯·莫蒂斯"
L["Barnard 'The Smasher' Bayswort"] = "巴納德‘粉碎者’貝斯沃特"
L["Desha Stormwallow"] = "德莎風暴泥沼"
L["Daria Smithson"] = "達莉亞·史密森"
L["Swellthrasher"] = "斯威斯特雷瑟"
L["Grok Seahandler"] = "格羅克海手"
L["Erul Dawnbrook"] = "埃魯道恩布魯克"
L["Dread-Admiral Tattersail"] = "恐怖海軍上將塔特賽爾"
L["Grand Admiral Jes-Tereth"] = "傑斯-特雷斯元帥"
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
L["Registrant"] = "登記"
L["Scarlet Instances"] = "猩紅紅色實例"
L["hide Cosmos map symbols"] = "隱藏宇宙符號"
L["Shows the locations of Raidbrowser applicants for old Raids"] = "顯示屠宰場瀏覽器的位置歸因於舊的屠宰場"
L["Deactivates the display of all possible icons on this map"] = "停用此卡上所有可能的圖標的顯示"
--11 Specific
L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] = "此實例入口處於不同的時間表。 可以在Zidormi上激活其他時間表"
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "在不同的地圖上顯示突襲、地下城、傳送門、船隻和飛艇圖示的位置"
L["(Wards of the Dread Citadel - Achievement)"] = "（恐懼城堡的守衛 - 成就）"
L["(Memory of Scholomance - Achievement)"] = "（通靈學院的記憶 - 成就）"
L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] = "「（只有當你的陣營當前佔領巴沙爾阿蘭時，\n它才會出現在遊戲中）"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "這個阿拉希高地傳送門只有在你的陣營目前佔領了阿爾戈羅克時才會激活"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "這個黑海岸傳送門只有在你的陣營目前佔領巴沙爾阿蘭時才會啟動"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "（傑斯-泰瑞斯海軍上將）將帶你前往沃頓、納茲米爾或祖達薩"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "（恐怖海軍上將塔特賽爾）將帶你前往德魯斯瓦、提拉加德海峽或斯托頌谷地"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "「舊鑰匙圈\n你可以在[萬聖節活動]或[拍賣行]的[裝滿戰利品的南瓜]中獲得猩紅鑰匙\n現在你可以在這裡激活[舊鑰匙圈]\n來激活舊鑰匙圈血色修道院的地下城版本"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "在某個實例進度後首先出現\n或需要某個成就" 
--12 Classic
L["Ulduar"] = "奧杜阿爾"
L["Trial of the Champion"] = "冠軍的試煉"
L["Trial of the Crusader"] = "十字軍的考驗"
L["Azjol-Nerub"] = "艾卓-尼魯布"
L["Drak'Tharon Keep"] = "達克薩隆要塞"
L["Utgarde Pinnacle"] = "烏特加德之巔"
L["Utgarde Keep"] = "烏特加德城堡"
L["Magisters' Terrace"] = "魔導師平台"
L["Karazhan"] = "卡拉贊"
L["The Culling of Stratholme"] = "淨化史坦索姆"
L["Old Hillsbrad Foothills"] = "舊希爾斯布萊德丘陵"
L["The Oculus"] = "魔術環"
L["The Ruby Sanctum"] = "紅玉聖殿"
L["Black Temple"] = "黑暗神殿"
L["Auchenai Crypts"] = "奧金尼地穴"
L["Sethekk Halls"] = "塞泰克大廳"
L["The Arcatraz"] = "禁魔監獄"
L["Reforge"] = "重鑄"
--13 The War Within
L["Khaz Algar"] = "Khaz Algar"
L["Dornogal"] = "Dornogal"
L["Catalyst"] = "催化劑"
L["Merchant for Renown items"] = "Merchant for Renown items"
L["Council of Dornogal"] = "Council of Dornogal"
L["The Assembly of the Deeps"] = "The Assembly of the Deeps"
L["Hallowfall Arathi"] = "Hallowfall Arathi"