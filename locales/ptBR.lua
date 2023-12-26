local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "ptBR")
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
L["Shows locations of raids, dungeons, portals ,ship and zeppelins symbols on different maps"] = "Mostra locais de ataques, masmorras, portais, símbolos de navios e zepelins em diferentes mapas"
L["MapNotes menu window"] = "Janela do menu MapNotes"
L["All set symbols have been restored"] = "Todos os símbolos definidos foram restaurados"
L["All MapNotes symbols have been hidden"] = "Todos os símbolos do MapNotes foram ocultados"
L["is activated"] = "está ativado"
L["is deactivated"] = "está desativado"
L["are shown"] = "são mostrados"
L["are hidden"] = "estão escondidos"
L["symbols"] = "símbolos"
L["Left-click => Open/Close"] = "Clique esquerdo => Abrir/Fechar"
L["Right-click => Open/Close"] = "Clique com o botão direito do mouse => Abra/Feche"
L["Shift + Right-click => hide"] = "Shift + clique com o botão direito => ocultar"
L["(also opens MapNotes if hiding was unwanted)"] = "(abre MapNotes se a ocultação for indesejada)"


--1
L["General"] = "Em geral"  --General tab
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Configurações gerais que se aplicam ao mapa Azeroth/Continent/Dungeon ao mesmo tempo"
L["General settings / Additional functions"] = "Configurações gerais/Funções adicionais"
L["-> MiniMapButton <-"] = "-> Botão MiniMapa <-"
L["hide minimap button"] = "ocultar botão do minimapa"
L["Show the minimap button on the minimap"] = "Mostrar o botão do minimapa no minimapa"
L["Hide the minimap button on the minimap"] = "Oculte o botão do minimapa no minimapa"
L["hide MapNotes!"] = "ocultar MapaNote!"
L["-> Hide all MapNotes symbols <-"] = "-> Ocultar todos os símbolos do MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Desative o MapNotes, todos os ícones ficarão ocultos em cada mapa e todas as categorias serão desativadas"
L["Resizes symbols on the azeroth, continent, zone, dungeon and minimap"] = "Redimensiona símbolos em Azeroth, continente, zona, masmorra e minimapa"
L["symbol visibility"] = "visibilidade do símbolo"
L["Changes the visibility of the symbols"] = "Altera a visibilidade dos símbolos"
L["Adventure guide"] = "Guia de aventura"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Clicar com o botão esquerdo em um ataque do MapNotes (verde), masmorra (azul) ou ícone múltiplo (verde e azul) no mapa abre a masmorra ou mapa de ataque correspondente no Guia de Aventura (o mapa não deve ser aberto em tela inteira)"
L["TomTom waypoints"] = "Pontos de referência TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Shift + clique com o botão direito em um ataque, masmorra, símbolo múltiplo, portal, navio, zepelim, passagem ou saída do MapNotes no continente ou mapa da masmorra cria um waypoint TomTom para este ponto (mas o complemento TomTom deve ser instalado para isso)"
L["killed Bosses"] = "chefes mortos"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "Para masmorras e ataques em que você matou chefes e, portanto, recebeu um ID, este símbolo no mapa de Azeroth e do continente mostrará o número de chefes mortos ou restantes assim que você passar o mouse sobre este símbolo de masmorra ou ataque (por exemplo 2/8 mítico, 4/7 heróico etc.)"
L["gray symbols"] = "cinza símbolos"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "Se você estiver atribuído a uma masmorra ou raide e tiver um ID, esta opção deixará o ícone da masmorra ou raide cinza até que esse ID seja redefinido para que você possa ver qual masmorra ou raide você iniciou ou concluiu"
L["multiple points"] = "vários pontos"
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "Colore multipontos de masmorras e/ou raids em cinza se você estiver designado para qualquer masmorra ou raid deste multiponto e tiver um ID para que você possa ver que iniciou ou completou qualquer masmorra ou raid deste multiponto"
L["enemy faction"] = "facção inimiga"
L["Shows enemy faction (horde/alliance) symbols"] = "Também mostra símbolos de facção inimiga (horda/aliança)"
L["Old Instances"] = "Instâncias antigas"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Mostre versões básicas de masmorras e ataques como Naxxramas, Scholomance ou Scarlet Monastery, que exigem conquistas ou outras coisas"
L["Informations"] = "Informações"
L["Chat commands:"] = "Comandos de bate-papo:"
L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"] = "para mostrar informações do MapNotes no chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"
L["to open MapNotes menu: /mno, /MNO"] = "para abrir o menu MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "para fechar o menu MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "para mostrar o botão minimapa: /mnb ou /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "para ocultar o botão do minimapa: /mnbh ou /MNBH"


--2
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "Informação: Os símbolos individuais de Azeroth que estão muito próximos de outros símbolos no mapa de Azeroth não são colocados com 100% de precisão no mapa de Azeroth! Para uma coordenação precisa, use os pontos no mapa do continente ou no mapa da zona"
L["Azeroth map"] = "Mapa de Azeroth"  --Azeroth tab
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Configurações do mapa Azeroth. Certos símbolos podem ser exibidos ou não. Se a opção (Ativar símbolos) foi ativada nesta categoria"
L["Activate symbols"] = "Ativar símbolos"
L["Activates the display of all possible symbols on the Azeroth map"] = "Ativa a exibição de todos os símbolos possíveis no mapa de Azeroth"
L["symbol size"] = "tamanho do símbolo"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "Redimensiona símbolos no mapa de zona, mapa de azeroth e minimapa"
L["Show individual symbols"] = "Mostrar símbolos individuais"
L["Raids"] = "Invasões"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the Azeroth map"] = "Mostrar símbolos de ataques no mapa de Azeroth"
L["Dungeons"] = "Masmorras"  -- Dungeon anzeigen
L["Show symbols of dungeons on the Azeroth map"] = "Mostrar símbolos de masmorras no mapa de Azeroth"
L["Multiple"] = "Múltiplo"  -- Gemischte anzeigen
L["Show symbols of multiple on the Azeroth map"] = "Mostrar símbolos de múltiplos no mapa de Azeroth"
L["Portals"] = "Portais"  -- Portale anzeigen
L["Show symbols of portals on the Azeroth map"] = "Mostrar símbolos de portais no mapa de Azeroth"
L["Zeppelins"] = "Zepelins"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the Azeroth map"] = "Mostrar símbolos de zepelins no mapa de Azeroth"
L["Ships"] = "Navios"  -- Schiffe anzeigen
L["Show symbols of ships on the Azeroth map"] = "Mostrar símbolos de navios no mapa de Azeroth"
L["Show all MapNotes for a specific map"] = "Mostrar todas as MapNotes de um mapa específico"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Kalimdor MapNotes no mapa de Azeroth"
L["Eastern Kingdom"] = "Reino Oriental"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Eastern Kingdom MapNotes no mapa de Azeroth"
L["Northrend"] = "Nortúndria"  -- Nordend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Northrend MapNotes no mapa de Azeroth"
L["Pandaria"] = "Pandária"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Pandaria MapNotes no mapa de Azeroth"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Zandalar MapNotes no mapa de Azeroth"
L["Kul Tiras"] = "Kul Tiraz"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Kul Tiras MapNotes no mapa de Azeroth"
L["Broken Isles"] = "Ilhas Partidas"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Broken Isles MapNotes no mapa de Azeroth"
L["Dragon Isles"] = "Ilhas do Dragão"  -- Dracheninseln anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Dragon Isles MapNotes no mapa de Azeroth"


--3
L["Continent map"] = "Mapa do continente"  --Continent tab
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Configurações do mapa do continente. Certos símbolos podem ser exibidos ou não. Se a opção (Ativar símbolos) foi ativada nesta categoria"
L["Activate symbols"] = "Ativar símbolos"
L["Activates the display of all possible symbols on the continent map"] = "Ativa a exibição de todos os símbolos possíveis no mapa do continente"
L["symbol size"] = "tamanho do símbolo"
L["Resizes symbols on the continent map"] = "Redimensiona símbolos no mapa do continente"
L["Show individual symbols"] = "Mostrar símbolos individuais"
L["Raids"] = "Invasões"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the continant map and minimap"] = "Mostrar símbolos de ataques no mapa continental e no minimapa"
L["Dungeons"] = "Masmorras"  -- Dungeon anzeigen
L["Show symbols of dungeons on the continant map and minimap"] = "Mostrar símbolos de masmorras no mapa continental e no minimapa"
L["Multiple"] = "Múltiplo"  -- Gemischte anzeigen
L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"] = "Mostrar símbolos de múltiplos (masmorras, ataques) no mapa continental e no minimapa"
L["Portals"] = "Portais"  -- Portale anzeigen
L["Show symbols of portals on the continant map and minimap"] = "Mostrar símbolos de portais no mapa continental e no minimapa"
L["Zeppelins"] = "Zepelins"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the continant map and minimap"] = "Mostrar símbolos de zepelins no mapa do continente e no minimapa"
L["Ships"] = "Navios"  -- Schiffe anzeigen
L["Show symbols of ships on the continant map and minimap"] = "Mostrar símbolos de navios no mapa do continente e no minimapa"
L["Ogre Waygate"] = "Portão Ogro"
L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"] = "Mostrar símbolos do Ogre Waygate de Garrison no continente de Draenor e no mapa da zona"
L["Show all MapNotes for a specific map"] = "Mostrar todas as MapNotes de um mapa específico"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Kalimdor MapNotes no mapa do continente"
L["Eastern Kingdom"] = "Reino Oriental"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Eastern Kingdom MapNotes no continente mapan"
L["Outland"] = "Terralém"  -- Scherbenwelt anzeigen
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Outland MapNotes no mapa do continente"
L["Northrend"] = "Nortúndria"  -- Northrend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Northrend MapNotes no mapa do continente"
L["Pandaria"] = "Pandária"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Pandaria MapNotes no mapa do continente"
L["Draenor"] = "Draenor"  -- Draenor anzeigen
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Draenor MapNotes no mapa do continente"
L["Broken Isles"] = "Ilhas Partidas"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Broken Isles MapNotes no mapa do continente"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Zandalar MapNotes no mapa do continente"
L["Kul Tiras"] = "Kul Tiraz"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Kul Tiras MapNotes no mapa do continente"
L["Shadowlands"] = "Terras Sombrias"  -- Schattendlande anzeigen
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Shadowlands MapNotes no mapa do continente"
L["Dragon Isles"] = "Ilhas do Dragão"  -- Dragonflight anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos os símbolos de masmorra, ataque, portal, zepelim e navio do Dragon Isles MapNotes no mapa do continente"


--4
L["Dungeon map"] = "Mapa da masmorra" --DungeonMap Tab
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Configurações do mapa da masmorra. Certos símbolos podem ser exibidos ou não. Se a opção (Ativar símbolos) foi ativada nesta categoria. Mostra os pontos de saída e passagem do MapNotes no mapa da masmorra (esses símbolos são apenas para fins de orientação e nada acontece quando você clica neles)"
L["Activate symbols"] = "Ativar símbolos"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Ativa a exibição de todos os símbolos possíveis no mapa da masmorra (esses símbolos são apenas para fins de orientação e nada acontece quando você clica neles)"
L["Exits"] = "Saídas"
L["Show symbols of MapNotes dungeon exit on the dungeon map"] = "Mostrar símbolos da saída da masmorra MapNotes no mapa da masmorra"
L["Passages"] = "Passagens"
L["Show symbols of passage on the dungeon map"] = "Mostrar símbolos de passagem no mapa da masmorra"
L["Portals"] = "Portais"  -- Portale anzeigen
L["Show symbols of portals on the dungeon map"] = "Mostrar símbolos de portais no mapa da masmorra"


--5 Entrance/Exit/Passage
L["Exit"] = "Saída"
L["Entrance"] = "Entrada"
L["Passage"] = "Passagem"


--6 Transport basics
L["Portal"] ="Portal"
L["Ship"] =  "Enviar" 
L["Zeppelin"] = "Zepelim"
L["Portalroom"] = "Sala do Portal"
L["(inside building)"] = "(dentro do prédio)"
L["(at basement)"] = "(no porão)"
L["(inside portal chamber)"] = "(dentro da câmara do portal)"
L["(on the tower)"] = "(na torre)"
-- Transport place - Locais de transporte
L["Ashran"] = "Ashran"
L["Azsuna"] = "Azsuna"
L["Boralus"] = "Boralus"
L["Boralus Harbor, Tiragarde Sound"] = "Porto Boralus, Estreito Tiragarde"
L["Booty Bay, Stranglethorn Vale"] = "Baía Booty, Vale do Espinhaço"
L["Caverns of Time"] = "Cavernas do Tempo"
L["Drustvar"] = "Drustvar"
L["Deepholm"] = "Profundidade"
L["Dalaran"] = "Dalaran"
L["Dalaran, Crystalsong Forest"] = "Dalaran, Floresta do Canto Cristalino"
L["Dazar'alor"] = "Dazar'alor"
L["Exodar"] = "Exodar"
L["Echo Isles, Durotar"] = "Ilhas do Eco, Durotar"
L["Hellfire Peninsula"] = "Península Fogo do Inferno"
L["Howling Fjord"] = "Fiorde Uivante"
L["Hyjal"] = "Hyjal"
L["Ironforge"] = "Ferroforja"
L["Isle of Thunder"] = "Ilha do Trovão"
L["Isle of Quel'Danas"] = "Ilha de Quel'Danas"
L["Mechagon"] = "Mechagon"
L["Menethil Harbor, Wetlands"] = "Menethil Porto, zonas húmidas"
L["Nazjatar"] = "Nazjatar"
L["Nazmir"] = "Nazmir"
L["Ogre Waygate to Garrison"] = "Ogre Waygate para Guarnição"
L["Ohn'ahran Plains"] = "Planícies de Ohn'ahran"
L["Orgrimmar"] = "Orgrimmar"
L["Oribos"] = "Oribos"
L["Ruins of Lordaeron, Undercity"] = "Ruínas de Lordaeron, Cidade Baixa"
L["Ratchet, Northern Barrens"] = "Catraca, Sertões do Norte"
L["Stormsong Valley"] = "Vale do Canto Tempestuoso"
L["Stormwind City"] = "Cidade de Ventobravo"
L["Silithus"] = "Silithus"
L["Stranglethorn"] = "Espinhaço"
L["Shado-Pan Garrison, TownlongWastes"] = "Guarnição Shado-Pan, TownlongWastes"
L["Silvermoon City"] = "Cidade Lua Prateada"
L["Stormshield, Ashran"] = "Escudo Antitempestade, Ashran"
L["Shattrath"] = "Shatrath"
L["The Dark Portal"] = "O Portal Negro"
L["The Emerald Dream"] = "O Sonho Esmeralda"
L["Tol Barad"] = "Tol Barad"
L["Tiragarde Sound"] = "Sono Tiragarde"
L["Twilight Highlands"] = "Terras Altas do Crepúsculo"
L["Thunderbluff"] = "Bluff Trovão"
L["The Timeways"] = "Os Tempos"
L["Jade Forest"] = "Floresta de Jade"
L["Uldum"] = "Uldum"
L["Vol'Dun"] = "Vol'Dun"
L["Vol'mar"] = "Vol'mar"
L["Vashj'ir"] = "Vashj'ir"
L["Valdrakken"] = "Valdrakken"
L["Valiance Keep, Borean Tundra"] = "Fortaleza da Valiança, Tundra Boreana"
L["Badlands"] = "Ermo"
L["Warspear, Ashran"] = "Lança de Guerra, Ashran"
L["Waking Shores, Dragon Isles"] = "Costas do Despertar, Ilhas do Dragão"
L["Zuldazar"] = "Zuldazar"
L["Zandalar"] = "Zandalar"
-- other transport - outros transportes
L["Back to Zuldazar"] = "De volta a Zuldazar"
L["Back to Boralus"] = "De volta a Boralus"
L["Portal to Zandalar(horde)/Boralus(alliance)"] = "Portal para Zandalar(horda)/Boralus(aliança)"
L["(Captain Krooz) will take you to Mechagon"] = "(Capitão Krooz) irá levá-lo para Mechagon"
L["(Captain Krooz) will take you back to Zuldazar"] = "(Capitão Krooz) irá levá-lo de volta para Zuldazar"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Grande Almirante Jes-Tereth) irá levá-lo para Vol'Dun, Nazmir ou Zuldazar"
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "(só aparece no jogo se sua facção estiver ocupando Bashal'Aran)"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Dread-Admiral Tattersail) irá levá-lo para Drustvar, Tiragarde Sound ou Stormsong Valley"
L["These portals are only active in the game if your faction is currently occupying (Ar'gorok for the Arathi Highlands portal) or (Bashal'Aran for the Darkshore portal)"] = "Esses portais só estarão ativos no jogo se sua facção estiver ocupando atualmente (Ar'gorok para o portal Arathi Highlands) ou (Bashal'Aran para o portal Darkshore)" 


--7 old dungeons/raids
L["Old version of Scarlet Monastery Armory (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Versão antiga do Scarlet Monastery Armory (é necessário ativar o chaveiro antigo em 48.33 55.88 dentro do Scarlet Monastery)"
L["Old version of Naxxramas - Secret Entrance (Wards of the Dread Citadel - Achievement)"] = "Versão antiga de Naxxramas - Entrada Secreta (Wards of the Dread Citadel - Conquista)"
L["Old version of Scarlet Monastery Cathedral (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Versão antiga da Catedral do Mosteiro Escarlate (é necessário ativar o chaveiro antigo em 48.33 55.88 dentro do Mosteiro Escarlate)"
L["Old version of Scarlet Monastery Graveyard (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Versão antiga do Cemitério do Monastério Escarlate (é necessário ativar o chaveiro antigo em 48.33 55.88 dentro do Monastério Escarlate)"
L["Old version of Scarlet Monastery Library (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Versão antiga da Biblioteca do Monastério Escarlate (é necessário ativar o chaveiro antigo em 48.33 55.88 dentro do Monastério Escarlate)"
L["Old version of Scarlet Monastery Armory (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Versão antiga do Scarlet Monastery Armory (é necessário ativar o chaveiro antigo em 48.33 55.88 dentro do Scarlet Monastery)"
L["Old version of Scholomance - Secret Entrance (Memory of Scholomance - Achievement)"] = "Versão antiga de Scholomance - Secret Entrance (Memory of Scholomance - Achievement)"
L["Old keychain - use the old keychain to activate the old versions of Scarlet Monastery dungeons (you need to get first (The Scarlet Key) from Hallow's End world event or buy from auction house)"] = "Chaveiro antigo - use o chaveiro antigo para ativar as versões antigas das masmorras do Monastério Escarlate (você precisa obter primeiro (A Chave Escarlate) do evento mundial Hallow's End ou comprar na casa de leilões)"