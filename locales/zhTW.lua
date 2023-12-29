local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "zhTW")
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
L["Shows locations of raids, dungeons, portals ,ship and zeppelins symbols on different maps"] = "在不同地圖上顯示突襲、地下城、傳送門、船舶和飛艇符號的位置"
L["MapNotes menu window"] = "MapNotes 選單視窗"
L["All set symbols have been restored"] = "所有設定的符號已恢復"
L["All MapNotes symbols have been hidden"] = "所有 MapNotes 符號均已隱藏"
L["is activated"] = "已啟用"
L["is deactivated"] = "已停用"
L["are shown"] = "顯示"
L["are hidden"] = "被隱藏"
L["symbols"] = "符號"
L["Left-click => Open/Close"] = "左键单击=>打开/关闭"
L["Right-click => Open/Close"] = "右鍵單擊=>打開/關閉"
L["Shift + Right-click => hide"] = "Shift + 右键单击​​ => 隐藏"
L["(also opens MapNotes if hiding was unwanted)"] = "（如果不需要隐藏，则打开 MapNotes）"


--1
L["General"] = "一般的"  --General tab
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "同時適用於艾澤拉斯/大陸/地下城地圖的常規設置"
L["General settings / Additional functions"] = "常規設定/附加功能"
L["-> MiniMapButton <-"] = "-> 小地圖按鈕 <-"
L["hide minimap button"] = "隱藏小地圖按鈕"
L["Show the minimap button on the minimap"] = "在小地圖上顯示小地圖按鈕"
L["Hide the minimap button on the minimap"] = "隱藏小地圖上的小地圖按鈕"
L["hide MapNotes!"] = "隱藏地圖註釋！"
L["-> Hide all MapNotes symbols <-"] = "-> 隱藏所有 MapNotes 符號 <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "停用MapNotes，每張地圖上的所有圖示將被隱藏，所有類別將被停用"
L["Resizes symbols on the azeroth, continent, zone, dungeon and minimap"] = "調整艾澤拉斯、大陸、區域、地下城和小地圖上符號的大小"
L["symbol visibility"] = "符號可見性"
L["Changes the visibility of the symbols"] = "更改符號的可見性"
L["Adventure guide"] = "冒險指南"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "左鍵點擊地圖上的MapNotes團隊（綠色）、地下城（藍色）或多個圖示（綠色和藍色）可在冒險指南中開啟對應的地下城或團隊地圖（地圖不得全螢幕開啟）"
L["TomTom waypoints"] = "TomTom 航點"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Shift+右鍵單擊大陸或地牢地圖上的團隊、地牢、多個符號、傳送門、船舶、飛艇、通道或 MapNotes 出口，以建立到此點的 TomTom 路徑點（但為此必須安裝 TomTom 附加元件）"
L["killed Bosses"] = "首領被殺"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "對於您已殺死Boss 並因此被分配ID 的地下城和突襲，艾澤拉斯和大陸地圖上的此符號將在您將滑鼠懸停在該地下城或突襲符號上時立即顯示已殺死或剩餘Boss 的數量（例如2/8 神話，4/7 英雄等）"
L["gray symbols"] = "灰色符號"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "如果您被分配到地下城或團隊副本並擁有 ID，此選項會將地下城或團隊副本圖示變為灰色，直到重置此 ID，以便您可以查看已開始或完成的地下城或團隊副本"
L["multiple points"] = "多點"
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "如果您被分配到此多點的任何地下城或突襲並且擁有ID，則將地下城和/或突襲的多點顏色顯示為灰色，以便您可以看到您已開始或完成多點的任何地下城或突襲"
L["enemy faction"] = "敵方派系"
L["Shows enemy faction (horde/alliance) symbols"] = "也顯示敵方派系（部落/聯盟）符號"
L["Old Instances"] = "舊實例"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "顯示普通版本的地下城和突襲，例如納克薩瑪斯、通靈學院或血色修道院，這需要成就或其他東西"
L["Informations"] = "資訊"
L["Chat commands:"] = "聊天命令:"
L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"] = "在聊天中顯示 MapNotes 訊息: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"
L["to open MapNotes menu: /mno, /MNO"] = "開啟 MapNotes 選單: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "關閉 MapNotes 選單: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "顯示小地圖按鈕: /mnb 或者 /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "隱藏小地圖按鈕: /mnbh 或者 /MNBH"


--2
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "資訊：與艾澤拉斯地圖上其他符號太接近的個別艾澤拉斯符號並未 100% 準確地放置在艾澤拉斯地圖上！為了精確協調，請使用大陸地圖或區域地圖上的點"
L["Azeroth map"] = "艾澤拉斯地圖"  --Azeroth tab
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "艾澤拉斯地圖設定。某些符號可以顯示或不顯示。如果該類別中的選項（啟動符號）已被啟動"
L["Activate symbols"] = "啟動符號"
L["Activates the display of all possible symbols on the Azeroth map"] = "啟動艾澤拉斯地圖上所有可能符號的顯示"
L["symbol size"] = "符號大小"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "調整區域地圖、艾澤拉斯地圖和小地圖上的符號大小"
L["Show individual symbols"] = "顯示各個符號"
L["Raids"] = "突襲"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the Azeroth map"] = "在艾澤拉斯地圖上顯示突襲的符號"
L["Dungeons"] = "地下城"  -- Dungeon anzeigen
L["Show symbols of dungeons on the Azeroth map"] = "在艾澤拉斯地圖上顯示地下城的符號"
L["Multiple"] = "多種的"  -- Gemischte anzeigen
L["Show symbols of multiple on the Azeroth map"] = "在艾澤拉斯地圖上顯示多重符號"
L["Portals"] = "入口網站"  -- Portale anzeigen
L["Show symbols of portals on the Azeroth map"] = "在艾澤拉斯地圖上顯示傳送門的符號"
L["Zeppelins"] = "齊柏林飛船"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the Azeroth map"] = "在艾澤拉斯地圖上顯示齊柏林飛船的符號"
L["Ships"] = "船舶"  -- Schiffe anzeigen
L["Show symbols of ships on the Azeroth map"] = "在艾澤拉斯地圖上顯示船舶符號"
L["Show all MapNotes for a specific map"] = "顯示特定地圖的所有地圖註釋"
L["Kalimdor"] = "卡利姆多"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "顯示艾澤拉斯地圖上所有 Kalimdor MapNotes 地下城、團隊、傳送門、飛艇和船舶符號"
L["Eastern Kingdom"] = "東方王國"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "顯示艾澤拉斯地圖上所有 Eastern Kingdom MapNotes 地下城、團隊、傳送門、齊柏林飛船和船舶符號"
L["Northrend"] = "諾森德"  -- Nordend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "顯示艾澤拉斯地圖上所有諾森德 MapNotes 地下城、團隊、傳送門、齊柏林飛船和船舶符號"
L["Pandaria"] = "潘達利亞"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "顯示艾澤拉斯地圖上所有 Pandaria MapNotes 地下城、團隊、傳送門、飛艇和船舶符號"
L["Zandalar"] = "贊達拉"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "顯示艾澤拉斯地圖上所有 Zandalar MapNotes 地下城、團隊、傳送門、飛艇和船舶符號"
L["Kul Tiras"] = "庫爾提拉斯"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "顯示艾澤拉斯地圖上所有庫爾提拉斯 MapNotes 地下城、團隊、傳送門、飛艇和船舶符號"
L["Broken Isles"] = "破碎群島"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "顯示艾澤拉斯地圖上所有破碎群島 MapNotes 地下城、團隊、傳送門、飛艇和船舶符號"
L["Dragon Isles"] = "龍島"  -- Dracheninseln anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "顯示艾澤拉斯地圖上所有 Dragon Isles MapNotes 地下城、團隊、傳送門、齊柏林飛艇和船舶符號"


--3
L["Continent map"] = "大陸地圖"  --Continent tab
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "大陸地圖設置。某些符號可以顯示或不顯示。如果該類別中的選項（啟動符號）已被啟動"
L["Activate symbols"] = "啟動符號"
L["Activates the display of all possible symbols on the continent map"] = "啟動大陸地圖上所有可能符號的顯示"
L["symbol size"] = "符號大小"
L["Resizes symbols on the continent map"] = "調整大陸地圖上符號的大小"
L["Show individual symbols"] = "顯示各個符號"
L["Raids"] = "突襲"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the continant map and minimap"] = "在大陸地圖和小地圖上顯示突襲的符號"
L["Dungeons"] = "地下城"  -- Dungeon anzeigen
L["Show symbols of dungeons on the continant map and minimap"] = "在大陸地圖和小地圖上顯示地下城的符號"
L["Multiple"] = "多種的"  -- Gemischte anzeigen
L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"] = "在大陸地圖和小地圖上顯示多個（地下城、突襲）的符號"
L["Portals"] = "入口網站"  -- Portale anzeigen
L["Show symbols of portals on the continant map and minimap"] = "在大陸地圖和小地圖上顯示傳送門的符號"
L["Zeppelins"] = "齊柏林飛船"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the continant map and minimap"] = "在大陸地圖和小地圖上顯示齊柏林飛船的符號"
L["Ships"] = "船舶"  -- Schiffe anzeigen
L["Show symbols of ships on the continant map and minimap"] = "在大陸地圖和小地圖上顯示船舶符號"
L["Ogre Waygate"] = "食人魔傳送門"
L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"] = "顯示德拉諾大陸和區域地圖上要塞的食人魔傳送門符號"
L["Show all MapNotes for a specific map"] = "顯示特定地圖的所有地圖註釋"
L["Kalimdor"] = "卡利姆多"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "顯示大陸地圖上所有卡利姆多 MapNotes 地牢、團隊、傳送門、飛艇和船舶符號"
L["Eastern Kingdom"] = "東方王國"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "顯示大陸地圖上所有東部王國 MapNotes 地牢、團隊、傳送門、飛艇和船舶符號"
L["Outland"] = "外地"  -- Scherbenwelt anzeigen
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "顯示大陸地圖上所有 Outland MapNotes 地牢、團隊、傳送門、飛艇和船舶符號"
L["Northrend"] = "諾森德"  -- Northrend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "顯示大陸地圖上所有諾森德 MapNotes 地牢、團隊、傳送門、飛艇和船舶符號"
L["Pandaria"] = "潘達利亞"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "顯示大陸地圖上所有 Pandaria MapNotes 地牢、團隊、傳送門、飛艇和船舶符號"
L["Draenor"] = "德拉諾"  -- Draenor anzeigen
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "顯示大陸地圖上所有德拉諾 MapNotes 地牢、團隊、傳送門、飛艇和船舶符號"
L["Broken Isles"] = "破碎群島"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "顯示大陸地圖上所有破碎群島 MapNotes 地牢、團隊、傳送門、飛艇和船舶符號"
L["Zandalar"] = "贊達拉"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "顯示大陸地圖上所有贊達拉 MapNotes 地牢、團隊、傳送門、飛艇和船舶符號"
L["Kul Tiras"] = "庫爾提拉斯"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "顯示大陸地圖上所有庫爾提拉斯 MapNotes 地牢、團隊、傳送門、飛艇和船隻符號"
L["Shadowlands"] = "暗影國度"  -- Schattendlande anzeigen
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "顯示大陸地圖上所有 Shadowlands MapNotes 地下城、團隊、傳送門、飛艇和船舶符號"
L["Dragon Isles"] = "龍島"  -- Dragonflight anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "顯示大陸地圖上的所有 Dragon Isles MapNotes 地下城、團隊、傳送門、飛艇和船舶符號"


--4
L["Dungeon map"] = "地下城地圖" --DungeonMap Tab
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "地下城地圖設置。某些符號可以顯示或不顯示。如果該類別中的選項（啟動符號）已被啟動。在地牢地圖上顯示 MapNotes 出口和通道點（這些符號僅用於定向目的，單擊它們時不會發生任何情況）"
L["Activate symbols"] = "啟動符號"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "允許在地下城地圖上顯示所有可能的符號（這些符號僅用於定向目的，單擊它們時不會發生任何事情）"
L["Exits"] = "退出"
L["Show symbols of MapNotes dungeon exit on the dungeon map"] = "在地牢地圖上顯示MapNotes地牢出口的符號"
L["Passages"] = "段落"
L["Show symbols of passage on the dungeon map"] = "在地牢地圖上顯示通道符號"
L["Portals"] = "入口網站"  -- Portale anzeigen
L["Show symbols of portals on the dungeon map"] = "在地下城地圖上顯示傳送門的符號"


--5 Entrance/Exit/Passage
L["Exit"] = "出口"
L["Entrance"] = "入口"
L["Passage"] = "頻道"


--6 Transport basics
L["Portal"] ="門戶網站"
L["Ship"] =  "船" 
L["Zeppelin"] = "齊柏林飛船"
L["Portalroom"] = "傳送門室"
L["(inside building)"] = "（建築物內）"
L["(at basement)"] = "（在地下室）"
L["(inside portal chamber)"] = "（傳送門室內）"
L["(on the tower)"] = "（在塔上）"
-- Transport place -- 交通場所
L["Ashran"] = "阿什蘭"
L["Azsuna"] = "阿蘇納"
L["Boralus"] = "伯拉勒斯"
L["Boralus Harbor, Tiragarde Sound"] = "伯拉勒斯港、提拉加德海峽"
L["Booty Bay, Stranglethorn Vale"] = "藏寶海灣、荊棘谷"
L["Caverns of Time"] = "時光之穴"
L["Drustvar"] = "德魯斯瓦"
L["Deepholm"] = "深岩之洲"
L["Dalaran"] = "達拉然"
L["Dalaran, Crystalsong Forest"] = "達拉然、晶歌森林"
L["Dazar'alor"] = "達薩羅"
L["Exodar"] = "埃索達"
L["Echo Isles, Durotar"] = "迴聲群島，杜隆塔爾"
L["Hellfire Peninsula"] = "地獄火半島"
L["Howling Fjord"] = "呼嘯峽灣"
L["Hyjal"] = "海加爾"
L["Ironforge"] = "鐵爐堡"
L["Isle of Thunder"] = "雷霆島"
L["Isle of Quel'Danas"] = "奎爾丹納斯島"
L["Lion's Watch"] = "獅子後衛"
L["Mechagon"] = "麥卡貢"
L["Menethil Harbor, Wetlands"] = "米奈希爾港、濕地"
L["Nazjatar"] = "納沙塔爾"
L["Nazmir"] = "納茲米爾"
L["Ogre Waygate to Garrison"] = "通往要塞的食人魔傳送門"
L["Ohn'ahran Plains"] = "奧恩阿蘭平原"
L["Orgrimmar"] = "奧格瑞瑪"
L["Oribos"] = "奧裡博斯"
L["Ruins of Lordaeron, Undercity"] = "洛丹倫廢墟，幽暗城"
L["Ratchet, Northern Barrens"] = "棘齒城，北貧瘠之地"
L["Stormsong Valley"] = "斯托頌谷地"
L["Stormwind City"] = "暴風城"
L["Silithus"] = "希利蘇斯"
L["Stranglethorn"] = "荊棘谷"
L["Shado-Pan Garrison, TownlongWastes"] = "影蹤派要塞，螳螂荒地"
L["Silvermoon City"] = "銀月城"
L["Stormshield, Ashran"] = "風暴之盾，阿什蘭"
L["Shattrath"] = "沙塔斯"
L["The Dark Portal"] = "黑暗之門"
L["The Emerald Dream"] = "翡翠夢"
L["Tol Barad"] = "托爾巴拉德"
L["Tiragarde Sound"] = "提拉加德之聲"
L["Twilight Highlands"] = "黃昏高地"
L["Thunderbluff"] = "雷霆崖"
L["The Timeways"] = "時光之道"
L["Jade Forest"] = "翡翠林"
L["Uldum"] = "奧丹姆"
L["Vol'Dun"] = "沃頓"
L["Vol'mar"] = "沃爾瑪"
L["Vashj'ir"] = "瓦斯琪爾"
L["Valdrakken"] = "瓦爾德拉肯"
L["Valiance Keep, Borean Tundra"] = "勇敢要塞，北風苔原"
L["Badlands"] = "荒原"
L["Warspear, Ashran"] = "戰矛，阿什蘭"
L["Waking Shores, Dragon Isles"] = "甦醒的海岸、龍島"
L["Zuldazar"] = "祖達薩"
L["Zandalar"] = "贊達拉"
-- other transport -- 其他運輸
L["Back to Zuldazar"] = "回到祖達薩"
L["Back to Boralus"] = "回到伯拉勒斯"
L["(Captain Krooz) will take you to Mechagon"] = "（克魯茲船長）將帶你前往麥卡貢"
L["(Captain Krooz) will take you back to Zuldazar"] = "（克魯茲船長）會帶你回到祖達薩"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "（傑斯-泰瑞斯海軍上將）將帶你前往沃頓、納茲米爾或祖達薩"
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "（只有當你的陣營當前佔領巴沙爾阿蘭時，它才會出現在遊戲中）"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "（恐怖海軍上將塔特賽爾）將帶你前往德魯斯瓦、提拉加德海峽或斯托頌谷地"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "這個Arathi -Hochland門戶僅在您的派系目前被Ar'Gorok佔用時才活躍"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "這個黑暗的海岸門戶只有當您的派系目前被Bashal'aran佔領時才活躍"

--7 old dungeons/raids
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "舊版血色修道院軍械庫\n（需在血色修道院內於48.33 55.88啟動[舊鑰匙圈]）"
L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"] = " 舊版的納克薩瑪斯 - 秘密入口 \n（恐懼城堡的守衛 - 成就）"
L["Old version of Scarlet Monastery Cathedral \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "舊版血色修道院大教堂\n（需在血色修道院內於48.33 55.88啟動【舊鑰匙圈】）"
L["Old version of Scarlet Monastery Graveyard \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"]  "舊版血色修道院墓地\n（需在血色修道院內於48.33 55.88啟動[舊鑰匙圈]"
L["Old version of Scarlet Monastery Library \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "舊版血色修道院圖書館\n（需在血色修道院內於48.33 55.88啟動【舊鑰匙圈】）"
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "舊版血色修道院軍械庫\n（需在血色修道院內於48.33 55.88啟動[舊鑰匙圈]）"
L["Old version of Scholomance - Secret Entrance \n (Memory of Scholomance - Achievement)"] = " 舊版通靈學院 - 秘密入口\n（通靈學院的記憶 - 成就）"
L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"] = "舊鑰匙圈\n你可以在[萬聖節活動]或[拍賣行]的[裝滿戰利品的南瓜]中獲得猩紅鑰匙\n現在你可以在這裡激活[舊鑰匙扣]\n來激活舊的地下城版本來自血色修道院 "