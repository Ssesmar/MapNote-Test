local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "koKR")
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
L["Shows locations of raids, dungeons, portals ,ship and zeppelins symbols on different maps"] = "다양한 지도에 레이드, 던전, 포털, 선박 및 제플린 기호의 위치를 ​​표시합니다"
L["MapNotes menu window"] = "MapNotes 메뉴 창"
L["All set symbols have been restored"] = "모든 세트 기호가 복원되었습니다"
L["All MapNotes symbols have been hidden"] = "모든 MapNotes 기호가 숨겨졌습니다"
L["is activated"] = "활성화되었습니다"
L["is deactivated"] = "비활성화되었습니다"
L["are shown"] = "표시됩니다"
L["are hidden"] = "숨겨져 있다"
L["symbols"] = "기호"
L["Left-click => Open/Close"] = "왼쪽 클릭 => 열기/닫기"
L["Right-click => Open/Close"] = "마우스 오른쪽 버튼을 클릭하십시오 => 열고 닫습니다"
L["Shift + Right-click => hide"] = "Shift + 마우스 오른쪽 버튼 클릭 => 숨기기"
L["(also opens MapNotes if hiding was unwanted)"] = "(숨기기를 원치 않는 경우 MapNotes가 열립니다)"


--1
L["General"] = "일반적인"  --General tab
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "아제로스/대륙/던전 맵에 동시에 적용되는 일반 설정"
L["General settings / Additional functions"] = "일반 설정 / 추가 기능"
L["-> MiniMapButton <-"] = "-> 이니맵 버튼 <-"
L["hide minimap button"] = "미니맵 버튼 숨기기"
L["Show the minimap button on the minimap"] = "미니맵에 미니맵 버튼 표시"
L["Hide the minimap button on the minimap"] = "미니맵에서 미니맵 버튼 숨기기"
L["hide MapNotes!"] = "맵노트를 숨겨보세요!"
L["-> Hide all MapNotes symbols <-"] = "-> 모든 MapNotes 기호 숨기기 <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "MapNote를 비활성화하면 모든 아이콘이 각 지도에서 숨겨지고 모든 카테고리가 비활성화됩니다"
L["Resizes symbols on the azeroth, continent, zone, dungeon and minimap"] = "아제로스, 대륙, 지역, 던전, 미니맵의 기호 크기를 조정합니다"
L["symbol visibility"] = "기호 가시성"
L["Changes the visibility of the symbols"] = "기호의 가시성을 변경합니다"
L["Adventure guide"] = "모험 가이드"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "지도에서 맵노트 레이드(녹색), 던전(파란색) 또는 여러 아이콘(녹색&파란색)을 마우스 왼쪽 버튼으로 클릭하면 모험 가이드에서 해당 던전 또는 레이드 맵이 열립니다. (맵이 전체 화면으로 열리면 안 됩니다)"
L["TomTom waypoints"] = "TomTom 웨이포인트"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "대륙 또는 던전 지도의 MapNote에서 레이드, 던전, 다중 기호, 포털, 선박, 비행선, 통로 또는 출구를 Shift+오른쪽 클릭하면 이 지점에 대한 TomTom 웨이포인트가 생성됩니다(단, 이를 위해서는 TomTom 애드온을 설치해야 함)"
L["killed Bosses"] = "首領被殺"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "보스를 처치하여 ID가 ​​할당된 던전 및 공격대의 경우, 아제로스 및 대륙 지도에 있는 이 기호는 이 던전 또는 공격대 기호 위로 마우스를 가져가자마자 죽거나 남은 보스의 수를 표시합니다(예: 2/8 신화, 4/7 영웅 등)"
L["gray symbols"] = "회색 기호"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "던전이나 공격대에 배정되어 있고 ID가 있는 경우, 이 옵션을 사용하면 해당 ID가 재설정될 때까지 던전이나 공격대 아이콘이 회색으로 바뀌므로 어떤 던전이나 공격대를 시작했거나 완료했는지 확인할 수 있습니다"
L["multiple points"] = "여러 점"
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "이 멀티 포인트의 던전이나 레이드에 배정되어 있고 멀티 포인트의 던전이나 레이드를 시작했거나 완료했음을 알 수 있도록 ID를 가지고 있는 경우 멀티 포인트 던전 및/또는 레이드를 회색으로 표시합니다"
L["enemy faction"] = "적 세력"
L["Shows enemy faction (horde/alliance) symbols"] = "적 진영(호드/얼라이언스) 기호도 표시됩니다"
L["Old Instances"] = "이전 인스턴스"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "낙스라마스, 스칼로맨스, 붉은십자군 수도원 등 업적이나 기타 사항이 필요한 던전 및 공격대의 바닐라 버전을 보여줍니다"
L["Informations"] = "정보"
L["Chat commands:"] = "채팅 명령:"
L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"] = "채팅에 MapNotes 정보 표시: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"
L["to open MapNotes menu: /mno, /MNO"] = "MapNotes 메뉴 열기: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "MapNotes 메뉴를 닫으려면: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "미니맵 버튼 표시: /mnb 또는 /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "미니맵 버튼을 숨기려면: /mnbh 또는 /MNBH"


--2
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "정보: 아제로스 지도의 다른 기호와 너무 가까운 개별 아제로스 기호는 아제로스 지도에 100% 정확하게 배치되지 않습니다! 정확한 조율을 위해 대륙지도나 지역지도의 포인트를 활용해주세요."
L["Azeroth map"] = "아제로스 지도"  --Azeroth tab
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "아제로스 지도 설정. 특정 기호는 표시되거나 표시되지 않을 수 있습니다. 이 카테고리에서 옵션(기호 활성화)이 활성화된 경우"
L["Activate symbols"] = "기호 활성화"
L["Activates the display of all possible symbols on the Azeroth map"] = "아제로스 지도에서 가능한 모든 기호 표시를 활성화합니다"
L["symbol size"] = "기호 크기"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "지역 지도, 아제로스 지도, 미니맵의 기호 크기를 조정합니다"
L["Show individual symbols"] = "개별 기호 표시"
L["Raids"] = "습격"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the Azeroth map"] = "아제로스 지도에 습격 기호 표시"
L["Dungeons"] = "던전"  -- Dungeon anzeigen
L["Show symbols of dungeons on the Azeroth map"] = "아제로스 지도에 던전 기호 표시"
L["Multiple"] = "다수의"  -- Gemischte anzeigen
L["Show symbols of multiple on the Azeroth map"] = "아제로스 지도에 다중 기호 표시"
L["Portals"] = "포털"  -- Portale anzeigen
L["Show symbols of portals on the Azeroth map"] = "아제로스 지도에 포털 기호 표시"
L["Zeppelins"] = "제플린"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the Azeroth map"] = "아제로스 지도에 비행선 기호 표시"
L["Ships"] = "배들"  -- Schiffe anzeigen
L["Show symbols of ships on the Azeroth map"] = "아제로스 지도에 선박 기호 표시"
L["Show all MapNotes for a specific map"] = "특정 지도에 대한 모든 MapNotes 표시"
L["Kalimdor"] = "칼림도어"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "아제로스 지도에 모든 Kalimdor MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호 표시"
L["Eastern Kingdom"] = "동부왕국"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "아제로스 지도에 동부 왕국 MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호를 모두 표시합니다."
L["Northrend"] = "노스렌드"  -- Nordend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "아제로스 지도에 모든 Northrend MapNotes 던전, 공격대, 포털, 비행선 및 함선 기호 표시"
L["Pandaria"] = "판다리아"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "아제로스 지도에 모든 Pandaria MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호 표시"
L["Zandalar"] = "잔달라"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "아제로스 지도에 모든 Zandalar MapNotes 던전, 공격대, 포털, 비행선 및 함선 기호 표시"
L["Kul Tiras"] = "쿨 티라스"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "아제로스 지도에 모든 쿨 티라스 MapNotes 던전, 공격대, 포털, 비행선 및 함선 기호 표시"
L["부서진 섬"] = "Verheerten Inseln"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "부서진 섬 MapNotes 던전, 공격대, 포털, 비행선 및 함선 기호를 모두 아제로스 지도에 표시합니다"
L["Dragon Isles"] = "드래곤 아일즈"  -- Dracheninseln anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "아제로스 지도에 모든 Dragon Isles MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호 표시"


--3
L["Continent map"] = "대륙지도"  --Continent tab
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "대륙지도 설정. 특정 기호는 표시되거나 표시되지 않을 수 있습니다. 이 카테고리에서 옵션(기호 활성화)이 활성화된 경우"
L["Activate symbols"] = "기호 활성화"
L["Activates the display of all possible symbols on the continent map"] = "대륙 지도에서 가능한 모든 기호 표시를 활성화합니다"
L["symbol size"] = "기호 크기"
L["Resizes symbols on the continent map"] = "대륙 지도의 기호 크기를 조정합니다"
L["Show individual symbols"] = "개별 기호 표시"
L["Raids"] = "습격"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the continant map and minimap"] = "대륙지도와 미니맵에 레이드 기호 표시"
L["Dungeons"] = "던전"  -- Dungeon anzeigen
L["Show symbols of dungeons on the continant map and minimap"] = "대륙지도와 미니맵에 던전 기호 표시"
L["Multiple"] = "다수의"  -- Gemischte anzeigen
L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"] = "대륙 지도와 미니맵에 다양한(던전,레이드) 기호 표시"
L["Portals"] = "포털"  -- Portale anzeigen
L["Show symbols of portals on the continant map and minimap"] = "대륙 지도와 미니맵에 포탈 기호 표시"
L["Zeppelins"] = "제플린"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the continant map and minimap"] = "대륙 지도와 미니맵에 비행선 기호 표시"
L["Ships"] = "배들"  -- Schiffe anzeigen
L["Show symbols of ships on the continant map and minimap"] = "대륙 지도 및 미니맵에 선박 기호 표시"
L["Ogre Waygate"] = "오우거 웨이게이트"
L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"] = "드레노어 대륙 및 지역 지도에 주둔지의 오우거 웨이게이트 기호 표시"
L["Show all MapNotes for a specific map"] = "특정 지도에 대한 모든 MapNotes 표시"
L["Kalimdor"] = "칼림도어"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "대륙 지도에 모든 칼림도어 MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호 표시"
L["Eastern Kingdom"] = "동부왕국"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "대륙 마판에 동부왕국 맵노트 던전, 레이드, 포탈, 비행선, 선박 기호를 모두 표시합니다"
L["Outland"] = "아웃랜드"  -- Scherbenwelt anzeigen
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "대륙 지도에 모든 Outland MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호 표시"
L["Northrend"] = "노스렌드"  -- Northrend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "대륙 지도에 모든 Northrend MapNotes 던전, 공격대, 포털, 비행선 및 함선 기호 표시"
L["Pandaria"] = "판다리아"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "대륙 지도에 모든 Pandaria MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호 표시n"
L["Draenor"] = "드레노어"  -- Draenor anzeigen
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "대륙 지도에 모든 Draenor MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호 표시"
L["Broken Isles"] = "부서진 섬"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "대륙 지도에 부서진 섬 MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호를 모두 표시합니다"
L["Zandalar"] = "잔달라"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "대륙 지도에 모든 Zandalar MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호 표시"
L["Kul Tiras"] = "쿨 티라스"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "대륙 지도에 모든 쿨 티라스 MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호 표시"
L["Shadowlands"] = "어둠땅"  -- Schattendlande anzeigen
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "대륙 지도에 모든 Shadowlands MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호 표시"
L["Dragon Isles"] = "드래곤 아일즈"  -- Dragonflight anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "대륙 지도에 모든 Dragon Isles MapNotes 던전, 공격대, 포털, 비행선 및 선박 기호 표시"


--4
L["Dungeon map"] = "던전 지도" --DungeonMap Tab
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "던전 맵 설정입니다. 특정 기호는 표시되거나 표시되지 않을 수 있습니다. 이 범주에서 옵션(기호 활성화)이 활성화된 경우. 던전 지도에 MapNotes 출구와 통과 지점을 표시합니다. (이 기호는 방향 지정 목적으로만 사용되며 클릭해도 아무 일도 일어나지 않습니다)"
L["Activate symbols"] = "기호 활성화"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "던전 지도에 가능한 모든 기호 표시를 활성화합니다. (이러한 기호는 방향 지정 목적으로만 사용되며 클릭해도 아무 일도 일어나지 않습니다)"
L["Exits"] = "출구"
L["Show symbols of MapNotes dungeon exit on the dungeon map"] = "던전 지도에 MapNotes 던전 출구 기호 표시"
L["Passages"] = "구절"
L["Show symbols of passage on the dungeon map"] = "던전 맵에 통과 기호 표시"
L["Portals"] = "포털"  -- Portale anzeigen
L["Show symbols of portals on the dungeon map"] = "던전 맵에 포탈 기호 표시"


--5 Entrance/Exit/Passage
L["Exit"] = "출구"
L["Entrance"] = "입구"
L["Passage"] = "통로"


--6 Transport basics
L["Portal"] = "문"
L["Ship"] = "배" 
L["Zeppelin"] = "제플린"
L["Portalroom"] = "포털룸"
L["(inside building)"] = "(건물 내부)"
L["(at basement)"] = "(지하에서)"
L["(inside portal chamber)"] = "(포탈실 내부)"
L["(on the tower)"] = "(탑 위에서)"
-- Transport place -- 운송 장소
L["Ashran"] = "아쉬란"
L["Azsuna"] = "아즈스나"
L["Boralus"] = "보랄러스"
L["Boralus Harbor, Tiragarde Sound"] = "보랄러스 항구, 티라가드 해협"
L["Booty Bay, Stranglethorn Vale"] = "무법항, 가시덤불 골짜기"
L["Caverns of Time"] = "시간의 동굴"
L["Drustvar"] = "드러스트바"
L["Deepholm"] = "심원의 영지"
L["Dalaran"] = "달라란"
L["Dalaran, Crystalsong Forest"] = "달라란, 수정노래 숲"
L["Dazar'alor"] = "다자알로"
L["Exodar"] = "엑소다르"
L["Eastern Plaguelands"] = "동부 Plagueland"
L["Echo Isles, Durotar"] = "메아리 섬, 듀로타"
L["Hellfire Peninsula"] = "지옥불 반도"
L["Howling Fjord"] = "울부짖는 협만"
L["Hyjal"] = "하이잘"
L["Ironforge"] = "아이언포지"
L["Isle of Thunder"] = "천둥의 섬"
L["Isle of Quel'Danas"] = "쿠엘다나스 섬"
L["Lion's Watch"] = "라이온 가드"
L["Mechagon"] = "메카곤"
L["Menethil Harbor, Wetlands"] = "메네실 항구, 습지"
L["Nazjatar"] = "나즈자타"
L["Nazmir"] = "나즈미르"
L["Ogre Waygate to Garrison"] = "주둔지로 가는 오우거 통로"
L["Ohn'ahran Plains"] = "온아란 평원"
L["Orgrimmar"] = "오그리마"
L["Oribos"] = "오리보스"
L["Ruins of Lordaeron, Undercity"] = "로데론 폐허, 언더시티"
L["Ratchet, Northern Barrens"] = "라쳇, 북부 불모의 땅"
L["Stormsong Valley"] = "스톰송 밸리"
L["Stormwind City"] = "스톰윈드 시티"
L["Silithus"] = "실리더스"
L["Stranglethorn"] = "가시나무"
L["Shado-Pan Garrison, TownlongWastes"] = "음영파 주둔지, TownlongWastes"
L["Silvermoon City"] = "실버문 시티"
L["Stormshield, Ashran"] = "폭풍방패, 아쉬란"
L["Shattrath"] = "샤트라스"
L["The Dark Portal"] = "다크 포탈"
L["The Emerald Dream"] = "에메랄드의 꿈"
L["Tol Barad"] = "톨 바라드"
L["Tiragarde Sound"] = "티라가드 해협"
L["Twilight Highlands"] = "황혼의 고원"
L["Thunderbluff"] = "썬더블러프"
L["The Timeways"] = "타임웨이"
L["Jade Forest"] = "비취 숲"
L["Uldum"] = "울둠"
L["Vol'Dun"] = "볼둔"
L["Vol'mar"] = "볼마르"
L["Vashj'ir"] = "바쉬르"
L["Valdrakken"] = "발드라켄"
L["Valiance Keep, Borean Tundra"] = "용맹의 성채, 북풍의 땅"
L["Badlands"] = "황무지"
L["Warspear, Ashran"] = "전쟁의 창, 아쉬란"
L["Waking Shores, Dragon Isles"] = "웨이킹 쇼어스, 드래곤 아일스"
L["Zuldazar"] = "줄다자르"
L["Zandalar"] = "잔달라"
-- other transport -- 기타 운송 수단
L["Back to Zuldazar"] = "줄다자르로 돌아가기"
L["Back to Boralus"] = "보랄러스로 돌아가기"
L["(Captain Krooz) will take you to Mechagon"] = "(크로즈 대장)이 당신을 메카곤으로 데려갈 것입니다."
L["(Captain Krooz) will take you back to Zuldazar"] = "(크로즈 선장은) 당신을 줄다자르로 데려갈 것입니다."
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(제스테레스 대제독)이 당신을 볼둔, 나즈미르 또는 줄다자르로 데려갈 것입니다."
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "(귀하의 세력이 현재 바샬아란을 점령하고 있는 경우에만 게임 내에서 표시됩니다.)"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(공포제독 태터세일)이 당신을 드러스트바, 티라가드 해협 또는 스톰송 계곡으로 데려갈 것입니다."
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "이 arathi -Hochland 포털"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "이 다크 코스트 포털"

--7 old dungeons/raids
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "붉은십자군 수도원 무기고의 구 버전 \n (붉은십자군 수도원 내부 48.33 55.88에서 [오래된 열쇠고리]를 활성화해야 함)"
L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"] = " 낙스라마스의 이전 버전 - 비밀 입구 \n (공포의 성채의 수호물 - 업적)"
L["Old version of Scarlet Monastery Cathedral \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = " 붉은십자군 대성당의 구 버전 \n (붉은십자군 수도원 내부 48.33 55.88에서 [기존 열쇠고리]를 활성화해야 함)"
L["Old version of Scarlet Monastery Graveyard \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"]  " 붉은십자군 묘지의 이전 버전 \n (붉은십자군 수도원 내부 48.33 55.88에서 [오래된 열쇠고리]를 활성화해야 함)"
L["Old version of Scarlet Monastery Library \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = " 붉은십자군 수도원 도서관의 구 버전 \n (붉은십자군 수도원 내부 48.33 55.88에서 [오래된 열쇠고리]를 활성화해야 함)"
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = " 붉은십자군 수도원 무기고의 구 버전 \n (붉은십자군 수도원 내부 48.33 55.88에서 [오래된 열쇠고리]를 활성화해야 함)"
L["Old version of Scholomance - Secret Entrance \n (Memory of Scholomance - Achievement)"] = " 스칼로맨스의 이전 버전 - 비밀 입구 \n (스칼로맨스의 기억 - 업적)"
L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"] = " 오래된 열쇠고리 \n [할로윈 축제] 또는 [경매장]의 \n [전리품으로 가득 찬 호박]에서 스칼렛 열쇠를 얻을 수 있습니다. \n 이제 여기에서 [기존 열쇠고리]를 활성화하여 \n 오래된 던전 버전을 활성화할 수 있습니다 붉은십자군 수도원에서 "