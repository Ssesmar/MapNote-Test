local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "esMX")
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
L["MapNotes menu window"] = "Ventana de menú de MapNotes"
L["All set symbols have been restored"] = "Se han restaurado todos los símbolos del conjunto"
L["All MapNotes symbols have been hidden"] = "Se han ocultado todos los símbolos de MapNotes"
L["is activated"] = "está activado"
L["is deactivated"] = "está desactivado"
L["are shown"] = "se muestran"
L["are hidden"] = "están ocultos"
L["symbols"] = "Símbolos"
L["Left-click => Open/Close"] = "Clic izquierdo = > Abrir/Cerrar"
L["Right-click => Open/Close"] = "Botón derecho => Abrir/Cerrar"
L["Shift + Right-click => hide"] = "Mayús clic derecho = > ocultar"
L["(also opens MapNotes if hiding was unwanted)"] = "abre MapNotes si no se desea ocultar)"


--1
L["General"] = "General"  --General tab
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Configuración general que se aplica al mapa Azeroth / Continente / Mazmorra al mismo tiempo"
L["General settings / Additional functions"] = "Configuración general / Funciones adicionales"
L["-> MiniMapButton <-"] = "-> Botón Minimapa <-"
L["hide minimap button"] = "Botón Ocultar minimapa"
L["Show the minimap button on the minimap"] = "Mostrar el botón del minimapa en el minimapa"
L["Hide the minimap button on the minimap"] = "Ocultar el botón del minimapa en el minimapa"
L["hide MapNotes!"] = "ocultar Mapa¡Nota!"
L["-> Hide all MapNotes symbols <-"] = "-> Ocultar todos los símbolos de MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Desactive MapNotes, todos los iconos se ocultarán en cada mapa y todas las categorías se desactivarán"
L["Resizes symbols on the azeroth, continent, zone, dungeon and minimap"] = "Cambia el tamaño de los símbolos de Azeroth, el continente, la zona, la mazmorra y el minimapa"
L["symbol visibility"] = "visibilidad del símbolo"
L["Changes the visibility of the symbols"] = "Cambia la visibilidad de los símbolos"
L["Adventure guide"] = "Guía de aventura"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Al hacer clic con el botón izquierdo del ratón en un mapa de MapNotes raid (verde), mazmorra (azul) o un icono múltiple (verde y azul), se abre el mapa de mazmorra o raid correspondiente en la Guía de aventuras (el mapa no debe estar abierto en pantalla completa)"
L["TomTom waypoints"] = "Puntos de referencia TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Mayús clic derecho en una incursión, mazmorra, símbolo múltiple, portal, barco, zepelín, pasaje o salida de MapNotes en el continente o mapa de mazmorra crea un waypoint de TomTom hasta este punto (pero el complemento TomTom-"
L["killed Bosses"] = "Jefes asesinados"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "Para mazmorras y asaltos en los que has matado jefes y, por lo tanto, se te ha asignado un ID, este símbolo en el mapa de Azeroth y Continente te mostrará el número de jefes muertos o restantes tan pronto como te sitúes sobre este símbolo de mazmorra o asedio (por ejemplo, 2/8 mítico, 4/7 heroico etc)"
L["gray symbols"] = "gris símbolos"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "Si estás asignado a una mazmorra o raid y tienes un ID, esta opción cambiará el icono de mazmorra o raid a gris hasta que este ID se restablezca para que puedas ver qué mazmorra o raid has iniciado o completado"
L["multiple points"] = "múltiples Puntos "
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "Colorea varios puntos de mazmorras y/o incursiones en gris si estás asignado a cualquier mazmorra o incursión de este multipunto y tienes un ID para que puedas ver que has iniciado o completado cualquier mazmorra o incursión del multipunto"
L["enemy faction"] = "Facción enemiga"
L["Shows enemy faction (horde/alliance) symbols"] = "También muestra símbolos de facción enemiga (horda/alianza)"
L["Old Instances"] = "Instancias antiguas"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Muestra versiones vainilla de mazmorras e incursiones como Naxxramas, Scholomance o Scarlet Monastery, que requieren logros u otras cosas"
L["Informations"] = "Informaciones"
L["Chat commands:"] = "Comandos de chat:"
L["to show MapNotes info in chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"] = "para mostrar información de MapNotes en el chat: /mn, /MN, /mnh, /MNH, /mapnotes, /MAPNOTES, /mnhelp, /MNHELP"
L["to open MapNotes menu: /mno, /MNO"] = "para abrir el menú MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "para cerrar el menú de MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "Para mostrar el botón del minimapa: /mnb o /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "Para ocultar el botón del minimapa: /mnbh o /MNBH"


--2
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "Información: ¡Los símbolos individuales de Azeroth que están demasiado cerca de otros símbolos en el mapa de Azeroth no se colocan con precisión al 100% en el mapa de Azeroth! Para una coordinación precisa, utilice los puntos de la"
L["Azeroth map"] = "Mapa de Azeroth"  --Azeroth tab
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Configuración del mapa de Azeroth. Ciertos símbolos se pueden mostrar o no mostrar. Si la opción (Activar símbolos) se ha activado en esta categoría"
L["Activate symbols"] = "Activar símbolos"
L["Activates the display of all possible symbols on the Azeroth map"] = "Activa la visualización de todos los símbolos posibles en el mapa de Azeroth"
L["symbol size"] = "Tamaño del símbolo"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "Cambia el tamaño de los símbolos en el mapa de zonas, el mapa de azeroth y el minimapa"
L["Show individual symbols"] = "Mostrar símbolos individuales"
L["Raids"] = "Incursiones"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the Azeroth map"] = "Mostrar símbolos de bandas en el mapa de Azeroth"
L["Dungeons"] = "Mazmorras"  -- Dungeon anzeigen
L["Show symbols of dungeons on the Azeroth map"] = "Mostrar símbolos de mazmorras en el mapa de Azeroth"
L["Multiple"] = "Múltiple"  -- Gemischte anzeigen
L["Show symbols of multiple on the Azeroth map"] = "Mostrar símbolos de múltiplos en el mapa de Azeroth"
L["Portals"] = "Portales"  -- Portale anzeigen
L["Show symbols of portals on the Azeroth map"] = "Mostrar símbolos de portales en el mapa de Azeroth"
L["Zeppelins"] = "Zepelines"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the Azeroth map"] = "Mostrar símbolos de zepelines en el mapa de Azeroth"
L["Ships"] = "Buques"  -- Schiffe anzeigen
L["Show symbols of ships on the Azeroth map"] = "Mostrar símbolos de barcos en el mapa de Azeroth"
L["Show all MapNotes for a specific map"] = "Mostrar todas las MapNotes de un mapa específico"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de Kalimdor en el mapa de Azeroth"
L["Eastern Kingdom"] = "Reino del Este"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos del Reino del EsteNotas en el mapa de Azeroth"
L["Pandaria"] = "Pandaria"  -- Pandaria anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de RasganorteNotas en el mapa de Azeroth"
L["Pandaria"] = "Pandaria"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y naves de Pandaria en el mapa de Azeroth"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y naves de Zandalar en el mapa de Azeroth"
L["Kul Tiras"] = "Kul Tiras"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, banda, portal, zepelín y barco de Kul Tiras en el mapa de Azeroth"
L["Broken Isles"] = "Islas Abruptas"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de las Islas AbruptasNotas en el mapa de Azeroth"
L["Dragon Isles"] = "Islas Dragón "  -- Dragonflight anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de las Islas Dragón en el mapa de Azeroth"


--3
L["Continent map"] = "Mapa del continente"  --Continent tab
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Configuración del mapa del continente. Ciertos símbolos se pueden mostrar o no mostrar. Si la opción (Activar símbolos) se ha activado en esta categoría"
L["Activate symbols"] = "Activar símbolos"
L["Activates the display of all possible symbols on the continent map"] = "Activa la visualización de todos los símbolos posibles en el mapa del continente"
L["symbol size"] = "Tamaño del símbolo"
L["Resizes symbols on the continent map"] = "Cambia el tamaño de los símbolos en el mapa del continente"
L["Show individual symbols"] = "Mostrar símbolos individuales"
L["Raids"] = "Incursiones"  -- Schlachtzüge anzeigen
L["Show symbols of raids on the continant map and minimap"] = "Mostrar símbolos de incursiones en el mapa y el minimapa continantes"
L["Dungeons"] = "Mazmorras"  -- Dungeon anzeigen
L["Show symbols of dungeons on the continant map and minimap"] = "Mostrar símbolos de mazmorras en el mapa y minimapa continuos"
L["Multiple"] = "Múltiple"  -- Gemischte anzeigen
L["Show symbols of multiple (dungeons,raids) on the continant map and minimap"] = "Muestra símbolos de múltiples (mazmorras, incursiones) en el mapa y minimapa continantes"
L["Portals"] = "Portales"  -- Portale anzeigen
L["Show symbols of portals on the continant map and minimap"] = "Mostrar símbolos de portales en el mapa y minimapa continuos"
L["Zeppelins"] = "Zepelines"  -- Zeppeline anzeigen
L["Show symbols of zeppelins on the continant map and minimap"] = "Mostrar símbolos de zepelines en el mapa y minimapa continuos"
L["Ships"] = "Buques"  -- Schiffe anzeigen
L["Show symbols of ships on the continant map and minimap"] = "Mostrar símbolos de barcos en el mapa y minimapa continantes"
L["Ogre Waygate"] = "Puerta de paso de ogros"
L["Show Ogre Waygate symbols from Garrison on the Draenor continent and zone map"] = "Mostrar símbolos de la puerta de paso de ogro de la ciudadela en el mapa del continente y la zona de Draenor"
L["Show all MapNotes for a specific map"] = "Mostrar todas las MapNotes de un mapa específico"
L["Kalimdor"] = "Kalimdor"  -- Kalimdor anzeigen
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de Kalimdor en el mapa del continente"
L["Eastern Kingdom"] = "Reino del Este"  -- Östliche Königreiche anzeigen
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de Reino del Este en el mapa del continente"
L["Outland"] = "Terrallende"  -- Scherbenwelt anzeigen
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de Terrallende en el mapa del continente"
L["Northrend"] = "Rasganorte"  -- Northrend anzeigen
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de Rasganorte en el mapa del continente"
L["Pandaria"] = "Pandaria"  -- Pandaria anzeigen
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de Pandaria en el mapa del continente"
L["Draenor"] = "Draenor"  -- Draenor anzeigen
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de Draenor en el mapa del continente"
L["Broken Isles"] = "Islas Abruptas"  -- Verheerten Inseln anzeigen
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de Islas Abruptas en el mapa del continente"
L["Zandalar"] = "Zandalar"  -- Zandalar anzeigen
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de Zandalar en el mapa del continente"
L["Kul Tiras"] = "Kul Tiras"  -- Kul Tiras anzeigen
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, banda, portal, zepelín y barco de Kul Tiras en el mapa del continente"
L["Shadowlands"] = "Tierras Sombrías"  -- Schattendlande anzeigen
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de Shadowlands en el mapa del continente"
L["Dragon Isles"] = "Islas Dragón "  -- Dragonflight anzeigen
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Mostrar todos los símbolos de mazmorras, bandas, portales, zepelines y barcos de Dragon IslesNotes en el mapa del continente"


--4
L["Dungeon map"] = "Mapa de mazmorras" --DungeonMap Tab
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNotes exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Configuración del mapa de Dungeon. Algunos símbolos pueden mostrarse o no mostrarse. Si la opción (activar símbolos) se ha activado en esta categoría. Muestra los puntos de salida y paso de MapNotes en el mapa de la mazmorra (estos símbolos son solo para fines de orientación y no sucede nada cuando se hace clic en ellos)"
L["Activate symbols"] = "Activar símbolos"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Permite la visualización de todos los símbolos posibles en el mapa de mazmorras (estos símbolos son solo para fines de orientación y no sucede nada al hacer clic en ellos)"
L["Exits"] = "Salidas "
L["Show symbols of MapNotes dungeon exit on the dungeon map"] = " Mostrar símbolos de salida de mazmorra de MapNotes en el mapa de mazmorras "
L["Passages"] = "Pasajes "
L["Show symbols of passage on the dungeon map"] = " Mostrar símbolos de paso en el mapa de la mazmorra "
L["Portals"] = "Portales"  -- Portale anzeigen
L["Show symbols of portals on the dungeon map"] = "Mostrar símbolos de portales en el mapa de la mazmorra"


--5 Entrance/Exit/Passage
L["Exit"] = "la salida"
L["Entrance"] = "la entrada"
L["Passage"] = "el paso"


--6 Transport basics
L["Portal"] = "Portal"
L["Ship"] =  "Barco"
L["Zeppelin"] = "Zeppelin"
L["Portalroom"] = "Portalroom"
L["(inside building)"] = "(dentro del edificio)"
L["(at basement)"] = "(en el sótano)"
L["(inside portal chamber)"] = "(dentro de la cámara del portal)"
L["(on the tower)"] = "(en la torre)"
-- Transport places-- Lugares de transporte
L["Ashran"] = "Ashran"
L["Azsuna"] = "Azsuna"
L["Boralus"] = "Boralus"
L["Boralus Harbor, Tiragarde Sound"] = "Boralus Harbor, Tiragarde Sound"
L["Booty Bay, Stranglethorn Vale"] = "Bahía del Botín, Valle de Stranglethorn"
L["Caverns of Time"] = "Cavernas del Tiempo"
L["Drustvar"] = "Drustvar"
L["Deepholm"] = "Deepholm"
L["Dalaran"] = "Dalaran"
L["Dalaran, Crystalsong Forest"] = "Dalaran, Bosque de la Canción de Cristal"
L["Dazar'alor"] = "Dazar'alor"
L["Exodar"] = "Exodar"
L["Echo Isles, Durotar"] = "Islas del Eco, Durotar"
L["Hellfire Peninsula"] = "Península del Fuego Infernal"
L["Howling Fjord"] = "Fiordo Aullante"
L["Hyjal"] = "Hyjal"
L["Ironforge"] = "Ironforge"
L["Isle of Thunder"] = "Isla del Trueno"
L["Isle of Quel'Danas"] = "Isla de Quel'Danas"
L["Lion's Watch"] = "Guardia del León"
L["Mechagon"] = "Mechagon"
L["Menethil Harbor, Wetlands"] = "Puerto de Menethil, Humedales"
L["Nazjatar"] = "Nazjatar"
L["Nazmir"] = "Nazmir"
L["Ogre Waygate to Garrison"] = "Puerta de los Ogros a la Guarnición"
L["Ohn'ahran Plains"] = "Llanuras de Ohn'ahran"
L["Orgrimmar"] = "Orgrimmar"
L["Oribos"] = "Oribos" 
L["Ruins of Lordaeron, Undercity"] = "Ruinas de Lordaeron, Ciudad Subterránea"
L["Ratchet, Northern Barrens"] = "Ratchet, Barrens del Norte"
L["Stormsong Valley"] = "Valle de Stormsong"
L["Stormwind City"] = "Ciudad de Stormwind"
L["Silithus"] = "Silithus"
L["Stranglethorn"] = "Stranglethorn"
L["Shado-Pan Garrison, TownlongWastes"] = "Guarnición de Shado-Pan, Páramos de la Ciudad"
L["Silvermoon City"] = "Ciudad de Silvermoon"
L["Stormshield, Ashran"] = "Escudo de Tormenta, Ashran"
L["Shattrath"] = "Shattrath"
L["The Dark Portal"] = "El Portal Oscuro"
L["The Emerald Dream"] = "El Sueño Esmeralda"
L["Tol Barad"] = "Tol Barad"
L["Tiragarde Sound"] = "Tiragarde Sound"
L["Twilight Highlands"] = "Tierras Altas del Crepúsculo"
L["Thunderbluff"] = "Thunderbluff"
L["The Timeways"] = "Los Caminos del Tiempo"
L["Jade Forest"] = "Bosque de Jade"
L["Uldum"] = "Uldum"
L["Vol'Dun"] = "Vol'Dun"
L["Vol'mar"] = "Vol'mar"
L["Vashj'ir"] = "Vashj'ir"
L["Valdrakken"] = "Valdrakken"
L["Valiance Keep, Borean Tundra"] = "Torre del Valor, Tundra Boreal"
L["Badlands"] = "Badlands"
L["Warspear, Ashran"] = "Warspear, Ashran"
L["Waking Shores, Dragon Isles"] = "Waking Shores, Islas Dragón"
L["Zuldazar"] = "Zuldazar"
L["Zandalar"] = "Zandalar"
-- other transports-- otros transportes
L["Back to Zuldazar"] = "De vuelta a Zuldazar"
L["Back to Boralus"] = "Volver a Boralus"
L["(Captain Krooz) will take you to Mechagon"] = "(Capitán Krooz) te llevará a Mechagon"
L["(Captain Krooz) will take you back to Zuldazar"] = "(Capitán Krooz) le llevará de vuelta a Zuldazar"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "El Gran Almirante Jes-Tereth te llevará a Vol'Dun, Nazmir o Zuldazar"
L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"] = "(Sólo aparece en el juego si tu facción está ocupando Bashal'Aran)"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(El Almirante Tattersail) te llevará a Drustvar, Tiragarde Sound o Stormsong Valley"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Este portal de las Tierras Altas de Arathi solo está activo si tu facción está ocupando Ar'gorok"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Este portal de Costa Oscura solo está activo si tu facción está ocupando Bashal'Aran"

--7 old dungeons/raids
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Versión antigua de la Armería del Monasterio Escarlata \n (es necesario activar el [Llavero antiguo] en 48.33, 55.88 dentro del Monasterio Escarlata)"
L["Old version of Naxxramas - Secret Entrance \n (Wards of the Dread Citadel - Achievement)"] = "Versión antigua de Naxxramas - Entrada secreta \n (Guardianes de la Ciudadela del Terror - Logro)"
L["Old version of Scarlet Monastery Cathedral \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Versión antigua de la Catedral del Monasterio Escarlata \n (es necesario activar el [Llavero antiguo] en 48.33 55.88 dentro del Monasterio Escarlata)"
L["Old version of Scarlet Monastery Graveyard \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"]  "Versión antigua del Cementerio del Monasterio Escarlata \n (es necesario activar el [Llavero antiguo] en 48.33 55.88 dentro del Monasterio Escarlata"
L["Old version of Scarlet Monastery Library \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Versión antigua de la Biblioteca del Monasterio Escarlata \n (es necesario activar el [Llavero antiguo] en 48.33 55.88 dentro del Monasterio Escarlata)"
L["Old version of Scarlet Monastery Armory \n (need to activate the [Old Keychain] at 48.33 55.88 inside the Scarlet Monastery)"] = "Versión antigua de la Armería del Monasterio Escarlata \n (es necesario activar el [Llavero antiguo] en 48.33, 55.88 dentro del Monasterio Escarlata)"
L["Old version of Scholomance - Secret Entrance \n (Memory of Scholomance - Achievement)"] = "Versión antigua de Scholomance - Secret Entrance \n (Memoria de Scholomance - Logro)"
L["Old Keychain \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keychain] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Llavero antiguo \n Obtienes la llave escarlata en la \n [Calabaza llena de botín] de [Evento de Halloween ] o de la [Casa de subastas] \n ahora puedes activar el [Llavero antiguo] aquí \n para activar versiones de mazmorras antiguas del Monasterio Escarlata"