local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "zhTW")
if not L then return end

--1 General tab--1 常規選項卡
L["Description"] = "描述"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "如果用左鼠標按鈕在卡上按下這些符號之一，則關聯的冒險指南或目標的地圖打開"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "如果單擊左鼠標按鈕單擊多個符號，則將打開地牢的卡片"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "通過所有卡上的符號更改所有符號，以將其變為地牢，RAID或多個符號。 此外，段落選項無處不在，並添加了各個突襲，地牢或多個選項的符號（地下城卡與所有這些都保持不變）"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "「在不同的地圖上顯示不同的圖示。所有圖示都是可點擊的（小地圖上除外），並且具有地圖圖示使用或不使用 Shift 鍵的功能。只需更改 Shift 功能即可！"
L["General"] =  "一般的" 
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
L["Hide the minimap button on the minimap"] = "隱藏小地圖上的小地圖按鈕"
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
L["Informations"] = "「資訊」"
L["Chat commands:"] = "聊天命令："
L["to show MapNotes info in chat: /mn, /MN"] = "聊天中顯示 MapNotes 資訊：/mn、/MN"
L["to open MapNotes menu: /mno, /MNO"] = "開啟 MapNotes 選單：/mno、/MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "關閉 MapNotes 選單：/mnc、/MNC"
L["to show minimap button: /mnb or /MNB"] = "顯示小地圖按鈕：/mnb 或 /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "隱藏小地圖按鈕：/mnbh 或 /MNBH"
--2 Azeroth tab specific --2 艾澤拉斯標籤特定
L["Azeroth map"] = "艾澤拉斯地圖"
--3 Continent tab specific --3 大陸選項卡特定
L["Continent map"] = "大陸地圖"
--4 Zone tab specific --4 區域選項卡特定
L["Zone / Minimap"] = "區域 /迷你卡"
--5 DungeonMap Tab specific --5 DungeonMap 選項卡特定
L["Dungeon map"] =  "地下城地圖" 
--6 Map Tabs together --6 個地圖選項卡在一起
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
L["Show icons of other transport possibilities on this map"] = "在此地圖上顯示其他交通可能性的圖示"
L["Show Ogre Waygate icons from Garrison on this map"] = "在這張地圖上顯示來自加里森的食人魔傳送門圖示"
L["Activates the display of all possible icons on this map"] = "啟動此地圖上所有可能的圖示的顯示"
L["Show icons of multiple (dungeons,raids) on this map"] = "在此地圖上顯示多個（地下城、突襲）的圖示"
L["Show icons of other transport possibilities on the continent and minimap"] = "顯示大陸上其他交通可能性的圖示和小地圖"
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
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "某些圖示可以顯示或不顯示。如果該類別中的選項（啟動圖示）已啟動"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "顯示普通版本的地下城和突襲，例如納克薩瑪斯、通靈學院或血色修道院，這需要成就或其他東西"
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "與此地圖上其他符號太近的個體符號並未將100％精確放在此卡上！ 有關更詳細的坐標，請使用區域卡上的點"
--7 Maps --7張地圖
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
--8 Core specific --8 核心特定
L["Shift function"] = "「平移功能」"
L["-> MiniMapButton <-"] = "-> 迷你地圖按鈕 <-"
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
--9 transport --9 運輸
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
L["Old Keyring"] = "舊鑰匙圈"
L["Old Version"] = "舊版"
L["Secret Portal"] = "秘密門戶"
L["Secret Entrance"] = "秘密入口"
L["Ogre Waygate to Garrison"] = "通往要塞的食人魔傳送門"
L["in the basement"] = "在地下室"
L["(on the tower)"] = "（在塔上）"
L["(inside portal chamber)"] = "（傳送門室內）"
L["(inside building)"] = "（建築物內）"
--10 places --10個地方
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
L["Aszuna"] = "阿蘇娜"
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
--11 Specific --11 具體
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "在不同的地圖上顯示突襲、地下城、傳送門、船隻和飛艇圖示的位置"
L["(Wards of the Dread Citadel - Achievement)"] = "（恐懼城堡的守衛 - 成就）"
L["(Memory of Scholomance - Achievement)"] = "（通靈學院的記憶 - 成就）"
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "「（只有當你的陣營當前佔領巴沙爾阿蘭時，它才會出現在遊戲中）"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "這個阿拉希高地傳送門只有在你的陣營目前佔領了阿爾戈羅克時才會激活"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "這個黑海岸傳送門只有在你的陣營目前佔領巴沙爾阿蘭時才會啟動"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "（傑斯-泰瑞斯海軍上將）將帶你前往沃頓、納茲米爾或祖達薩"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "（恐怖海軍上將塔特賽爾）將帶你前往德魯斯瓦、提拉加德海峽或斯托頌谷地"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "「舊鑰匙圈\n你可以在[萬聖節活動]或[拍賣行]的[裝滿戰利品的南瓜]中獲得猩紅鑰匙\n現在你可以在這裡激活[舊鑰匙圈]\n來激活舊鑰匙圈血色修道院的地下城版本"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "在某個實例進度後首先出現\n或需要某個成就" 