﻿local ADDON_NAME = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "koKR")
if not L then return end

--0 Restore
L["Delete icon permanently?"] = "기호를 삭제 하시겠습니까?"
L["A icon has been deleted"] = "기호가 삭제되었습니다"
L["Restore all deleted icons for different types of maps"] = "다양한 유형의 지도에 대해 삭제된 모든 아이콘을 복원합니다"
L["Restore all deleted icons"] = "삭제된 아이콘 모두 복원"
L["which you removed with Alt + middle mouse button function"] = "Alt + 마우스 가운데 버튼 기능으로 제거한 것"
L["All deleted icons have been restored"] = "삭제된 아이콘은 모두 복원되었습니다"
--0.1 Sync function
L["synchronizes"] = "동기화하다"
L["Synchronizes the Zones tab with the Minimap tab"] = "구역 탭을 미니맵 탭과 동기화합니다"
L["Which deactivates the functions from the Minimap tab and is now controlled together by the Zones tab"] = "이렇게 하면 미니맵 탭의 기능이 비활성화되고 이제 구역 탭을 통해 전체적으로 제어됩니다"
L["This will delete all Minimap settings and replace them with those from Zones tab"] = "모든 미니맵 설정이 삭제되고 구역 탭의 설정으로 대체됩니다"
L["Synchronizes the Capitals tab with the Capitals - Minimap tab"] = "자본탭을수도 미니 카드탭과 동기화합니다"
L["Which deactivates the functions from the Capitals - Minimap tab and is now controlled together by the Capitals tab"] = "이것은 수도 미니 카드탭의 기능을 비활성화하며 이제 수도 도시탭을 통해 함께 통제되고 있습니다"
L["This will delete all Capitals - Minimap settings and replace them with those from Capitals tab"] = "이것은 수도 -미니 카드의 모든 설정을 삭제하고 수도 도시탭의 설정으로 대체되었습니다"
--1 Capitals
L["Leather Armor"] = "가죽 갑옷"
L["Heavy Armor"] = "중갑옷"
L["Plate Armor"] = "판금 갑옷"
L["Cloth Armor"] = "천 갑옷"
L["Quartermaster"] = "병참장교"
L["The Scryers"] = "점술가 길드"
L["The Aldor"] = "알도르 사제회"
L["Paths"] = "방법"
L["Capitals"] = "수도 도시"
L["Alchemy"] = "연금술"
L["Engineer"] = "엔지니어"
L["Jewelcrafting"] = "보석세공"
L["Leatherworking"] = "가죽세공"
L["Blacksmithing"] = "대장기술"
L["Tailoring"] = "재봉술"
L["Skinning"] = "무두질"
L["Mining"] = "채광"
L["Herbalism"] = "약초채집"
L["Enchanting"] = "마법부여"
L["Warspear"] = "전쟁의 창"
L["Stormshield"] = "폭풍방패"
L["Shrine2Moons"] = "두 달의 제단"
L["Shrine7Stars"] = "일곱 별의 제단"
L["Starting on the first Sunday of each month for one week"] = "월 첫 번째 일요일에 일주일 동안 시작"
L["Enables the display of icons for a specific capital city"] = "특정 자본에 대한 상징의 표시를 활성화합니다"
L["This MapNotes icons shows various icons that are too close to each other together"] = "이 Mapnotes 기호는 너무 가까운 다른 기호를 보여줍니다"
L["Only affects instance passage icons, not path icons such as exit icons or icons on an instance map or the Capitals category / Minimap Capitals"] = "인스턴스 맵의 시작 기호 또는 기호와 같은 경로 기호가 아닌 기호를 통해 인스턴스에만 영향을 미칩니다"
L["Zones"] = "구역"
L["Continents"] = "대륙"
--2 Unexplored Areas function
L["Unexplored Areas"] = "미개척 지역"
L["Unexplored Areas visibility"] = "가시성 미개척 지역"
L["Changes the visibility of unexplored Areas"] = "탐구되지 않은 지역의 가시성을 변경합니다"
L["Fog"] = "안개"
L["Mist of the Unexplored"] = "탐험되지 않은 안개"
L["Leaves the unexplored areas revealed but adds a slight fog so you can still see which ones you haven't explored yet"] = "탐험되지 않은 영역을 드러내지 만 약간의 안개가 추가되어 아직 탐색하지 않은 지역을 여전히 볼 수 있습니다"
L["Reveals unexplored areas and shows the individual areas of each zone that are actually still unexplored"] = "미탐사 지역을 공개하고 실제로 아직 미탐사된 각 구역의 개별 지역을 보여줍니다"
--3 Info tab
L["Info"] = "정보"
L["A description of what this addon does and what functions it offers"] = "이 애드온이하는 일과 그것이 제공하는 기능에 대한 설명"
L["A collection of various icons on various maps from previous expansions up to Dragonflight"] = "모든 확장과 다른 카드에 다른 기호 모음"
L["Displays instance entrances, portals, ships, zeppelins, exits, passage, enemy faction and other transport icons"] = "인스턴스, 포털, 선박, 제프 라인, 출력, 구절, 적의 파벌 및 기타 상징을 표시합니다"
L["All icons can be activated or deactivated separately!"] = "모든 기호는 개별적으로 활성화되거나 비활성화 될 수 있습니다!"
L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] = "시프트 기능 옵션 : 교대 클릭 여부에 관계없이 Mapnotes 기호를 사용할 수 있습니다"
L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"] = "Mapnotes를 숨기십시오! 옵션 : 모든 기호는 한 번의 클릭으로 표시 할 수 있습니다"
L["Normally on a maximized map you cannot use instance icons from Blizzard or other addons that would open the adventure guide. But not for MapNotes! You can use all functions on minimized or maximized maps!"] = "일반적으로 모험 가이드를 열 수있는 최대화 된 카드에서 블리자드 또는 기타 애드온 인스턴스 기호를 사용할 수 없습니다. 그러나 Mapnotes에게는 아닙니다! 최소화되거나 최대화 된 카드에서 모든 기능을 사용할 수 있습니다!"
L["Worldmap function"] = "세계지도 기능"
L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] = "기호를 마우스 오른쪽 버튼으로 클릭하면 Tomtom Wayground가 추가됩니다 (아제로스 및 미니 카드 제외)"
L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] = "인스턴스 기호를 왼쪽 클릭하여 모험 가이드에서 해당 던전을 엽니 다"
L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] = "아제로스/대륙지도 : 전송 기호를 왼쪽 클릭하면 카드가 기호가있는 위치에 열립니다"
L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"] = "영역 카드 : 전송 기호를 왼쪽 클릭하면 기호 대상에서 카드가 열립니다"
L["Example zone map: => Orgrimmar. Left-click on this icon opens the map of Orgrimmar"] = "예제 구역 카드 : '=> orgrimmar'이 기호를 왼쪽 클릭하면 Orgrimmar의지도가 열립니다"
L["Example Azeroth/continent map: 'Jade Forest Portal => Orgrimmar' Left-click on this symbol opens the map of the Jade Forest. So you can see where you need to go to get to the portal"] = "예제 Azeroth/Contenent Map : 'Jadewald Portal => orgrimmar'기호를 왼쪽 클릭하고 Jade Forest에서 카드를 엽니 다. 포털에 가려고 어디로 가야하는지 알 수 있도록"
L["Maximized Map function"] = "최대화 된 카드 기능"
L["After the adventure guide is opened using a MapNote instance icon and you then switch to the dungeon map using the 'Show map' option in the adventure guide, the map is shown reduced in size so that you can move with the character within the instance and see where you have to go. This minimized map feature ends when you close the map or once! Press the “World map on/off” button (which you have set under 'ESC - Keyboard assignment - Interface function'), whereupon the map will be maximized"] = "모험 리더가 인스턴스 기호로 열린 후 '카드 표시'옵션을 통해 Adventure Guide에서 Dungeon 카드로 전환 한 후에는 카드가 줄어들어 인스턴스 내에서 캐릭터와 함께 이동할 수 있도록 카드가 줄어 듭니다. 가야 할 곳. 이 최소화 된 카드 기능은 카드를 닫을 때 또는 한 번! '세계지도 ~에/끄다'버튼 ( 'ESC- 키보드 레이아웃 - 인터페이스 펀칭'아래에 설정 한 상태)를 누르십시오"
L["Minimap button function"] = "미니 -가덴 함수"
L["Left-click opens or close the MapNote setting menu"] = "왼쪽 클릭은 MapNote 설정 메뉴를 열거나 닫습니다"
L["Right-click opens or close the HandyNote setting menu"] = "오른쪽 -클릭 클릭이 열리거나 닫힙니다. Synote 설정 메뉴"
L["Shift+Right-click hide the minimap button"] = "시프트+오른쪽 -클릭, 미니 가든 버튼을 숨 깁니다"
L["Chat commands"] = "채팅 명령"
--4 General tab
L["Description"] = "설명"
L["Position of the real Instance Entrance"] = "실제 인스턴스 입력 위치"
L["Way to the Instance Entrance"] = "인스턴스 입력 방법"
L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] = "또한 영역 카드의 모든 눈보라 인스턴스 기호를 비활성화합니다. 그러나 Lupe '카드 필터'던전 입력의 상단에있는 맵에서 이들을 재 활성화 할 수 있습니다. Mapnotes와의 재 반달 및 활성화. 블리자드, 구역 카드의 인스턴스 기호를 다시 비활성화합니다"
L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] = "숨겨진 특정 블리자드 기호 (예 : horde / Alliance / Neutral 또는 General Travel 기호의 대문자 기호)는 추가 정보 및 기능을 제공하는 거의 동일한 Mapnotes 기호로 대체합니다"
L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"] = "Mapnotes 기호와 눈보라가 겹치는 기호만으로도 블리자드 기호를 제거합니다. 즉, Mapnote 기호의 툴팁과 기능이 오버팅 지점에서 다시 사용할 수 있음을 의미합니다"
L["If the map is open, after enabling or disabling this option, the map must be reopened once for the changes to display correctly"] = "카드가 열려있는 경우 변경 사항이 올바르게 표시되도록이 옵션을 활성화하거나 비활성화 한 후 카드를 다시 열어야합니다"
L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"] = "이 지도의 아이콘을 마우스 왼쪽 버튼으로 클릭하면 모험 가이드 또는 포털, 선박, 비행선 또는 특수 운송 아이콘이 있는 지도에서 해당 인스턴스가 열립니다"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "왼쪽 마우스 버튼이있는 카드 에이 기호 중 하나를 누르면 관련 모험 가이드 또는 대상지도가 열립니다"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "마우스 왼쪽 버튼으로 여러 기호를 클릭하면 던전이 위치한 카드가 열립니다"
L["At the same time, all icons representing additional instance inputs are removed"] = "동시에 추가 인스턴스 입력을 나타내는 모든 아이콘이 제거됩니다"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "모든 카드의 기호를 통해 모든 카드를 던전, 습격 또는 여러 기호로 변경하십시오. 또한, 통과 옵션은 어디서나 비활성화되며 각각의 공습, 던전 또는 여러 옵션에 대한 기호가 추가됩니다 (Dungeon 카드는이 모든 것과 변경되지 않음)"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "다른 지도에 다른 아이콘을 표시합니다. 모든 아이콘은 클릭할 수 있으며(미니맵 제외) 지도 아이콘은 Shift 키 유무에 관계없이 작동하는 기능을 가지고 있습니다. Shift 기능을 변경하기만 하면 됩니다!"
L["Generally"] = "일반적으로"
L["General"] = "일반적인"
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "아제로스/대륙/던전 맵에 동시에 적용되는 일반 설정"
L["General settings / Additional functions"] = "일반 설정 / 추가 기능"
L["Shift function!"] = "시프트 기능!"
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point"] = "활성화되면 MapNotes 아이콘과 상호 작용하려면 왼쪽 또는 오른쪽 버튼을 클릭하기 전에 Shift를 눌러야 합니다. 그러나 다른 애드온을 포함하여 게임에 아이콘이 너무 많기 때문에 실수로 아이콘을 클릭하지 않도록 하는 이점이 있습니다. 기호를 표시하고 지도를 변경하거나 실수로 TomTom 지점을 생성합니다"
L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"] = "이제 Mapnotes 기호와 상호 작용하려면 항상 Shift + Mouse 버튼을 누르야합니다"
L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"] = "이제 Shift + Mouse 버튼을 동시에 누르지 않고도 MapNotes 기호와 상호 작용할 수 있습니다"
L["Settings apply to the zone map and the mini map at the same time"] = "설정은 영역 카드 및 미니 카드에 동시에 적용됩니다"
L["symbol size"] = "심볼 크기"
L["Changes the size of the icons"] = "아이콘 크기를 변경합니다"
L["symbol visibility"] = "심볼 가시성"
L["Changes the visibility of the icons"] = "아이콘의 가시성을 변경합니다"
L["hide minimap button"] = "미니맵 버튼 숨기기"
L["Hide the MapNotes button on the minimap"] = "미니 카드의 Mapnotes 버튼을 숨 깁니다"
L["hide worldmap button"] = "세계지도 버튼을 숨 깁니다"
L["Hide the MapNotes button on the worldmap"] = "세계지도에서 Mapnotes 버튼을 숨 깁니다"
L["hide MapNotes!"] = "MapNotes를 숨기세요!"
L["-> Hide all MapNotes icons <-"] = "-> 모든 MapNotes 아이콘 숨기기 <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "MapNotes를 비활성화하면 모든 아이콘이 각 지도에서 숨겨지고 모든 카테고리가 비활성화됩니다"
L["Adventure guide"] = "모험 가이드"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "지도에서 MapNotes 레이드(녹색), 던전(파란색) 또는 여러 아이콘(녹색 및 파란색)을 마우스 왼쪽 버튼으로 클릭하면 모험 가이드에서 해당 던전 또는 레이드 맵이 열립니다(맵이 전체 화면으로 열리면 안 됩니다)"
L["TomTom waypoints"] = "TomTom 웨이포인트"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "대륙 또는 던전 지도의 MapNotes에서 레이드, 던전, 다중 기호, 포털, 선박, 비행선, 통로 또는 출구를 Shift 키를 누른 채 마우스 오른쪽 버튼으로 클릭하면 이 지점에 대한 TomTom 웨이포인트가 생성됩니다. (단, 이를 위해서는 TomTom 애드온을 설치해야 합니다.) )"
L["extra information"] = "추가 정보"
L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"] = "던전 또는 공습에 대한 추가 정보를 표시합니다. 예를 들어, 보스의 수는 이미 죽었습니다"
L["gray single"] = "개별 회색"
L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"] = "할당 된 던전과 회색의 습격의 개별 지점 만 (ID가있는 경우)"
L["gray all"] = "모든 회색"
L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"] = "모두 색상! 지정된 던전 및 Raids 회색도 여러 포인트 (ID가있는 경우)"
L["enemy faction"] = "적 세력"
L["Shows enemy faction (horde/alliance) icons"] = "적 진영(호드/얼라이언스) 아이콘을 표시합니다"
L["chat message"] = "채팅 메시지" 
L["Disables MapNotes status chat messages excluding core information"] = "핵심 정보를 제외한 Mapnotes 상태 채팅 뉴스 비활성화"
L["Shows special transport icons like"] = "특별한 교통 아이콘을 보여줍니다"
L["Combines several different grouped symbols that lie on one point, thus showing all possible transport/instance symbols that are located here instead of just one of several possible ones"] = "한 지점에 놓인 여러 다른 그룹화 된 기호를 결합하여 가능한 여러 전송/인스턴스 기호를 보여줍니다"
L["Left-clicking on one of these symbols on the map opens the corresponding map, which contains all of the points listed by the symbol on the map"] = "지도에서 이러한 기호 중 하나를 마우스 왼쪽 버튼으로 클릭하면 지도에서 기호로 나열된 모든 지점이 포함된 해당 지도가 열립니다"
L["Informations"] = "정보"
L["Chat commands:"] = "채팅 명령:"
L["to show MapNotes info in chat: /mn, /MN"] = "채팅에 MapNotes 정보 표시: /mn, /MN"
L["to open MapNotes menu: /mno, /MNO"] = "MapNotes 메뉴 열기: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "MapNotes 메뉴를 닫으려면: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "미니맵 버튼 표시: /mnb 또는 /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "미니맵 버튼을 숨기려면: /mnbh 또는 /MNBH"
--5 Tab specific
L["Left-clicking on a symbol on this map type opens the corresponding map in which the symbol is located"] = "이 카드 유형에서 기호를 왼쪽 클릭하면 기호가있는 해당 카드가 열립니다"
L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"] = "일부 인스턴스 아이콘은 Mapnotes가 아닌 블리자드 자체에 의해 만들어 졌기 때문에 숨길 수 없습니다"
L["Azeroth map"] = "아제로스 지도"
L["Continent map"] = "대륙지도"
L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"] = "아이콘 크기 2.0은 영역 맵에서 블리자드 자체 인스턴스 아이콘의 기본 크기입니다"
L["Zone map"] = "영역지도"
L["Dungeon map"] =  "던전 맵" 
--6 Map Tabs together
L["Instance Entrance"] = "인스턴스 입구"
L["switches weekly between"] = "매주 스위치"
L["Activate icons"] = "아이콘 활성화"
L["Show individual icons"] = "개별 아이콘 표시"
L["Exits"] = "퇴장"
L["Raids"] = "습격"
L["Dungeons"] = "던전"
L["Passages"] = "통로"
L["Multiple"] = "다수의"
L["Portals"] = "포털"
L["Zeppelins"] = "제플린"
L["Ships"] = "배들"
L["Transport"] = "수송"
L["Special"] = "특별한"
L["Ogre Waygate"] = "오우거 웨이게이트"
L["Old Instances"] = "오래된 인스턴스"
L["Show icons of passage on this map"] = "이 지도에 통행 아이콘 표시"
L["Show icons of raids on this map"] = "이 지도에 습격 아이콘을 표시합니다"
L["Show icons of dungeons on this map"] = "이 지도에 던전 아이콘을 표시합니다"
L["Show icons of multiple on this map"] = "이 지도에 여러 아이콘 표시"
L["Show icons of portals on this map"] = "이 지도에 포털 아이콘 표시"
L["Show icons of zeppelins on this map"] = "이 지도에 비행선 아이콘 표시"
L["Show icons of ships on this map"] = "이 지도에 선박 아이콘 표시"
L["Show all MapNotes for a specific map"] = "특정 지도에 대한 모든 MapNotes 표시"
L["Show icons of MapNotes dungeon exit on this map"] = "이 지도에 MapNotes 던전 출구 아이콘 표시"
L["Enables the display of all possible icons on this map"] = "이 지도에 가능한 모든 아이콘 표시를 활성화합니다"
L["Show icons of passage to raids and dungeons on this map"] = "이 맵에 레이드와 던전으로의 통과 아이콘을 표시합니다"
L["Show Ogre Waygate icons from Garrison on this map"] = "이 지도에 Garrison의 Ogre Waygate 아이콘을 표시합니다"
L["Activates the display of all possible icons on this map"] = "이 지도에서 가능한 모든 아이콘의 표시를 활성화합니다"
L["Show icons of multiple (dungeons,raids) on this map"] = "이 지도에 여러(던전,레이드) 아이콘을 표시합니다"
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 아웃랜드 MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘을 모두 표시합니다"
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 모든 Draenor MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘을 표시합니다"
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 모든 Shadowlands MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘을 표시합니다"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 모든 칼림도어 MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘을 표시합니다"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 동부 왕국 MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘을 모두 표시합니다"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 노스렌드 MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘을 모두 표시합니다"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 Pandaria MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘을 모두 표시합니다"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 잔달라 MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘을 모두 표시합니다"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 쿨 티라스 MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘을 모두 표시합니다"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 부서진 섬 MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘을 모두 표시합니다"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 Dragon Isles MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘을 모두 표시합니다"
L["Show all Khaz Algar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "이 지도에 모든 Khaz Algar MapNotes 던전, 공격대, 포털, 비행선 및 선박 아이콘 표시"
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "특정 아이콘은 표시되거나 표시되지 않을 수 있습니다. 이 범주에서 옵션(아이콘 활성화)이 활성화된 경우"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "낙스라마스, 스칼로맨스, 붉은십자군 수도원 등 업적이나 기타 사항이 필요한 던전 및 공격대의 바닐라 버전을 보여줍니다"
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "이지도의 다른 기호에 너무 가까운 개별 기호는이 카드에 정확하게 100 % 배치되지 않습니다! 자세한 좌표는 구역 카드의 포인트를 사용하십시오"
--7 Maps
L["Kalimdor"] = "칼림도어"
L["Eastern Kingdom"] = "동부왕국"
L["Outland"] = "아웃랜드"
L["Northrend"] = "노스렌드"
L["Pandaria"] = "판다리아"
L["Draenor"] = "드레노어"
L["Broken Isles"] = "부서진 섬"
L["Zandalar"] = "잔달라"
L["Kul Tiras"] = "쿨 티라스"
L["Shadowlands"] = "섀도우랜드"
L["Dragon Isles"] = "드래곤 아일즈"
--8 Core specific
L["Shift function"] = "시프트 기능"
L["-> MiniMapButton <-"] = "-> 미니맵버튼 <-"
L["-> WorldMapButton <-"] = "-> 월드 카드 버튼 <-"
L["MapNotes menu window"] = "MapNotes 메뉴 창"
L["All set icons have been restored"] = "설정된 아이콘이 모두 복원되었습니다"
L["All MapNotes icons have been hidden"] = "모든 MapNotes 아이콘이 숨겨졌습니다"
L["is activated"] = "활성화되었습니다"
L["is deactivated"] = "비활성화되었습니다"
L["are shown"] = "표시됩니다"
L["are hidden"] = "숨겨져 있어요"
L["Left-click => Open/Close"] = "왼쪽 클릭 => 열기/닫기"
L["Right-click => Open/Close"] = "마우스 오른쪽 버튼 클릭 => 열기/닫기"
L["Shift + Right-click => hide"] = "Shift + 마우스 오른쪽 버튼 클릭 => 숨기기"
L["Middle-Mouse-Button => Open/Close"] = "중간 마우스 버튼 => 열/닫습니다"
--9 transport
L["icons"] = "아이콘"
L["Exit"] = "출구"
L["Entrance"] = "입구"
L["Passage"] = "통로"
L["Portal"] = "문"
L["Ship"] = "배"
L["Zeppelin"] = "제프 펠린"
L["Portalroom"] = "포털룸"
L["The Dark Portal"] = "다크 포탈"
L["Captain Krooz"] = "크로즈 선장"
L["Use the Old Keyring"] = "기존 열쇠고리를 사용하세요"
L["Travel"] = "여행하다"
L["Teleporter"] = "텔레 포터"
L["Old Keyring"] = "낡은 열쇠고리"
L["Old Version"] = "구 버전"
L["Secret Portal"] = "비밀 포털"
L["Secret Entrance"] = "비밀입구"
L["Ogre Waygate to Garrison"] = "주둔지로 가는 오우거 통로"
L["in the basement"] = "지하에"
L["(on the tower)"] = "(탑 위에서)"
L["(inside portal chamber)"] = "(포탈실 내부)"
L["(inside building)"] = "(건물 내부)"
--10 places
L["Auberdine"] = "아우버다인"
L["Ratchet"] = "톱니항"
L["Theramore Isle"] = "테라모어"
L["Dire Maul"] = "혈투의 전장"
L["Blackfathom Deeps"] = "검은심연의 나락"
L["Stormwind"] = "스톰윈드"
L["Shadowfang Keep"] = "그림자송곳니 성채"
L["Undercity"] = "언더시티"
L["Rut'theran"] = "루테란"
L["Azuremyst Isle"] = "하늘안개 섬"
L["Bel'ameth, Amirdrassil"] = "벨라메스, 아미드랏실"
L["Darnassus"] = "다르나서스"
L["Teldrassil"] = "텔드랏실"
L["Graveyard"] = "묘소"
L["Library"] = "도서관"
L["Cathedral"] = "성당"
L["Armory"] = "병기고"
L["Ashran"] = "아쉬란"
L["The Timeways"] = "타임웨이"
L["Vol'mar"] = "볼마르"
L["Zuldazar"] = "줄다자르"
L["Thunder Bluff"] = "썬더 블러프"
L["Silvermoon City"] = "실버문 시티"
L["Boralus, Tiragarde Sound"] = "보랄러스, 티라가드 해협"
L["Valdrakken"] = "발드라켄"
L["Badlands"] = "황무지"
L["Oribos"] = "오리보스"
L["Azsuna"] = "아즈스나"
L["Uldum"] = "울둠"
L["Dazar'alor"] = "다자알로"
L["Shattrath City"] = "샤트라스 도시"
L["Echo Isles, Durotar"] = "메아리 섬, 듀로타"
L["Silithus"] = "실리더스"
L["Nazjatar"] = "나즈자타"
L["Emerald Dream"] = "에메랄드 드림"
L["Thunder Bluff"] = "썬더 블러프"
L["Howling Fjord"] = "울부짖는 협만"
L["Ruins of Lordaeron"] = "로데론의 폐허"
L["Isle of Thunder"] = "천둥의 섬"
L["Twilight Highlands"] = "황혼의 고원"
L["Vashj'ir"] = "바쉬르"
L["The Waking Shores, Dragon Isles"] = "깨어난 해안, 드래곤 아일즈"
L["Shado-Pan Garrison, Townlong Steppes"] = "음영파 주둔지, 탕랑 평원"
L["Grom'gol, Stranglethorn Vale"] = "그롬골, 가시덤불 골짜기"
L["Exodar"] = "출애굽기"
L["Jade Forest"] = "옥 숲"
L["Drustvar"] = "드러스트바"
L["Gorgrond"] = "고그론드"
L["Ohn'ahran Plains"] = "온아란 평원"
L["Borean Tundra"] = "북한의 툰드라"
L["Tirisfal Glades"] = "티리스팔 숲"
L["Wintergrasp"] = "겨울손아귀"
L["Boralus"] = "보랄러스"
L["Stormsong Valley"] = "스톰송 밸리"
L["Tiragarde Sound"] = "티라가드 해협"
L["Ironforge"] = "아이언포지"
L["Blasted Lands"] = "폭발된 땅"
L["Darkshore"] = "어둠해안"
L["Durotar"] = "듀로타"
L["Dustwallow Marsh"] = "먼지진흙 습지대"
L["Vale of Eternal Blossoms"] = "영원꽃 골짜기"
L["Arathi Highlands"] = "아라시 고원"
L["Nazmir"] = "나즈미르"
L["Vol'dun"] = "볼둔"
L["Isle of Quel'Danas"] = "쿠엘다나스 섬"
L["Hellfire Peninsula"] = "지옥불 반도"
L["Korthia"] = "코르티아"
L["The Maw"] = "더 모"
L["Zereth Mortis"] = '제레스 모티스'
L["Barnard 'The Smasher' Bayswort"] = "버나드 '스매셔' 베이스워트"
L["Desha Stormwallow"] = "데샤 스톰왈로우"
L["Daria Smithson"] = '다리아 스미드슨'
L["Swellthrasher"] = "스웰스래셔"
L["Grok Seahandler"] = "그록 시핸들러"
L["Erul Dawnbrook"] = "에룰 던브룩"
L["Dread-Admiral Tattersail"] = "공포제독 태터세일"
L["Grand Admiral Jes-Tereth"] = "제스테레스 대제독"
L["Naxxramas"] = "낙스라마스"
L["Scholomance"] = "스칼로맨스"
L["Temple of Ahn'Qiraj"] = "안퀴라즈"
L["Lorewalker Han"] = "전승지기 한"
L["Archmage Timear"] = "대마법사 티미어"
L["Kiku"] = "키쿠"
L["Eppu"] = "에푸"
L["Ta'elfar"] = "타엘파르"
L["Seer Kazal"] = "현자 카잘"
L["Auridormi"] = "아우리도르미"
L["Registrant"] = "등록"
L["Scarlet Instances"] = "스칼렛 레드 인스턴스"
L["hide Cosmos map symbols"] = "코스모스 기호를 숨 깁니다"
L["Shows the locations of Raidbrowser applicants for old Raids"] = "도축장 브라우저가 오래된 도축장에 기인 한 위치를 보여줍니다"
L["Deactivates the display of all possible icons on this map"] = "이 카드의 가능한 모든 아이콘 표시를 비활성화합니다"
--11 Specific
L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] = "이 인스턴스 입구는 다른 타임 라인에 있습니다. 다른 타임 라인은 Zidormi에서 활성화 될 수 있습니다"
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "다양한 지도에서 공격대, 던전, 포털, 선박 및 비행선 아이콘의 위치를 ​​표시합니다"
L["(Wards of the Dread Citadel - Achievement)"] = "(공포의 성채의 수호물 - 업적)"
L["(Memory of Scholomance - Achievement)"] = "(스칼로맨스의 기억 - 업적)"
L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] = "(귀하의 세력이 현재 바샬아란을 점령하고\n 있는 경우에만 게임 내에서 표시됩니다.)"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "이 아라시 고원 포털은 귀하의 진영이 현재 아르고로크를 점령하고 있는 경우에만 활성화됩니다"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "이 어둠해안 차원문은 귀하의 세력이 현재 바샬아란을 점령하고 있는 경우에만 활성화됩니다"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(제스테레스 대제독)이 당신을 볼둔, 나즈미르 또는 줄다자르로 데려갈 것입니다"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(공포제독 태터세일)이 당신을 드러스트바, 티라가드 해협 또는 스톰송 계곡으로 데려갈 것입니다"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "오래된 열쇠고리 \n [할로윈 축제] 또는 [경매장]의 \n [전리품으로 가득 찬 호박]에서 진홍색 열쇠를 얻을 수 있습니다. \n 이제 여기에서 [오래된 열쇠고리]를 활성화할 수 있습니다. \n 오래된 열쇠고리를 활성화하려면 붉은십자군 수도원의 던전 버전"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "특정 인스턴스 진행 후 먼저 나타나거나\n 특정 업적이 필요합니다" 
--12 Classic
L["Ulduar"] = "울두아르"
L["Trial of the Champion"] = "용사의 시험장"
L["Trial of the Crusader"] = "십자군의 시험장"
L["Azjol-Nerub"] = "아졸네룹"
L["Drak'Tharon Keep"] = "드락타론 성채"
L["Utgarde Pinnacle"] = "우트가드 첨탑"
L["Utgarde Keep"] = "우트가드 성채"
L["Magisters' Terrace"] = "마법학자의 정원"
L["Karazhan"] = "카라잔"
L["The Culling of Stratholme"] = "옛 스트라솔름"
L["Old Hillsbrad Foothills"] = "옛 힐스브래드 구릉지"
L["The Oculus"] = "마력의 눈"
L["The Ruby Sanctum"] = "루비 성소"
L["Black Temple"] = "검은 사원"
L["Auchenai Crypts"] = "아키나이 납골당"
L["Sethekk Halls"] = "세데크 전당"
L["The Arcatraz"] = "알카트라즈"
L["Reforge"] = "재련"
--13 The War Within
L["Khaz Algar"] = "Khaz Algar"
L["Dornogal"] = "Dornogal"
L["Catalyst"] = "Catalyst"
L["Merchant for Renown items"] = "Merchant for Renown items"
L["Council of Dornogal"] = "Council of Dornogal"
L["The Assembly of the Deeps"] = "The Assembly of the Deeps"
L["Hallowfall Arathi"] = "Hallowfall Arathi"