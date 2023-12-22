local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "esES")
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
L["Shows locations of raids, dungeons, portals ,ship and zeppelins symbols on different maps"] = "Muestra ubicaciones de incursiones, mazmorras, portales, símbolos de barcos y zepelines en diferentes mapas"
L["MapNotes menu window"] = "Ventana de menú de notas de mapa"
L["All set symbols have been restored"] = "Todos los símbolos establecidos han sido restaurados."
L["All MapNotes symbols have been hidden"] = "Todos los símbolos de MapNotes han sido ocultos."
L["is activated"] = "Está activado"
L["is deactivated"] = "S desactivado"
L["are shown"] = "son exhibidos"
L["are hidden"] = "están escondidos"
L["symbols"] = "simbolos"
L["Left-click => Open/Close"] = "Clic izquierdo => Abrir/Cerrar"
L["Shift + Right-click => hide"] = "Mayús + clic derecho => ocultar"
L["(also opens MapNotes if hiding was unwanted)"] = "(abre MapNotes si no desea ocultarlo)"


--1
L["General"] = "Generalmente"  --General tab
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Configuraciones generales que se aplican al mapa de Azeroth/Continente/Mazmorra al mismo tiempo"
L["General settings / Additional functions"] = "Ajustes generales / Funciones adicionales"
L["-> MiniMapButton <-"] = "-> Botón Minimapa <-"
L["hide minimap button"] = "ocultar el botón del minimapa"
L["Show the minimap button on the minimap"] = "Mostrar el botón de minimapa en el minimapa"
L["Hide the minimap button on the minimap"] = "Ocultar el botón del minimapa en el minimapa"
L["hide MapNotes!"] = "ocultar Mapa¡Nota!"
L["-> Hide all MapNotes symbols <-"] = "-> Ocultar todos los símbolos de MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Desactive MapNotes, todos los iconos se ocultarán en cada mapa y todas las categorías se desactivarán"
L["Adventure guide"] = "guía de aventuras"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Al hacer clic con el botón izquierdo en una incursión de MapNotes (verde), una mazmorra (azul) o un ícono múltiple (verde y azul) en el mapa, se abre la mazmorra o el mapa de incursión correspondiente en la Guía de aventuras (el mapa no debe estar abierto en pantalla completa)"
L["TomTom waypoints"] = "Puntos de referencia de TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Mayús+clic derecho en una banda, mazmorra, símbolo múltiple, portal, barco, zepelín, pasaje o salida de MapNotes en el mapa de continente o mazmorra crea un waypoint de TomTom hasta este punto (pero el complemento TomTom debe estar instalado para este)"
L["killed Bosses"] = "jefes asesinados"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "Para las mazmorras e incursiones en las que has matado jefes y, por lo tanto, se te ha asignado una identificación, este símbolo en el mapa de Azeroth y del continente te mostrará el número de jefes asesinados o restantes tan pronto como pases el cursor sobre este símbolo de mazmorra o incursión (por ejemplo 2/8 mítico, 4/7 heroico, etc.)"
L["gray symbols"] = "gris símbolos"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "Si estás asignado a una mazmorra o banda y tienes una identificación, esta opción hará que el ícono de la mazmorra o banda se vuelva gris hasta que esta ID se restablezca para que puedas ver qué mazmorra o banda has iniciado o completado"
L["multiple points"] = "múltiples puntos"
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "Colorea los multipuntos de mazmorras y/o raids en gris si estás asignado a alguna mazmorra o raid de este multipunto y tienes un ID para que puedas ver que has iniciado o completado cualquier mazmorra o raid de este multipunto"
L["enemy faction"] = "facción enemiga"
L["Shows enemy faction (horde/alliance) symbols"] = "También muestra símbolos de facciones enemigas (horda/alianza)."
L["Old Instances"] = "Instancias antiguas"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Muestra versiones básicas de mazmorras y bandas como Naxxramas, Scholomance o Scarlet Monasterio, que requieren logros u otras cosas"
L["Informations"] = "Informaciones"
L["Chat commands:"] = "Comandos de chat:"
L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"] = "para mostrar información de MapNotes en el chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"
L["to open MapNotes menu: /mno, /MNO"] = "para abrir el menú MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "para cerrar el menú MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "para mostrar el botón del minimapa: /mnb or /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "para ocultar el botón del minimapa: /mnbh or /MNBH"


--2
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "Información: ¡Los símbolos individuales de Azeroth que están demasiado cerca de otros símbolos en el mapa de Azeroth no se colocan con una precisión del 100% en el mapa de Azeroth! Para una coordinación precisa, utilice los puntos en el mapa continental o en el mapa de zonas."
L["Azeroth map"] = "mapa de azeroth"  --Azeroth tab
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Configuración del mapa de Azeroth. Ciertos símbolos se pueden mostrar o no. Si se ha activado la opción (Activar símbolos) en esta categoría"
L["Activate symbols"] = "Activar símbolos"
L["Activates the display of all possible symbols on the Azeroth map"] = "Activa la visualización de todos los símbolos posibles en el mapa de Azeroth."
L["symbol size"] = "tamaño del símbolo"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "Cambia el tamaño de los símbolos en el mapa de zona, el mapa de Azeroth y el minimapa."
L["Show individual symbols"] = "Mostrar símbolos individuales"
L["Raids"] = "Redadas"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the Azeroth map"] = "Mostrar símbolos de incursiones en el mapa de Azeroth."
L["Dungeons"] = "Mazmorras"  -- Dungeon anzeigen
L["Show symbols of dungeons on the Azeroth map"] = "Mostrar símbolos de mazmorras en el mapa de Azeroth"
L["Multiple"] = "Múltiple"  -- Gemischte anzeigen
L["Show symbols of multiple on the Azeroth map"] = "Mostrar símbolos de múltiples en el mapa de Azeroth."
L["Portals"] = "Portales"  -- Portale anzeigen
L["Show symbols of portals on the Azeroth map"] = "Mostrar símbolos de portales en el mapa de Azeroth."
L["Zeppelins"] = "Zepelines"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the Azeroth map"] = "Mostrar símbolos de zepelines en el mapa de Azeroth"
L["Ships"] = "Buques"  -- Schiffe anzeigen
L["Show symbols of ships on the Azeroth map"] = "Mostrar símbolos de barcos en el mapa de Azeroth."
L["Show all MapNotes for a specific map"] = "Mostrar todas las MapNotes para un mapa específico"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorra, incursión, portal, zepelín y barco de Kalimdor MapNotes en el mapa de Azeroth"
L["Eastern Kingdom"] = "Reino del Este"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, incursiones, portales, zepelines y barcos de Eastern Kingdom MapNotes en el mapa de Azeroth"
L["Northrend"] = "Rasganorte"  -- Nordend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, incursiones, portales, zepelines y barcos de Rasganorte en el mapa de Azeroth"
L["Pandaria"] = "Pandaria"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, incursiones, portales, zepelines y barcos de Pandaria MapNotes en el mapa de Azeroth"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorra, incursión, portal, zepelín y barco de Zandalar MapNotes en el mapa de Azeroth"
L["Kul Tiras"] = "Kul Tiras"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Kul Tiras MapNotes Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte an"
L["Broken Isles"] = "Islas Abruptas"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, incursiones, portales, zepelines y barcos de Broken Isles MapNotes en el mapa de Azeroth"
L["Dragon Isles"] = "Islas Dragón"  -- Dracheninseln anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, incursiones, portales, zepelines y barcos de Dragon Isles MapNotes en el mapa de Azeroth"


--3
L["Continent map"] = "Mapa de continentes"  --Continent tab
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Configuración del mapa continental. Ciertos símbolos se pueden mostrar o no. Si se ha activado la opción (Activar símbolos) en esta categoría"
L["Activate symbols"] = "Activar símbolos"
L["Activates the display of all possible symbols on the continent map"] = "Activa la visualización de todos los símbolos posibles en el mapa del continente"
L["symbol size"] = "tamaño del símbolo"
L["Resizes symbols on the continent map"] = "Cambia de tamaño símbolos en el mapa del continente"
L["Show individual symbols"] = "Mostrar símbolos individuales"
L["Raids"] = "Redadas"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the continant map and minimap"] = "Mostrar símbolos de incursiones en el mapa continental y en el minimapa"
L["Dungeons"] = "Mazmorras"  -- Dungeon anzeigen
L["Show symbols of dungeons on the continant map and minimap"] = "Mostrar símbolos de mazmorras en el mapa continental y en el minimapa"
L["Multiple"] = "Múltiple"  -- Gemischte anzeigen
L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"] = "Mostrar símbolos de múltiples (mazmorras, incursiones) en el mapa continental y en el minimapa"
L["Portals"] = "Portales"  -- Portale anzeigen
L["Show symbols of portals on the continant map and minimap"] = "Mostrar símbolos de portales en el mapa continental y en el minimapa"
L["Zeppelins"] = "Zepelines"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the continant map and minimap"] = "Mostrar símbolos de zepelines en el mapa continental y en el minimapa"
L["Ships"] = "Buques"  -- Schiffe anzeigen
L["Show symbols of ships on the continant map and minimap"] = "Mostrar símbolos de barcos en el mapa continental y en el minimapa"
L["Ogre Waygate"] = "Puerta del Ogro"
L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"] = "Muestra los símbolos de Ogre Waygate de Garrison en el continente y mapa de zona de Draenor."
L["Show all MapNotes for a specific map"] = "Mostrar todas las MapNotes para un mapa específico"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorra, incursión, portal, zepelín y barco de Kalimdor MapNotes en el mapa del continente"
L["Eastern Kingdom"] = "Reino del Este"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, incursiones, portales, zepelín y barcos de Eastern Kingdom MapNotes en el mapa del continente"
L["Outland"] = "Terrallende"  -- Scherbenwelt anzeigen
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, incursiones, portales, zepelines y barcos de Outland MapNotes en el mapa del continente"
L["Northrend"] = "Rasganorte"  -- Northrend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, incursiones, portales, zepelines y barcos de Rasganorte en el mapa del continente"
L["Pandaria"] = "Pandaria"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, incursiones, portales, zepelines y barcos de Pandaria MapNotes en el mapa del continente"
L["Draenor"] = "Draenor"  -- Draenor anzeigen
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, incursiones, portales, zepelines y barcos de Draenor MapNotes en el mapa del continente"
L["Broken Isles"] = "Islas Abruptas"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorra, incursión, portal, zepelín y barco de Broken Isles MapNotes en el mapa del continente"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorra, incursión, portal, zepelín y barco de Zandalar MapNotes en el mapa del continente"
L["Kul Tiras"] = "Kul Tiras"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorra, incursión, portal, zepelín y barco de Kul Tiras MapNotes en el mapa del continente"
L["Shadowlands"] = "Tierras Sombrías"  -- Schattendlande anzeigen
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, incursiones, portales, zepelín y barcos de Shadowlands MapNotes en el mapa del continente"
L["Dragon Isles"] = "Islas Dragón"  -- Dragonflight anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorra, incursión, portal, zepelín y barco de Dragon Isles MapNotes en el mapa del continente"


--4
L["Dungeon map"] = "Mapa de mazmorra" --DungeonMap Tab
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Configuración del mapa de mazmorras. Ciertos símbolos se pueden mostrar o no. Si se ha activado la opción (Activar símbolos) en esta categoría. Muestra los puntos de salida y paso de MapNotes en el mapa de la mazmorra (estos símbolos son solo para fines de orientación y no sucede nada al hacer clic en ellos)"
L["Activate symbols"] = "Activar símbolos"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Permite la visualización de todos los símbolos posibles en el mapa de la mazmorra (estos símbolos son solo para fines de orientación y no sucede nada al hacer clic en ellos)"
L["Exits"] = "Salidas"
L["Show symbols of MapNotes dungeon exit on the dungeon map"] = "Mostrar símbolos de salida de mazmorra de MapNotes en el mapa de mazmorra"
L["Passages"] = "Pasajes"
L["Show symbols of passage on the dungeon map"] = "Mostrar símbolos de paso en el mapa de la mazmorra."
L["Portals"] = "Portales"  -- Portale anzeigen
L["Show symbols of portals on the dungeon map"] = "Mostrar símbolos de portales en el mapa de la mazmorra."


--5 Entrance/Exit/Passage
L["Exit"] = "Salida"
L["Entrance"] = "Entrada"
L["Passage"] = "Paso"


--6 Transport basics
L["Portal"] = "Portal"
L["Ship"] = "Barco" 
L["Zeppelin"] = "Zepelín"
L["Portalroom"] = "Salón del portal"
L["(inside building)"] = "(dentro del edificio)"
L["(at basement)"] = "(en el sótano)"
L["(inside portal chamber)"] = "(dentro de la cámara del portal)"
L["(on the tower)"] = "(en la torre)"
-- Transport place -- Lugares de transporte
L["Ashran"] = "Ashrán"
L["Azsuna"] = "Azsuna"
L["Boralus"] = "Boralus"
L["Boralus Harbor, Tiragarde Sound"] = "Puerto de Boralus, Sonido de Tiragarde"
L["Booty Bay, Stranglethorn Vale"] = "Bahía del Botín, Vega de Tuercespina"
L["Caverns of Time"] = "Cavernas del Tiempo"
L["Drustvar"] = "Drustvár"
L["Deepholm"] = "Deepholm"
L["Dalaran"] = "Dalaran"
L["Dalaran, Crystalsong Forest"] = "Dalaran, Bosque Canto de Cristal"
L["Dazar'alor"] = "Dazar'alor"
L["Exodar"] = "Exodar"
L["Echo Isles, Durotar"] = "Islas del Eco, Durotar"
L["Hellfire Peninsula"] = "Península del Fuego Infernal"
L["Howling Fjord"] = "Fiordo Aquilonal"
L["Hyjal"] = "Hyjal"
L["Ironforge"] = "Forjaz"
L["Isle of Thunder"] = "Isla del Trueno"
L["Isle of Quel'Danas"] = "Isla de Quel'Danas"
L["Mechagon"] = "Mecandria"
L["Menethil Harbor, Wetlands"] = "Puerto de Menethil, Humedales"
L["Nazjatar"] = "Nazjatar"
L["Nazmir"] = "Nazmir"
L["Ogre Waygate to Garrison"] = "Puerta del ogro a la guarnición"
L["Ohn'ahran Plains"] = "Llanuras de Ohn'ahran"
L["Orgrimmar"] = "Orgrimmar"
L["Oribos"] = "Oribos"
L["Ruins of Lordaeron, Undercity"] = "Ruinas de Lordaeron, Entrañas"
L["Ratchet, Northern Barrens"] = "Trinquete, Los Baldíos del Norte"
L["Stormsong Valley"] = "Valle Canto de Tormenta"
L["Stormwind City"] = "Ciudad de Ventormenta"
L["Silithus"] = "Silitus"
L["Stranglethorn"] = "Tuercespina"
L["Shado-Pan Garrison, TownlongWastes"] = "Guarnición del Shadopan, Páramos de Townlong"
L["Silvermoon City"] = "Ciudad de Lunargenta"
L["Stormshield, Ashran"] = "Escudo de tormentas, Ashran"
L["Shattrath"] = "Shatrath"
L["The Dark Portal"] = "El Portal Oscuro"
L["The Emerald Dream"] = "El sueño esmeralda"
L["Tol Barad"] = "Tol Barad"
L["Tiragarde Sound"] = "Sonido Tiragarde"
L["Twilight Highlands"] = "Tierras Altas del Crepúsculo"
L["Thunderbluff"] = "Campaña del Trueno"
L["The Timeways"] = "Las vías del tiempo"
L["Jade Forest"] = "Bosque de Jade"
L["Uldum"] = "Uldum"
L["Vol'Dun"] = "Vol'Dun"
L["Vol'mar"] = "Vol'mar"
L["Vashj'ir"] = "Vashj'ir"
L["Valdrakken"] = "Valdrakken"
L["Valiance Keep, Borean Tundra"] = "Valance Keep, Tundra Boreal"
L["Badlands"] = "Páramos"
L["Warspear, Ashran"] = "Lanza de guerra, Ashran"
L["Waking Shores, Dragon Isles"] = "Costas del Despertar, Islas del Dragón"
L["Zuldazar"] = "Zuldazar"
L["Zandalar"] = "Zandalar"
-- other transport -- otros transportes
L["Back to Zuldazar"] = "De vuelta a Zuldazar"
L["Back to Boralus"] = "Regreso a Boralús"
L["Portal to Zandalar(horde)/Boralus(alliance)"] = "Portal a Zandalar (horda)/Boralus (alianza)"
L["(Captain Krooz) will take you to Mechagon"] = "(El Capitán Krooz) te llevará a Mecandria"
L["(Captain Krooz) will take you back to Zuldazar"] = "(El Capitán Krooz) te llevará de regreso a Zuldazar"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(El Gran Almirante Jes-Tereth) te llevará a Vol'Dun, Nazmir o Zuldazar"
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "(solo aparece en el juego si tu facción está actualmente ocupando Bashal'Aran)"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Dread-Admiral Tattersail) te llevará a Drustvar, Tiragarde Sound o Stormsong Valley"
L["These portals are only active in the game if your faction is currently occupying (Ar'gorok for the Arathi Highlands portal) or (Bashal'Aran for the Darkshore portal)"] = "Estos portales solo están activos en el juego si tu facción está ocupando actualmente (Ar'gorok para el portal de las Tierras Altas de Arathi) o (Bashal'Aran para el portal de Costa Oscura)" 


--7 old dungeons/raids
L["Old version of Scarlet Monastery Armory (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Versión antigua de la Armería del Monasterio Escarlata (es necesario activar el llavero antiguo en 48.33 55.88 dentro del Monasterio Escarlata)"
L["Old version of Naxxramas - Secret Entrance (Wards of the Dread Citadel - Achievement)"] = "Versión antigua de Naxxramas - Entrada secreta (Wards of the Dread Citadel - Logro)"
L["Old keychain - use the old keychain to activate the old versions of Scarlet Monastery dungeons (you need to get first (The Scarlet Key) from Hallow's End world event or buy from auction house)"] = "Llavero antiguo: usa el llavero antiguo para activar las versiones antiguas de las mazmorras del Monasterio Escarlata (debes obtener primero (La Llave Escarlata) del evento mundial de Hallow's End o comprarla en la casa de subastas)"
L["Old version of Scarlet Monastery Cathedral (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Versión antigua de la Catedral del Monasterio Escarlata (es necesario activar el llavero antiguo en 48.33 55.88 dentro del Monasterio Escarlata)"
L["Old version of Scarlet Monastery Graveyard (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Versión antigua del Cementerio del Monasterio Escarlata (es necesario activar el llavero antiguo en 48.33 55.88 dentro del Monasterio Escarlata)"
L["Old version of Scarlet Monastery Library (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Versión antigua de la Biblioteca del Monasterio Escarlata (es necesario activar el llavero antiguo en 48.33 55.88 dentro del Monasterio Escarlata)"
L["Old version of Scarlet Monastery Armory (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Versión antigua de la Armería del Monasterio Escarlata (es necesario activar el llavero antiguo en 48.33 55.88 dentro del Monasterio Escarlata)"
L["Old version of Scholomance - Secret Entrance (Memory of Scholomance - Achievement)"] = "Versión antigua de Scholomance - Entrada secreta (Memoria de Scholomance - Logro)"