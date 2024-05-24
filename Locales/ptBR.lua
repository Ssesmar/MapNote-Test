﻿local ADDON_NAME = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "ptBR")
if not L then return end

L["Generals"] = "Em geral"
L["Paths"] = "Caminhos"
L["Capitals"] = "Cidades Capitais"
L["Alchemy"] = "Alquimia"
L["Engineer"] = "Engenheiro"
L["Jewelcrafting"] = "Joalheria"
L["Leatherworking"] = "Couraria"
L["Blacksmithing"] = "Ferraria"
L["Tailoring"] = "Alfaiataria"
L["Skinning"] = "Esfolamento"
L["Mining"] = "Mineração"
L["Herbalism"] = "Herborismo"
L["Enchanting"] = "Encantamento"
L["Warspear"] = "Lança de Guerra"
L["Stormshield"] = "Escudo Tonante"
L["Shrine2Moons"] = "SantuárioDuasLuas"
L["Shrine7Stars"] = "Santuário7Estrelas"
L["Enables the display of icons for a specific capital city"] = "Ativa a exibição de símbolos para um capital específico"
L["This MapNotes icons shows various icons that are too close to each other together"] = "Este símbolo Mapnotes mostra diferentes símbolos que estão muito próximos."
L["Only affects instance passage icons, not path icons such as exit icons or icons on an instance map or the Capitals category / Minimap Capitals"] = "Afeta apenas a instância através de símbolos, não símbolos de caminho, como os símbolos ou símbolos iniciais em um mapa de instância ou nas capitais / mini -card Capitals"
L["Zones"] = "Zonas"
L["Continents"] = "Continentes"
--Unexplored Areas function
L["Unexplored Areas"] = "Áreas inexploradas"
L["Unexplored Areas visibility"] = "Visibilidade Áreas inexploradas"
L["Changes the visibility of unexplored Areas"] = "Altera a visibilidade de áreas inexploradas"
L["Fog"] = "Névoa"
L["Mist of the Unexplored"] = "Névoa do inexplorado"
L["Leaves the unexplored areas revealed but adds a slight fog so you can still see which ones you haven't explored yet"] = "Deixa as áreas inexploradas reveladas, mas acrescenta uma leve nevoeiro para que você ainda possa ver quais você ainda não explorou"
L["Reveals unexplored areas and shows the individual areas of each zone that are actually still unexplored"] = "Revela áreas inexploradas e mostra as áreas individuais de cada zona que ainda estão inexploradas"
--0 Info tab
L["Info"] = "información"
L["A description of what this addon does and what functions it offers"] = "Uma descrição do que este addon faz e quais funções ele oferece"
L["A collection of various icons on various maps from previous expansions up to Dragonflight"] = "Uma coleção de símbolos diferentes em cartões diferentes de todas as extensões"
L["Displays instance entrances, portals, ships, zeppelins, exits, passage, enemy faction and other transport icons"] = "Exibe instâncias, portais, navios, zeppine, saídas, passagens, facções inimigas e outros símbolos"
L["All icons can be activated or deactivated separately!"] = "Todos os símbolos podem ser ativados ou desativados separadamente!"
L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] = "Opção de função de mudança: você pode usar os símbolos mapNotes com ou sem um clique de turno"
L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"] = "Ocultar mapanotes! Opção: Todos os símbolos podem ser exibidos com um único clique"
L["Normally on a maximized map you cannot use instance icons from Blizzard or other addons that would open the adventure guide. But not for MapNotes! You can use all functions on minimized or maximized maps!"] = "Normalmente, você não pode usar símbolos de instância da Blizzard ou outros addons em um cartão maximizado que abriria o guia de aventura. Mas não para mapnotes! Você pode usar todas as funções em cartões minimizados ou maximizados!"
L["Worldmap function"] = "Função do mapa mundial"
L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] = "Clique com o botão direito do mouse em um símbolo adiciona um TomTom Wayground (exceto em Azeroth e Mini Card)"
L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] = "Clique à esquerda em um símbolo de instância abre a masmorra correspondente no guia de aventura"
L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] = "Mapa de Azeroth/Continente: Clique à esquerda em um símbolo de transporte, o cartão abre onde o símbolo está"
L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"] = "Cartão de zona: Clique à esquerda em um símbolo de transporte, o cartão é aberto, do alvo do símbolo"
L["Example zone map: => Orgrimmar. Left-click on this icon opens the map of Orgrimmar"] = "Exemplo de zona do cartão: '=> orgrimmar' clique neste símbolo, o mapa de orgrimmar abre"
L["Example Azeroth/continent map: 'Jade Forest Portal => Orgrimmar' Left-click on this symbol opens the map of the Jade Forest. So you can see where you need to go to get to the portal"] = "Exemplo de mapa de Azeroth/Continente: 'Jadewald Portal => orgrimmar' Clique no símbolo, abre o cartão da floresta de Jade. Para que você veja onde você tem que ir para o portal"
L["Maximized Map function"] = "Função do cartão maximizado"
L["After the adventure guide is opened using a MapNote instance icon and you then switch to the dungeon map using the 'Show map' option in the adventure guide, the map is shown reduced in size so that you can move with the character within the instance and see where you have to go. This minimized map feature ends when you close the map or once! Press the “World map on/off” button (which you have set under 'ESC - Keyboard assignment - Interface function'), whereupon the map will be maximized"] = "Depois que o líder da aventura foi aberto por um símbolo de instância e depois mudou para o cartão de masmorra no guia de aventura através da opção 'Show the Card', o cartão é exibido em redução para que você possa se mover com o personagem dentro da instância e ver para onde você tem que ir. Esta função de cartão minimizada termina quando você fecha o cartão ou uma vez! Pressione o botão 'mapa mundial ON/OFF' (que você definiu em 'ESC - Layout do teclado - interfaceFunFunction'), e a placa é maximizada"
L["Minimap button function"] = "Função mini -garden"
L["Left-click opens or close the MapNote setting menu"] = "Esquerda -Click abre ou fecha o menu de configuração do mapanote"
L["Right-click opens or close the HandyNote setting menu"] = "O clique direito abre ou fecha o menu de configuração do telefone celular"
L["Shift+Right-click hide the minimap button"] = "Turno+direita -clique, oculte o mini botão do jardim"
L["Chat commands"] = "Comandos de bate -papo"
--1 General tab
L["Description"] = "Descrição"
L["Position of the real Instance Entrance"] = "Posição da entrada da instância real"
L["Way to the Instance Entrance"] = "Caminho para a entrada da instância"
L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] = "Também desativa todos os símbolos de instância da Blizzard na placa de zona. No entanto, estes podem ser reativados no mapa na parte superior da lúpica 'Filtro de cartão' das entradas de masmorra. Uma reativação e ativação de mapnotes vs. Blizzard, desativa os símbolos da instância no cartão da zona novamente"
L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] = "Oculto certos símbolos da nevasca (por exemplo, símbolos de capitais da horda / aliança / símbolos de viagem neutros ou gerais no mapa) e substitui -os por símbolos de mapNotes quase idênticos que oferecem informações e funções adicionais"
L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"] = "Remove os símbolos da Blizzard somente onde os símbolos e os símbolos de sobreposição da Blizzard, o que significa que a dica de ferramenta e a função dos símbolos Mapnote podem ser usados ​​novamente nos pontos sobrepostos"
L["If the map is open, after enabling or disabling this option, the map must be reopened once for the changes to display correctly"] = "Se o cartão estiver aberto, o cartão deverá ser aberto novamente após ativar ou desativar esta opção para que as alterações sejam exibidas corretamente"
L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"] = "Clicar com o botão esquerdo em um ícone neste mapa abre a instância correspondente no guia de aventura ou no mapa no qual o portal, navio, zepelim ou ícone de transporte especial está localizado"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "Se você pressionar um desses símbolos em um cartão com o botão esquerdo do mouse, o guia de aventura associado ou o mapa do alvo abre"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "Se você clicar em um símbolo múltiplo com o botão esquerdo do mouse, o cartão em que as masmorras estão localizadas serão abertas"
L["At the same time, all icons representing additional instance inputs are removed"] = "Ao mesmo tempo, todos os ícones que representam entradas de instância adicionais são removidos"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "Altere todos os símbolos em todos os cartões para masmorra, ataque ou múltiplos símbolos. Além disso, a opção de passagem é desativada em todos os lugares e os símbolos para os respectivos ataques, masmorras ou várias opções são adicionados (o cartão da masmorra permanece inalterado por tudo isso)"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "Mostra ícones diferentes em mapas diferentes. Todos os ícones são clicáveis ​​(exceto no minimapa) e possuem uma função Os ícones do mapa funcionam com ou sem a tecla Shift. Basta alterar a função Shift!"
L["General"] =  "Em geral" 
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Configurações gerais que se aplicam ao mapa Azeroth/Continent/Dungeon ao mesmo tempo"
L["General settings / Additional functions"] = "Configurações gerais/Funções adicionais"
L["Shift function!"] = "Função de mudança!"
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."] = "Quando ativado, você deve pressionar Shift antes de clicar com o botão esquerdo ou direito para interagir com os ícones do MapNotes. Mas isso tem uma vantagem porque há muitos ícones no jogo, inclusive de outros complementos, para que você não clique acidentalmente em um símbolo e alterar o mapa ou criar um ponto TomTom por engano."
L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"] = "Agora você sempre precisa pressionar o botão Shift + Mouse ao mesmo tempo para interagir com os símbolos MapNotes"
L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"] = "Agora você pode interagir com os símbolos MapNotes sem precisar pressionar o botão Shift + Mouse ao mesmo tempo"
L["Settings apply to the zone map and the mini map at the same time"] = "As configurações se aplicam ao cartão de zona e ao mini cartão ao mesmo tempo"
L["symbol size"] = "tamanho do símbolo"
L["Changes the size of the icons"] = "Altera o tamanho dos ícones"
L["symbol visibility"] = "visibilidade do símbolo"
L["Changes the visibility of the icons"] = "Altera a visibilidade dos ícones"
L["hide minimap button"] = "ocultar botão do minimapa"
L["Hide the MapNotes button on the minimap"] = "Ocultar o botão MapNotes no mini cartão"
L["hide worldmap button"] = "Ocultar o botão do mapa do mundo"
L["Hide the MapNotes button on the worldmap"] = "Ocultar o botão MapNotes no mapa do mundo"
L["hide MapNotes!"] = "ocultar notas do mapa!"
L["-> Hide all MapNotes icons <-"] = "-> Ocultar todos os ícones do MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Desative MapNotes, todos os ícones ficarão ocultos em cada mapa e todas as categorias serão desativadas"
L["Adventure guide"] = "Guia de aventura"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Clicar com o botão esquerdo em um ataque do MapNotes (verde), masmorra (azul) ou ícone múltiplo (verde e azul) no mapa abre a masmorra ou mapa de ataque correspondente no Guia de Aventura (o mapa não deve ser aberto em tela inteira)"
L["TomTom waypoints"] = "Pontos de passagem TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Shift + clique com o botão direito em um ataque, masmorra, símbolo múltiplo, portal, navio, zepelim, passagem ou saída do MapNotes no continente ou mapa da masmorra cria um waypoint TomTom para este ponto (mas o complemento TomTom deve ser instalado para isso )"
L["extra information"] = "informação extra"
L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"] = "Exibe informações adicionais para masmorras ou ataques. Por exemplo, o número de chefes já mortos"
L["gray single"] = "Cinza individual"
L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"] = "Apenas pontos individuais coloridos de masmorras e ataques atribuídos em cinza (se você tiver um ID)"
L["gray all"] = "Todo cinza"
L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"] = "Colorir todos! Dungeons e ataques atribuídos"
L["enemy faction"] = "facção inimiga"
L["Shows enemy faction (horde/alliance) icons"] = "Mostra ícones de facção inimiga (horda/aliança)"
L["chat message"] = "Mensagens de bate -papo"
L["Disables MapNotes status chat messages excluding core information"] = "Mapnotes desativados de mapNotes Notícias de bate -papo, exceto as informações principais"
L["Shows special transport icons like"] = "Mostra ícones de transporte especiais como"
L["Combines several different grouped symbols that lie on one point, thus showing all possible transport/instance symbols that are located here instead of just one of several possible ones"] = "Combina vários símbolos agrupados diferentes que estão em um ponto, mostrando assim todos os símbolos de transporte/instância possíveis que estão localizados aqui, em vez de apenas um dos vários possíveis"
L["Left-clicking on one of these symbols on the map opens the corresponding map, which contains all of the points listed by the symbol on the map"] = "Clicar com o botão esquerdo em um desses símbolos no mapa abre o mapa correspondente, que contém todos os pontos listados pelo símbolo no mapa"
L["Informations"] = "Informações"
L["Chat commands:"] = "Comandos de bate-papo:"
L["to show MapNotes info in chat: /mn, /MN"] = "para mostrar informações do MapNotes no chat: /mn, /MN"
L["to open MapNotes menu: /mno, /MNO"] = "para abrir o menu MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "para fechar o menu MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "para mostrar o botão do minimapa: /mnb ou /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "para ocultar o botão do minimapa: /mnbh ou /MNBH"
--2a MiniMap Tab specific
L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"] = "Alguns ícones de instância não podem ser ocultos porque foram criados pela própria Blizzard e não por mapnotes"
--2 Azeroth tab specific
L["Azeroth map"] = "Mapa de Azeroth"
--3 Continent tab specific
L["Continent map"] = "Mapa do continente"
--4 Zone tab specific
L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"] = "O tamanho do ícone 2.0 seria o tamanho padrão dos ícones de instância da Blizzard no mapa da zona"
L["Zone map"] = "Mapa de zona"
--5 DungeonMap Tab specific
L["Dungeon map"] =  "Mapa da masmorra" 
--6 Map Tabs together
L["Instance Entrance"] = "Entrada da instância"
L["switches weekly between"] = "Mudar semanalmente entre"
L["Activate icons"] = "Ativar ícones"
L["Show individual icons"] = "Mostrar ícones individuais"
L["Exits"] = "Saídas"
L["Raids"] = "Ataques"
L["Dungeons"] = "Masmorras"
L["Passages"] = "Passagens"
L["Multiple"] = "Múltiplo"
L["Portals"] = "Portais"
L["Zeppelins"] = "Zepelins"
L["Ships"] = "Navios"
L["Transport"] = "Transporte"
L["Special"] = "Especial"
L["Ogre Waygate"] = "Ogro Waygate"
L["Old Instances"] = "Instâncias Antigas"
L["Show icons of passage on this map"] = "Mostrar ícones de passagem neste mapa"
L["Show icons of raids on this map"] = "Mostrar ícones de raids neste mapa"
L["Show icons of dungeons on this map"] = "Mostrar ícones de masmorras neste mapa"
L["Show icons of multiple on this map"] = "Mostrar ícones de vários neste mapa"
L["Show icons of portals on this map"] = "Mostrar ícones de portais neste mapa"
L["Show icons of zeppelins on this map"] = "Mostrar ícones de zepelins neste mapa"
L["Show icons of ships on this map"] = "Mostrar ícones de navios neste mapa"
L["Show all MapNotes for a specific map"] = "Mostrar todas as MapNotes de um mapa específico"
L["Show icons of MapNotes dungeon exit on this map"] = "Mostrar ícones de saída da masmorra MapNotes neste mapa"
L["Enables the display of all possible icons on this map"] = "Permite a exibição de todos os ícones possíveis neste mapa"
L["Show icons of passage to raids and dungeons on this map"] = "Mostrar ícones de passagem para ataques e masmorras neste mapa"
L["Show Ogre Waygate icons from Garrison on this map"] = "Mostrar ícones do Ogre Waygate de Garrison neste mapa"
L["Activates the display of all possible icons on this map"] = "Ativa a exibição de todos os ícones possíveis neste mapa"
L["Show icons of multiple (dungeons,raids) on this map"] = "Mostrar ícones de múltiplas (masmorras, raids) neste mapa"
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos os ícones de masmorras, ataques, portais, zepelim e navios do Outland MapNotes neste mapa"
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos os ícones de masmorras, ataques, portais, zepelim e navios do Draenor MapNotes neste mapa"
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos os ícones de masmorras, ataques, portais, zepelim e navios do Shadowlands MapNotes neste mapa"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos os ícones de masmorras, ataques, portais, zepelim e navios do Kalimdor MapNotes neste mapa"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos os ícones de masmorras, ataques, portais, zepelim e navios do Eastern Kingdom MapNotes neste mapa"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos os ícones de masmorras, ataques, portais, zepelim e navios do Northrend MapNotes neste mapa"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos os ícones de masmorras, ataques, portais, zepelim e navios do Pandaria MapNotes neste mapa"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos os ícones de masmorras, ataques, portais, zepelim e navios do Zandalar MapNotes neste mapa"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos os ícones de masmorra, ataque, portal, zepelim e navio do Kul Tiras MapNotes neste mapa"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos os ícones de masmorras, ataques, portais, zepelim e navios do Broken Isles MapNotes neste mapa"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos os ícones de masmorras, ataques, portais, zepelim e navios do Dragon Isles MapNotes neste mapa"
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "Certos ícones podem ser exibidos ou não. Se a opção (Ativar ícones) foi ativada nesta categoria"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Mostre versões básicas de masmorras e ataques como Naxxramas, Scholomance ou Scarlet Monastery, que exigem conquistas ou outras coisas"
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "Os símbolos individuais que estão muito próximos de outros símbolos neste mapa não são colocados 100 % com precisão neste cartão! Para coordenadas mais detalhadas, use os pontos no cartão da zona"
--7 Maps
L["Kalimdor"] = "Kalimdor"
L["Eastern Kingdom"] = "Reino Oriental"
L["Outland"] = "Outland"
L["Northrend"] = "Norte"
L["Pandaria"] = "Pandária"
L["Draenor"] = "Draenor"
L["Broken Isles"] = "Ilhas Partidas"
L["Zandalar"] = "Zandalar"
L["Kul Tiras"] = "Kul Tiraz"
L["Shadowlands"] = "Terras Sombrias"
L["Dragon Isles"] = "Ilhas do Dragão"
--8 Core specific
L["Shift function"] = "Função de mudança"
L["-> MiniMapButton <-"] = "-> Botão minimap <-"
L["-> WorldMapButton <-"] = "-> Botão do World Card <-"
L["MapNotes menu window"] = "Janela do menu MapNotes"
L["All set icons have been restored"] = "Todos os ícones definidos foram restaurados"
L["All MapNotes icons have been hidden"] = "Todos os ícones do MapNotes foram ocultados"
L["is activated"] = "está ativado"
L["is deactivated"] = "está desativado"
L["are shown"] = "são mostrados"
L["are hidden"] = "estão escondidos"
L["Left-click => Open/Close"] = "Clique esquerdo => Abrir/Fechar"
L["Right-click => Open/Close"] = "Clique com o botão direito => Abrir/Fechar"
L["Shift + Right-click => hide"] = "Shift + clique com o botão direito => ocultar"
L["Middle-Mouse-Button => Open/Close"] = "Botão do mouse do meio => Abrir/fechar"
--9 transport
L["icons"] = "ícones"
L["Exit"] = "Saída"
L["Entrance"] = "Entrada"
L["Passage"] = "Passagem"
L["Portal"] = "Portal"
L["Ship"] = "Enviar"
L["Zeppelin"] = "zepelim"
L["Portalroom"] = "Sala do Portal"
L["The Dark Portal"] = "O Portal Negro"
L["Captain Krooz"] = "Capitão Krooz"
L["Use the Old Keyring"] = "Use o chaveiro antigo"
L["Travel"] = "Viagem"
L["Teleporter"] = "Teletransportador"
L["Old Keyring"] = "Chaveiro Antigo"
L["Old Version"] = "Versão antiga"
L["Secret Portal"] = "Portal Secreto"
L["Secret Entrance"] = "Entrada Secreta"
L["Ogre Waygate to Garrison"] = "Ogre Waygate para Guarnição"
L["in the basement"] = "no porão"
L["(on the tower)"] = "(na torre)"
L["(inside portal chamber)"] = "(dentro da câmara do portal)"
L["(inside building)"] = "(dentro do prédio)"
--10 places
L["Auberdine"] = "Auberdine"
L["Ratchet"] = "Vila Catraca"
L["Theramore Isle"] = "Theramore"
L["Dire Maul"] = "Gládio Cruel"
L["Blackfathom Deeps"] = "Profundezas Negras"
L["Stormwind"] = "Ventobravo"
L["Shadowfang Keep"] = "Bastilha da Presa Negra"
L["Undercity"] = "Cidade Baixa"
L["Rut'theran"] = "Vila de Ruttheran"
L["Azuremyst Isle"] = "Ilha Névoa Lazúli"
L["Bel'ameth, Amirdrassil"] = "Bel'ameth, Amirdrassil"
L["Darnassus"] = "Darnasso"
L["Teldrassil"] = "Teldrassil"
L["Graveyard"] = "Cemitério"
L["Library"] = "Biblioteca"
L["Cathedral"] = "Catedral"
L["Armory"] = "Arsenal"
L["Ashran"] = "Ashran"
L["The Timeways"] = "Os Tempos"
L["Vol'mar"] = "Vol'mar"
L["Zuldazar"] = "Zuldazar"
L["Thunder Bluff"] = "Bluff Trovão"
L["Silvermoon City"] = "Cidade Lua Prateada"
L["Boralus, Tiragarde Sound"] = "Boralus, Estreito Tiragarde"
L["Valdrakken"] = "Valdrakken"
L["Badlands"] = "Ermo"
L["Oribos"] = "Oribos"
L["Azsuna"] = "Azsuna"
L["Uldum"] = "Uldum"
L["Dazar'alor"] = "Dazar'alor"
L["Shattrath City"] = "Cidade Shattrath"
L["Echo Isles, Durotar"] = "Ilhas do Eco, Durotar"
L["Silithus"] = "Silithus"
L["Nazjatar"] = "Nazjatar"
L["Emerald Dream"] = "Sonho Esmeralda"
L["Thunder Bluff"] = "Bluff Trovão"
L["Howling Fjord"] = "Fiorde Uivante"
L["Ruins of Lordaeron"] = "Ruínas de Lordaeron"
L["Isle of Thunder"] = "Ilha do Trovão"
L["Twilight Highlands"] = "Terras Altas do Crepúsculo"
L["Vashj'ir"] = "Vashj'ir"
L["The Waking Shores, Dragon Isles"] = "As Margens Despertas, Ilhas do Dragão"
L["Shado-Pan Garrison, Townlong Steppes"] = "Guarnição Shado-Pan, Estepes de Townlong"
L["Grom'gol, Stranglethorn Vale"] = "Grom'gol, Selva do Espinhaço"
L["Exodar"] = "Exoliente"
L["Jade Forest"] = "Bosque de jade"
L["Drustvar"] = "Drustvar"
L["Gorgrond"] = "Gorgrond"
L["Ohn'ahran Plains"] = "Planícies de Ohn'ahran"
L["Borean Tundra"] = "Tundra Boreana"
L["Tirisfal Glades"] = "Clareiras de Tirisfal"
L["Wintergrasp"] = "Wintergrasp"
L["Boralus"] = "Boralus"
L["Stormsong Valley"] = "Vale do Canto Tempestuoso"
L["Tiragarde Sound"] = "Sono Tiragarde"
L["Ironforge"] = "Ferroforja"
L["Blasted Lands"] = "Terras Arrasadas"
L["Darkshore"] = "Costa Negra"
L["Durotar"] = "Durotar"
L["Dustwallow Marsh"] = "Pântano da Areia"
L["Vale of Eternal Blossoms"] = "Vale das Flores Eternas"
L["Arathi Highlands"] = "Terras Altas Arathi"
L["Nazmir"] = "Nazmir"
L["Vol'dun"] = "Vol'dun"
L["Isle of Quel'Danas"] = "Ilha de Quel'Danas"
L["Hellfire Peninsula"] = "Península Fogo do Inferno"
L["Korthia"] = "Kortia"
L["The Maw"] = "A Vó"
L["Zereth Mortis"] = "Zereth Mortis"
L["Barnard 'The Smasher' Bayswort"] = "Barnard 'O Smasher' Bayswort"
L["Desha Stormwallow"] = "Desha Stormwallow"
L["Daria Smithson"] = "Dária Smithson"
L["Swellthrasher"] = "Swellthrasher"
L["Grok Seahandler"] = "Grok Manipulador do Mar"
L["Erul Dawnbrook"] = "Erul Dawnbrook"
L["Dread-Admiral Tattersail"] = "Dread-Almirante Tattersail"
L["Grand Admiral Jes-Tereth"] = "Grande Almirante Jes-Tereth"
L["Naxxramas"] = "Naxxramas"
L["Scholomance"] = "Scolomântia"
L["Temple of Ahn'Qiraj"] = "Ahn'Qiraj"
L["Lorewalker Han"] = "Andarilho das Lendas Han"
L["Archmage Timear"] = "Arquimago Tempor"
L["Kiku"] = "Kiki"
L["Eppu"] = "Eppu"
L["Ta'elfar"] = "Ta'elfar"
L["Seer Kazal"] = "Vidente Kazal"
L["Auridormi"] = "Auridormi"
L["Registrant"] = "Cadastro"
L["Scarlet Instances"] = "Scarlet Red Instâncias"
L["hide Cosmos map symbols"] = "Ocultar símbolos de cosmos"
L["Shows the locations of Raidbrowser applicants for old Raids"] = "Mostra a posição do navegador do matadouro a ser atribuído ao velho matadouro"
L["Deactivates the display of all possible icons on this map"] = "Desativar a exibição de todos os ícones possíveis nesta carta "
--11 Specific
L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] = "Esta entrada da instância está em uma linha do tempo diferente. Outra linha do tempo pode ser ativada em Zidormi"
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "Mostra locais de ataques, masmorras, portais, ícones de navios e zepelins em diferentes mapas"
L["(Wards of the Dread Citadel - Achievement)"] = "(Proteções da Cidadela do Pavor - Conquista)"
L["(Memory of Scholomance - Achievement)"] = "(Memória de Scolomance - Conquista)"
L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] = "(só aparece no jogo se sua facção\n estiver ocupando Bashal'Aran)"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Este portal das Terras Altas Arathi só estará ativo se sua facção estiver ocupando Ar'gorok"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Este portal Darkshore só estará ativo se sua facção estiver ocupando Bashal'Aran"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Grande Almirante Jes-Tereth) irá levá-lo para Vol'Dun, Nazmir ou Zuldazar"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Dread-Admiral Tattersail) irá levá-lo para Drustvar, Tiragarde Sound ou Stormsong Valley"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Chaveiro Antigo \n Você obtém a Chave Escarlate na \n [Abóbora Cheia de Saque] do [Evento de Noturnália] ou na [Casa de Leilões] \n agora você pode ativar o [Chaveiro Antigo] aqui \n para ativar o antigo versões de masmorras do Mosteiro Escarlate"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "Aparece primeiro após o progresso de uma determinada instância\n ou requer uma determinada conquista" 
--12 Classic
L["Ulduar"] = "Ulduar"
L["Trial of the Champion"] = "Prova do Campeão"
L["Trial of the Crusader"] = "Prova do Cruzado"
L["Azjol-Nerub"] = "Azjol-Nerub"
L["Drak'Tharon Keep"] = "Bastilha Drak'Tharon"
L["Utgarde Pinnacle"] = "Pináculo Utgarde"
L["Utgarde Keep"] = "Bastilha Utgarde"
L["Magisters' Terrace"] = "Terraço dos Magísteres"
L["Karazhan"] = "Karazhan"
L["The Culling of Stratholme"] = "Expurgo de Stratholme"
L["Old Hillsbrad Foothills"] = "Antigo Contraforte de Eira dos Montes"
L["The Oculus"] = "Óculus"
L["The Ruby Sanctum"] = "Santuário Rubi"
L["Black Temple"] = "Templo Negro"
L["Auchenai Crypts"] = "Catacumbas Auchenai"
L["Sethekk Halls"] = "Salões dos Sethekk"
L["The Arcatraz"] = "Arcatraz"