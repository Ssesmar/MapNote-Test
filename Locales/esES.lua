﻿local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "esES")
if not L then return end

--0 Info tab
L["Info"] = "información"
L["A description of what this addon does and what functions it offers"] = "Una descripción de lo que hace este complemento y qué funciones ofrece"
L["A collection of various icons on various maps from previous expansions up to Dragonflight"] = "Una colección de diferentes símbolos en diferentes cartas de todas las extensiones"
L["Displays instance entrances, portals, ships, zeppelins, exits, passage, enemy faction and other transport icons"] = "Muestra instancias, portales, barcos, zepheline, salidas, pasajes, facciones enemigas y otros símbolos"
L["All icons can be activated or deactivated separately!"] = "¡Todos los símbolos se pueden activar o desactivar por separado!"
L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] = "Opción de función de cambio: puede usar los símbolos de mapnotes con o sin un cambio, haga clic"
L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"] = "Ocultar Mapnotes! Opción: todos los símbolos se pueden mostrar con un solo clic"
L["Normally on a maximized map you cannot use instance icons from Blizzard or other addons that would open the adventure guide. But not for MapNotes! You can use all functions on minimized or maximized maps!"] = "Por lo general, no puede usar Blizzard u otros símbolos de instancia de complementos en una tarjeta maximizada que abriría la guía de aventuras. ¡Pero no para Mapnotes! ¡Puede usar todas las funciones en tarjetas minimizadas o maximizadas! "
L["Worldmap function"] = "Función del mapa mundial"
L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] = "Haga clic derecho en un símbolo agrega un Tomtom Wayground (excepto en Azeroth y Mini Card)"
L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] = "Haga clic izquierdo en un símbolo de instancia abre la mazmorra correspondiente en la guía de aventuras"
L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] = "Azeroth/Continente Mapa: Haga clic a la izquierda En un símbolo de transporte, la tarjeta se abre donde está el símbolo"
L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"] = "Tarjeta de zona: Haga clic a la izquierda en un símbolo de transporte, se abre la tarjeta, desde el objetivo del símbolo"
L["Example zone map: => Orgrimmar. Left-click on this icon opens the map of Orgrimmar"] = "Tarjeta de zona de ejemplo: '=> orgrimmar' Haga clic a la izquierda En este símbolo, se abre el mapa de Orgrimmar"
L["Example Azeroth/continent map: 'Jade Forest Portal => Orgrimmar' Left-click on this symbol opens the map of the Jade Forest. So you can see where you need to go to get to the portal"] = "Ejemplo de Azeroth/Continent Map: 'Jadewald Portal => Orgrimmar' Haga clic izquierdo en el símbolo, abre la tarjeta del bosque de jade. Para que veas a dónde tienes que ir para llegar al portal"
L["Maximized Map function"] = "Función de tarjeta maximizada"
L["After the adventure guide is opened using a MapNote instance icon and you then switch to the dungeon map using the 'Show map' option in the adventure guide, the map is shown reduced in size so that you can move with the character within the instance and see where you have to go. This minimized map feature ends when you close the map or once! Press the “World map on/off” button (which you have set under 'ESC - Keyboard assignment - Interface function'), whereupon the map will be maximized"] = "Después de que el líder de la aventura se abrió por un símbolo de instancia y luego cambió a la tarjeta de mazmorra en la guía de aventuras a través de la opción 'show the tarjeta', la tarjeta se muestra en reducción para que pueda moverse con el personaje dentro de la instancia y ver a donde tienes que ir. ¡Esta función de tarjeta minimizada termina cuando cierra la tarjeta o una vez! Presione el botón 'Mapa mundial de encendido/apagado' (en el que ha establecido 'ESC - Diseño del teclado - InterfaceFunFunction'), con lo cual la tarjeta se maximiza"
L["Minimap button function"] = "Función mini -prostensa"
L["Left-click opens or close the MapNote setting menu"] = "El clic izquierdo abre o cierra el menú de configuración de Mapnote"
L["Right-click opens or close the HandyNote setting menu"] = "El hecho de que se haga clic en la derecha o cierra el menú de configuración de síntesis de teléfonos celulares"
L["Shift+Right-click hide the minimap button"] = "Shift+Right -Haga clic en, esconde el botón Mini Garden"
L["Chat commands"] = "Comandos de chat"
--1 General tab
L["Description"] = "Descripción"
L["Position of the real Instance Entrance"] = "Posición de la entrada de instancia real"
L["Way to the Instance Entrance"] = "Camino a la entrada de instancia"
L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] = "También desactiva todos los símbolos de instancia de Blizzard en la tarjeta de zona. Sin embargo, estos se pueden reactivar en el mapa en la parte superior de las entradas de mazmorras de Lupe 'Filter' de la tarjeta. Una reactivación y activación de Mapnotes vs. Blizzard, desactiva los símbolos de instancia en la tarjeta de zona nuevamente"
L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] = "Oculto ciertos símbolos de tormenta de tormenta (por ejemplo, símbolos de las capitales de la Horde / alianza / símbolos de viaje neutros o generales en el mapa) y los reemplaza con símbolos de Mapnotes casi idénticos que ofrece información y funciones adicionales"
L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"] = "Elimina los símbolos de la tormenta de nieve solo donde los símbolos de mapnotes y los símbolos de superposición de tormenta de nieve, lo que significa que la información sobre herramientas y la función de los símbolos de mapnote se pueden usar nuevamente en los puntos superpuestos"
L["If the map is open, after enabling or disabling this option, the map must be reopened once for the changes to display correctly"] = "Si la tarjeta está abierta, la tarjeta debe abrirse nuevamente después de activar o desactivar esta opción para que los cambios se muestren correctamente"
L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"] = "Al hacer clic con el botón izquierdo en un icono de este mapa, se abre la instancia correspondiente en la guía de aventuras o el mapa en el que se encuentra el icono del portal, barco, zepelín o transporte especial"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "Si presiona uno de estos símbolos en una tarjeta con el botón izquierdo del mouse, se abre la guía de aventura asociada o el mapa del objetivo"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "Si hace clic en un símbolo múltiple con el botón izquierdo del mouse, se abrirá la tarjeta en la que se encuentran las mazmorras"
L["At the same time, all icons representing additional instance inputs are removed"] = "Al mismo tiempo, se eliminan todos los iconos que representan entradas de instancia adicionales"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "Cambie todos los símbolos en todas las cartas a Dungeon, RAID o múltiples símbolos. Además, la opción de paso se desactiva en todas partes y los símbolos a las ataques, mazmorras o múltiples opciones respectivas (la tarjeta de mazmorra permanece sin cambios de todo esto)"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "Muestre diferentes íconos en diferentes mapas. Se puede hacer clic en todos los íconos (excepto en el minimapa) y tienen una función. Los íconos del mapa funcionan con o sin la tecla Mayús. ¡Simplemente cambie la función Mayús!"
L["General"] = "General" 
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Configuraciones generales que se aplican al mapa de Azeroth/Continente/Mazmorra al mismo tiempo"
L["General settings / Additional functions"] = "Configuraciones generales / Funciones adicionales"
L["Shift function!"] = "¡Función de cambio!"
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."] = "Cuando está habilitado, debes presionar Shift antes de hacer clic izquierdo o derecho para interactuar con los íconos de MapNotes. Pero esto tiene una ventaja porque hay tantos íconos en el juego, incluidos los de otros complementos, por lo que no haces clic accidentalmente en uno. símbolo y cambiar el mapa, o crear por error un punto TomTom."
L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"] = "Siempre tienes que presionar el botón Shift + Mouse al mismo tiempo para interactuar con los símbolos de Mapnotes"
L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"] = "Ahora puede interactuar con símbolos de Mapnotes sin tener que presionar el botón Shift + Mouse al mismo tiempo"
L["Settings apply to the zone map and the mini map at the same time"] = "La configuración se aplica a la tarjeta de zona y a la mini tarjeta al mismo tiempo"
L["symbol size"] = "tamaño de símbolo"
L["Changes the size of the icons"] = "Cambia el tamaño de los iconos"
L["symbol visibility"] = "visibilidad del símbolo"
L["Changes the visibility of the icons"] = "Cambia la visibilidad de los iconos"
L["hide minimap button"] = "botón ocultar minimapa"
L["Hide the MapNotes button on the minimap"] = "Ocultar el botón Mapnotes en la mini tarjeta"
L["hide worldmap button"] = "Ocultar el botón del mapa mundial"
L["Hide the MapNotes button on the worldmap"] = "Ocultar el botón Mapnotes en el mapa mundial"
L["hide MapNotes!"] = "ocultar notas de mapa!"
L["-> Hide all MapNotes icons <-"] = "-> Ocultar todos los iconos de MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Desactive MapNotes, todos los iconos se ocultarán en cada mapa y todas las categorías se desactivarán"
L["Adventure guide"] = "Guía de aventuras"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Al hacer clic con el botón izquierdo en una incursión de MapNotes (verde), una mazmorra (azul) o un icono múltiple (verde y azul) en el mapa, se abre la mazmorra o el mapa de incursión correspondiente en la Guía de aventuras (el mapa no debe estar abierto en pantalla completa)"
L["TomTom waypoints"] = "Puntos de referencia de TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Mayús+clic derecho en una incursión, mazmorra, símbolo múltiple, portal, barco, zepelín, pasaje o salida de MapNotes en el continente o mapa de mazmorra crea un waypoint de TomTom hasta este punto (pero el complemento TomTom debe estar instalado para esto). )"
L["extra information"] = "información extra"
L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"] = "Muestra información adicional para mazmorras o redadas. Por ejemplo, el número de jefes ya matados"
L["gray single"] = "Gris individual"
L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"] = "Solo puntos individuales coloreados de mazmorras asignadas y redadas en gris (si tienes una identificación)"
L["gray all"] = "Todo gris"
L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"] = "¡Colorea a todos! Dungeons y Raids Gray asignados también múltiples puntos (si tiene una ID)"
L["enemy faction"] = "facción enemiga"
L["Shows enemy faction (horde/alliance) icons"] = "Muestra iconos de facciones enemigas (horda/alianza)"
L["chat message"] = "Mensajes de chat" 
L["Disables MapNotes status chat messages excluding core information"] = "Noticias de chat de estado de Mapnotes desactivadas excepto información central"
L["Shows special transport icons like"] = "Muestra íconos especiales de transporte como"
L["Combines several different grouped symbols that lie on one point, thus showing all possible transport/instance symbols that are located here instead of just one of several possible ones"] = "Combina varios símbolos agrupados diferentes que se encuentran en un punto, mostrando así todos los símbolos de transporte/instancia posibles que se encuentran aquí en lugar de solo uno de varios posibles."
L["Left-clicking on one of these symbols on the map opens the corresponding map, which contains all of the points listed by the symbol on the map"] = "Al hacer clic con el botón izquierdo en uno de estos símbolos en el mapa, se abre el mapa correspondiente, que contiene todos los puntos enumerados por el símbolo en el mapa"
L["Informations"] = "Informaciones"
L["Chat commands:"] = "Comandos de chat:"
L["to show MapNotes info in chat: /mn, /MN"] = "para mostrar información de MapNotes en el chat: /mn, /MN"
L["to open MapNotes menu: /mno, /MNO"] = "para abrir el menú MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "para cerrar el menú MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "para mostrar el botón del minimapa: /mnb o /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "para ocultar el botón del minimapa: /mnbh o /MNBH"
--2a MiniMap Tab specific
L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"] = "Algunos iconos de instancia no pueden estar ocultos porque fueron creados por Blizzard y no por Mapnotes"
--2 Azeroth tab specific
L["Azeroth map"] = "Mapa de Azeroth"
--3 Continent tab specific
L["Continent map"] = "Mapa del continente"
--4 Zone tab specific
L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"] = "El tamaño del icono 2.0 sería el tamaño predeterminado de los iconos de instancia de Blizzard en el mapa de la zona"
L["Zone map"] = "Mapa de zona"
--5 DungeonMap Tab specific
L["Dungeon map"] = "Mapa de mazmorra" 
--6 Map Tabs together
L["Instance Entrance"] = "Entrada de instancia"
L["switches weekly between"] = "cambia semanalmente entre"
L["Activate icons"] = "Activar iconos"
L["Show individual icons"] = "Mostrar iconos individuales"
L["Exits"] = "Salidas"
L["Raids"] = "Redadas"
L["Dungeons"] = "Mazmorras"
L["Passages"] = "Pasajes"
L["Multiple"] = "Múltiple"
L["Portals"] = "portales"
L["Zeppelins"] = "Zepelines"
L["Ships"] = "Buques"
L["Transport"] = "Transporte"
L["Special"] = "Especial"
L["Ogre Waygate"] = "Puerta del Ogro"
L["Old Instances"] = "Antiguas instancias"
L["Show icons of passage on this map"] = "Mostrar iconos de paso en este mapa"
L["Show icons of raids on this map"] = "Mostrar íconos de incursiones en este mapa"
L["Show icons of dungeons on this map"] = "Mostrar iconos de mazmorras en este mapa"
L["Show icons of multiple on this map"] = "Mostrar iconos de varios en este mapa"
L["Show icons of portals on this map"] = "Mostrar iconos de portales en este mapa"
L["Show icons of zeppelins on this map"] = "Mostrar iconos de zepelines en este mapa"
L["Show icons of ships on this map"] = "Mostrar iconos de barcos en este mapa"
L["Show all MapNotes for a specific map"] = "Mostrar todas las MapNotes para un mapa específico"
L["Show icons of MapNotes dungeon exit on this map"] = "Mostrar iconos de salida de mazmorra de MapNotes en este mapa"
L["Enables the display of all possible icons on this map"] = "Permite la visualización de todos los iconos posibles en este mapa"
L["Show icons of passage to raids and dungeons on this map"] = "Muestra iconos de paso a incursiones y mazmorras en este mapa"
L["Show Ogre Waygate icons from Garrison on this map"] = "Muestra los íconos de Ogre Waygate de Garrison en este mapa"
L["Activates the display of all possible icons on this map"] = "Activa la visualización de todos los iconos posibles en este mapa"
L["Show icons of multiple (dungeons,raids) on this map"] = "Mostrar íconos de múltiples (mazmorras, incursiones) en este mapa"
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos los íconos de mazmorras, incursiones, portales, zepelines y barcos de Outland MapNotes en este mapa"
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos los íconos de mazmorras, incursiones, portales, zepelines y barcos de Draenor MapNotes en este mapa"
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos los íconos de mazmorras, incursiones, portales, zepelines y barcos de Shadowlands MapNotes en este mapa"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos los íconos de mazmorras, incursiones, portales, zepelines y barcos de Kalimdor MapNotes en este mapa"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos los íconos de mazmorras, incursiones, portales, zepelines y barcos de Eastern Kingdom MapNotes en este mapa"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos los íconos de mazmorras, incursiones, portales, zepelines y barcos de Rasganorte en este mapa"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos los íconos de mazmorras, incursiones, portales, zepelines y barcos de Pandaria MapNotes en este mapa"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos los íconos de mazmorras, incursiones, portales, zepelines y barcos de Zandalar MapNotes en este mapa"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos los íconos de mazmorras, incursiones, portales, zepelines y barcos de Kul Tiras MapNotes en este mapa"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos los íconos de mazmorras, incursiones, portales, zepelines y barcos de Broken Isles MapNotes en este mapa"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostrar todos los íconos de mazmorras, incursiones, portales, zepelines y barcos de Dragon Isles MapNotes en este mapa"
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "Ciertos iconos se pueden mostrar o no. Si se ha activado la opción (Activar iconos) en esta categoría"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Muestra versiones básicas de mazmorras y raids como Naxxramas, Scholomance o Scarlet Monasterio, que requieren logros u otras cosas"
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "¡Los símbolos individuales que están demasiado cerca de otros símbolos en este mapa no se colocan 100 % precisamente en esta tarjeta! Para obtener coordenadas más detalladas, utilice los puntos en la tarjeta de zona"
--7 Maps --7
L["Kalimdor"] = "Kalimdor"
L["Eastern Kingdom"] = "Reino del Este"
L["Outland"] = "Terrallende"
L["Northrend"] = "Rasganorte"
L["Pandaria"] = "pandaria"
L["Draenor"] = "Draenor"
L["Broken Isles"] = "Islas Rotas"
L["Zandalar"] = "Zandalar"
L["Kul Tiras"] = "Kul Tiras"
L["Shadowlands"] = "Tierras Sombrías"
L["Dragon Isles"] = "Islas del Dragón"
--8 Core specific
L["Shift function"] = "Función de cambio"
L["-> MiniMapButton <-"] = "-> Botón MiniMapa <-"
L["-> WorldMapButton <-"] = "-> Botón de la tarjeta mundial <-"
L["MapNotes menu window"] = "Ventana del menú Notas del mapa"
L["All set icons have been restored"] = "Todos los iconos configurados han sido restaurados"
L["All MapNotes icons have been hidden"] = "Todos los iconos de MapNotes han sido ocultos"
L["is activated"] = "Está activado"
L["is deactivated"] = "está desactivado"
L["are shown"] = "son exhibidos"
L["are hidden"] = "están escondidos"
L["Left-click => Open/Close"] = "Clic izquierdo => Abrir/Cerrar"
L["Right-click => Open/Close"] = "Clic derecho => Abrir/Cerrar"
L["Shift + Right-click => hide"] = "Mayús + clic derecho => ocultar"
L["Middle-Mouse-Button => Open/Close"] = "Botón del mouse medio => Abrir/cerrar"
--9 transport
L["icons"] = "iconos"
L["Exit"] = "Salida"
L["Entrance"] = "Entrada"
L["Passage"] = "Paso"
L["Portal"] = "Portal"
L["Ship"] = "Barco"
L["Zeppelin"] = "zepelín"
L["Portalroom"] = "Salón del portal"
L["The Dark Portal"] = "El Portal Oscuro"
L["Captain Krooz"] = "Capitán Krooz"
L["Use the Old Keyring"] = "Usa el viejo llavero"
L["Travel"] = "Viajar"
L["Teleporter"] = "Teletransportador"
L["Old Keyring"] = "Llavero viejo"
L["Old Version"] = "Versión antigua"
L["Secret Portal"] = "Portal secreto"
L["Secret Entrance"] = "Entrada secreta"
L["Ogre Waygate to Garrison"] = "Puerta del ogro a la guarnición"
L["in the basement"] = "en el sotano"
L["(on the tower)"] = "(en la torre)"
L["(inside portal chamber)"] = "(dentro de la cámara del portal)"
L["(inside building)"] = "(dentro del edificio)"
--10 places
L["Auberdine"] = "Auberdine"
L["Ratchet"] = "Ratchet"
L["Theramore Isle"] = "Isla de Theramore"
L["Dire Maul"] = "La Masacre"
L["Blackfathom Deeps"] = "Cavernas de Brazanegra"
L["Stormwind"] = "Ciudad de Ventormenta"
L["Shadowfang Keep"] = "Castillo de Colmillo Oscuro"
L["Undercity"] = "Entrañas"
L["Rut'theran"] = "Aldea Ruttheran"
L["Azuremyst Isle"] = "Isla Bruma Azur"
L["Bel'ameth, Amirdrassil"] = "Bel'ameth, Amirdrassil"
L["Darnassus"] = "Darnaso"
L["Teldrassil"] = "Teldrasil"
L["Graveyard"] = "Cementerio"
L["Library"] = "Biblioteca"
L["Cathedral"] = "Catedral"
L["Armory"] = "Arsenal"
L["Ashran"] = "Ashrán"
L["The Timeways"] = "Las vías del tiempo"
L["Vol'mar"] = "Vol'mar"
L["Zuldazar"] = "Zuldazar"
L["Thunder Bluff"] = "Cima del Trueno"
L["Silvermoon City"] = "Ciudad de Lunargenta"
L["Boralus, Tiragarde Sound"] = "Boralus, Sonido Tiragarde"
L["Valdrakken"] = "Valdrakken"
L["Badlands"] = "Páramos"
L["Oribos"] = "Oribos"
L["Azsuna"] = "Azsuna"
L["Uldum"] = "Uldum"
L["Dazar'alor"] = "Dazar'alor"
L["Shattrath City"] = "Ciudad de Shattrath"
L["Echo Isles, Durotar"] = "Islas del Eco, Durotar"
L["Silithus"] = "Silitus"
L["Nazjatar"] = "Nazjatar"
L["Emerald Dream"] = "Sueño Esmeralda"
L["Thunder Bluff"] = "Cima del Trueno"
L["Howling Fjord"] = "Fiordo Aquilonal"
L["Ruins of Lordaeron"] = "Ruinas de Lordaeron"
L["Isle of Thunder"] = "Isla del Trueno"
L["Twilight Highlands"] = "Tierras Altas del Crepúsculo"
L["Vashj'ir"] = "Vashj'ir"
L["The Waking Shores, Dragon Isles"] = "Las costas del despertar, las islas del dragón"
L["Shado-Pan Garrison, Townlong Steppes"] = "Guarnición del Shadopan, estepas de Townlong"
L["Grom'gol, Stranglethorn Vale"] = "Grom'gol, Vega de Tuercespina"
L["Exodar"] = "Exoliente"
L["Jade Forest"] = "Bosque de jade"
L["Drustvar"] = "Drustvar"
L["Gorgrond"] = "Gorgrond"
L["Ohn'ahran Plains"] = "Llanuras de Ohn'ahran"
L["Borean Tundra"] = "Tundra Boreal"
L["Tirisfal Glades"] = "Claros de Tirisfal"
L["Wintergrasp"] = "Agarre del invierno"
L["Boralus"] = "Boralus"
L["Stormsong Valley"] = "Valle Canto de Tormenta"
L["Tiragarde Sound"] = "Sonido Tiragarde"
L["Ironforge"] = "Forjaz"
L["Blasted Lands"] = "Tierras devastadas"
L["Darkshore"] = "Costa Oscura"
L["Durotar"] = "Durotar"
L["Dustwallow Marsh"] = "Marisma del Revolcapolvo"
L["Vale of Eternal Blossoms"] = "Valle de la Flor Eterna"
L["Arathi Highlands"] = "Tierras Altas de Arathi"
L["Nazmir"] = "Nazmir"
L["Vol'dun"] = "Vol'dun"
L["Isle of Quel'Danas"] = "Isla de Quel'Danas"
L["Hellfire Peninsula"] = "Península del Fuego del Infierno"
L["Korthia"] = "Kortia"
L["The Maw"] = "Las Fauces"
L["Zereth Mortis"] = "Zereth Mortis"
L["Barnard 'The Smasher' Bayswort"] = "Barnard 'The Smasher' Bayswort"
L["Desha Stormwallow"] = "Desha Tormenta"
L["Daria Smithson"] = "Daria Smithson"
L["Swellthrasher"] = "Swellthrasher"
L["Grok Seahandler"] = "Grok Seahandler"
L["Erul Dawnbrook"] = "Erul Dawnbrook"
L["Dread-Admiral Tattersail"] = "El temible almirante Vela Rota"
L["Grand Admiral Jes-Tereth"] = "Gran Almirante Jes-Tereth" 
L["Naxxramas"] = "Naxxramas"
L["Scholomance"] = "Scholomance"
L["Temple of Ahn'Qiraj"] = "Ahn'Qiraj"
L["Lorewalker Han"] = "Eremita Han"
L["Archmage Timear"] = "Archimago Tiemporeja"
L["Kiku"] = "Kiku"
L["Eppu"] = "Eppu"
L["Ta'elfar"] = "Ta'elfar"
L["Seer Kazal"] = "Vidente Kazal"
L["Auridormi"] = "Auridormi"
L["Registrant"] = "Registro"
L["Scarlet Instances"] = "Instancias rojas escarlatas"
L["hide Cosmos map symbols"] = "Ocultar símbolos de cosmos"
L["Shows the locations of Raidbrowser applicants for old Raids"] = "Muestra la posición del registro de navegador entrenado por matanza para el antiguo matadero"
L["Deactivates the display of all possible icons on this map"] = "Desactive la visualización de todos los iconos posibles en esta tarjeta"
--11 Specific
L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] = "Esta entrada de instancia está en una línea de tiempo diferente. Se puede activar otra línea de tiempo en Zidormi"
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "Muestra ubicaciones de incursiones, mazmorras, portales, íconos de barcos y zepelines en diferentes mapas"
L["(Wards of the Dread Citadel - Achievement)"] = "(Guardias de la Ciudadela del Terror - Logro)"
L["(Memory of Scholomance - Achievement)"] = "(Memoria de Scholomance - Logro)"
L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] = "(solo aparece en el juego si tu facción\n está actualmente ocupando Bashal'Aran)"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Este portal de las Tierras Altas de Arathi sólo está activo si tu facción está ocupando Ar'gorok actualmente"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Este portal de Costa Oscura solo está activo si tu facción está ocupando Bashal'Aran actualmente"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(El Gran Almirante Jes-Tereth) te llevará a Vol'Dun, Nazmir o Zuldazar"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Dread-Admiral Tattersail) te llevará a Drustvar, Tiragarde Sound o Stormsong Valley"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Llavero antiguo \n Obtienes la llave escarlata en la \n [Calabaza llena de botín] del [Evento de Halloween] o de la [Casa de subastas] \n ahora puedes activar el [Llavero antiguo] aquí \n para activar el antiguo Versiones de mazmorras del Monasterio Escarlata"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "Aparece primero después del progreso de una instancia determinada\n o requiere un logro determinado" 