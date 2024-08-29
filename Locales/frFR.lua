local ADDON_NAME = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "frFR")
if not L then return end

--0.1 profiles
L["Profile has been changed"] = "Le profil a été modifié"
L["Profile has been reset to default"] = "Le profil a été réinitialisé avec les paramètres par défaut"
L["Profile has been adopted"] = "Le profil a été repris"
L["Profile has been deleted"] = "Le profil a été supprimé"
--0.2 Change Zones
L["Location"] = "Emplacement"
L["Show joined zone names in chat"] = "Afficher les noms des zones rejointes dans le chat"
L["Capital cities are excluded from this because there would be too much chat spam"] = "Les capitales en sont exclues car il y aurait trop de spam dans les discussions."
L["Show Zone Names"] = "Afficher les noms de zones"
L["In addition to the zone names, it also displays the names of specific locations within a zone. Disabling the Show Zone Names feature will also disable this feature"] = "En plus des noms de zone, il affiche également les noms d'emplacements spécifiques au sein d'une zone. La désactivation de la fonctionnalité Afficher les noms de zone désactivera également cette fonctionnalité"
L["You are now in"] = "Vous êtes maintenant dans"
L["When entering a new zone, the name of the new zone will be displayed in the chat"] = "Lors de l'entrée dans une nouvelle zone, le nom de la nouvelle zone sera affiché dans le chat"
--0.3 Classic function Change
L["Number"] = "Nombre"
L["Orientation"] = "Orientation"
L["Old icon style"] = "style de symbole ancien"
L["Changes the appearance of the icons. When activated, the listed icons will be changed with the previous style of these icons"] = "Modifie l'apparence des icônes. Lorsqu'elles sont activées, les icônes répertoriées seront modifiées avec le style précédent de ces icônes"
--0.4 Restore
L["canceled"] = "annulé"
L["Delete this icon"] = "Supprimer cette icône"
L["A icon has been deleted"] = "Un symbole a été supprimé"
L["Restore all deleted icons for different types of maps"] = "Restaurer toutes les icônes supprimées pour différents types de cartes"
L["Restore all deleted icons"] = "Restaurer toutes les icônes supprimées"
L["which you removed with the function"] = "que vous avez supprimé avec la fonction"
L["All deleted icons have been restored"] = "Toutes les icônes supprimées ont été restaurées"
--0.5 Sync function
L["synchronizes"] = "synchronise"
L["Synchronizes the Zones tab with the Minimap tab"] = "Synchronise l'onglet Zones avec l'onglet Mini-carte"
L["Which deactivates the functions from the Minimap tab and is now controlled together by the Zones tab"] = "Cela désactive les fonctionnalités de l'onglet Mini-carte et est désormais contrôlé collectivement via l'onglet Zones"
L["This will delete all Minimap settings and replace them with those from Zones tab"] = "En conséquence, tous les mini-paramètres de garden sont supprimés et remplacés par les paramètres de l'onglet Zones"
L["Synchronizes the Capitals tab with the Capitals - Minimap tab"] = "Synchronise l'onglet Capital avec l'onglet Capital Cities - Mini-carte"
L["Which deactivates the functions from the Capitals - Minimap tab and is now controlled together by the Capitals tab"] = "Cela désactive les fonctions de l'onglet Mini-carte Cities - Mini-carte et sont maintenant contrôlés ensemble via l'onglet Capital Cities"
L["This will delete all Capitals - Minimap settings and replace them with those from Capitals tab"] = "Cela a supprimé tous les paramètres pour Capitals - Mini Card et remplacé par les paramètres de l'onglet Capital Cities"
--0.6 MapNotes icons and hide blizzard POIs
L["Displays special MapNotes summary icons containing several different pieces of information (dungeons/raids/portals, etc.)"] = "Affiche des icônes de résumé spéciales de cartes contenant plusieurs informations différentes (donjons / raids / portails, etc.)"
L["Points of interests"] = "Points d'intérêt"
L["Disables the display of all Blizzard Dungeon and Raid icons on the zone map"] = "Désactive l'affichage de toutes les icônes Blizzard Dungeon and Raid sur la carte de la zone"
--1 Capitals
L["Leather Armor"] = "Armure de cuir"
L["Heavy Armor"] = "Armure lourde"
L["Plate Armor"] = "Armure de plaques"
L["Cloth Armor"] = "Armure en tissu"
L["Quartermaster"] = "Intendant"
L["The Scryers"] = "Les Clairvoyants"
L["The Aldor"] = "L'Aldor"
L["Paths"] = "Chemins"
L["Path"] = "Chemin"
L["Capitals"] = "Capitales"
L["Alchemy"] = "Alchimie"
L["Engineer"] = "Ingénieur"
L["Jewelcrafting"] = "Joaillerie"
L["Leatherworking"] = "Travail du cuir"
L["Blacksmithing"] = "Forge"
L["Tailoring"] = "Couture"
L["Skinning"] = "Dépeçage"
L["Mining"] = "Minage"
L["Herbalism"] = "Herboristerie"
L["Enchanting"] = "Enchantement"
L["Warspear"] = "Fer-de-Lance"
L["Stormshield"] = "Bouclier-des-Tempêtes"
L["Shrine2Moons"] = "SanctuaireDeux-Lunes"
L["Shrine7Stars"] = "Sanctuaire7Étoiles"
L["Starting on the first Sunday of each month for one week"] = "Commence pendant une semaine le premier dimanche du mois"
L["Enables the display of icons for a specific capital city"] = "Active l'affichage des symboles pour un capital spécifique"
L["This MapNotes icons shows various icons that are too close to each other together"] = "Ce symbole Mapnotes montre différents symboles qui sont trop proches les uns des autres."
L["Only affects instance passage icons, not path icons such as exit icons or icons on an instance map or the Capitals category / Minimap Capitals"] = "Affecte uniquement l'instance à travers des symboles, pas des symboles de chemin tels que les symboles de départ ou les symboles sur une carte d'instance ou les capitales / capitales mini-cartes"
L["Zones"] = "Zones"
L["Continents"] = "Continents"
--2 Unexplored Areas function
L["Unexplored Areas"] = "Des zones inexplorées"
L["Fog"] = "Brouillard"
L["Mist of the Unexplored"] = "Brume de l'inexploré"
L["Leaves the unexplored areas revealed but adds a slight fog so you can still see which ones you haven't explored yet"] = "Laisse les zones inexplorées révélées mais ajoute un léger brouillard pour que vous puissiez toujours voir ceux que vous n'avez pas encore explorés"
L["Reveals unexplored areas and shows the individual areas of each zone that are actually still unexplored"] = "Révèle les zones inexplorées et montre les zones individuelles de chaque zone qui sont en réalité encore inexplorées"
--3 Info tab
L["Info"] = "información"
L["A description of what this addon does and what functions it offers"] = "Une description de ce que fait cet addon et des fonctions qu'elle offre"
L["A collection of various icons on various maps from previous expansions up to Dragonflight"] = "Une collection de différents symboles sur différentes cartes de toutes les extensions"
L["Displays instance entrances, portals, ships, zeppelins, exits, passage, enemy faction and other transport icons"] = "Affiche les instances, les portails, les navires, le zepppeline, les sorties, les passages, les factions ennemies et autres symboles"
L["All icons can be activated or deactivated separately!"] = "Tous les symboles peuvent être activés ou désactivés séparément!"
L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] = "Option de fonction de décalage: vous pouvez utiliser les symboles de mapnotes avec ou sans clic de changement"
L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"] = "Masquer les notes de map! Option: Tous les symboles peuvent être affichés en un seul clic"
L["Normally on a maximized map you cannot use instance icons from Blizzard or other addons that would open the adventure guide. But not for MapNotes! You can use all functions on minimized or maximized maps!"] = "Habituellement, vous ne pouvez pas utiliser Blizzard ou d'autres symboles d'instance d'addons sur une carte maximisée qui ouvrirait le guide d'aventure. Mais pas pour MapNotes! Vous pouvez utiliser toutes les fonctions sur des cartes minimisées ou maximisées!"
L["Worldmap function"] = "Fonction de la carte du monde"
L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] = "Cliquez avec le bouton droit sur un symbole ajoute un Tomtom Wayground (sauf sur Azeroth et Mini Card)"
L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] = "Click gauche sur un symbole d'instance ouvre le donjon correspondant dans le guide d'aventure"
L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] = "Azeroth / Carte du continent: clic gauche sur un symbole de transport, la carte ouvre où le symbole est"
L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"] = "Carte de zone: clic gauche sur un symbole de transport, la carte s'ouvre, à partir de la cible du symbole"
L["Example zone map: => Orgrimmar. Left-click on this icon opens the map of Orgrimmar"] = "Exemple de carte de zone: '=> Orgrimmar' clic gauche sur ce symbole, la carte d'Orgrimmar s'ouvre"
L["Example Azeroth/continent map: 'Jade Forest Portal => Orgrimmar' Left-click on this symbol opens the map of the Jade Forest. So you can see where you need to go to get to the portal"] = "Exemple Azeroth / Continent Carte: 'Jadewald Portal => Orgrimmar' Click gauche sur le symbole, ouvre la carte de la forêt de jade. Pour que vous voyiez où vous devez aller pour vous rendre au portail"
L["Maximized Map function"] = "Fonction de carte maximisée"
L["After the adventure guide is opened using a MapNote instance icon and you then switch to the dungeon map using the 'Show map' option in the adventure guide, the map is shown reduced in size so that you can move with the character within the instance and see where you have to go. This minimized map feature ends when you close the map or once! Press the “World map on/off” button (which you have set under 'ESC - Keyboard assignment - Interface function'), whereupon the map will be maximized"] = "Après l'ouverture du leader de l'aventure par un symbole d'instance, puis est passé à la carte de donjon dans le guide d'aventure à travers l'option `` Afficher la carte '', la carte est affichée en réduction afin que vous puissiez vous déplacer avec le personnage dans l'instance et voir où vous devez aller. Cette fonction de carte minimisée se termine lorsque vous fermez la carte ou une fois! Appuyez sur le bouton 'World Map On / Off' (que vous avez défini sous «ESC - Disposition du clavier - InterfaceFunfunction»), après quoi la carte est maximisée"
L["Minimap button function"] = "Mini-garden fonction"
L["Left-click opens or close the MapNote setting menu"] = "Gauche -click ouvre ou ferme le menu de paramètre MapNote"
L["Right-click opens or close the HandyNote setting menu"] = "Droite-Clicking ouvre ou ferme le menu de réglage Sysine du téléphone portable"
L["Shift+Right-click hide the minimap button"] = "Shift +-Click, cachez le mini-bouton de jardin"
L["Chat commands"] = "Commandes de chat"
--4 General tab
L["Description"] = "Description"
L["Position of the real Instance Entrance"] = "Position de l'entrée de l'instance réelle"
L["Way to the Instance Entrance"] = "Chemin vers l'entrée d'instance"
L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] = "Désactive également tous les symboles d'instance de Blizzard sur la carte de zone. Cependant, ceux-ci peuvent être réactivés sur la carte en haut des entrées de donjon Lupe «Filtre de carte». Une re-facalivation et l'activation des notes de map vs. Blizzard, désactive à nouveau les symboles d'instance sur la carte de zone"
L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] = "Certains symboles de Blizzard cachés (par exemple les symboles de capitales de la Horde / Alliance / Symboles de voyage neutres ou généraux sur la carte) et les remplace par des symboles Mapnotes presque identiques qui offrent des informations et des fonctions supplémentaires"
L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"] = "Supprime les symboles de blizzard uniquement lorsque les symboles de mapotes et les symboles de Blizzard se chevauchent, ce qui signifie que l'infiltration et la fonction des symboles mapNote peuvent être utilisées à nouveau sur les points de chevauchement"
L["If the map is open, after enabling or disabling this option, the map must be reopened once for the changes to display correctly"] = "Si la carte est ouverte, la carte doit être ouverte à nouveau après l'activation ou la désactivation de cette option afin que les modifications soient affichées correctement"
L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"] = "Un clic gauche sur une icône de cette carte ouvre l'instance correspondante dans le guide d'aventure ou la carte dans laquelle se trouve l'icône du portail, du navire, du zeppelin ou du transport spécial"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "Si vous appuyez sur l'un de ces symboles sur une carte avec le bouton gauche de la souris, le guide d'aventure associé ou la carte de la cible s'ouvre"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "Si vous cliquez sur un symbole multiple avec le bouton de la souris gauche, la carte sur laquelle se trouvent les donjons sera ouverte"
L["At the same time, all icons representing additional instance inputs are removed"] = "Dans le même temps, toutes les icônes représentant des entrées d'instance supplémentaires sont supprimées"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "Changez tout à travers des symboles sur toutes les cartes en donjon, raid ou plusieurs symboles. De plus, l'option de passage est désactivée partout et les symboles des raids, donjons ou multiples respectifs sont ajoutés (la carte de donjon reste inchangée de tout cela)"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "Affichez différentes icônes sur différentes cartes. Toutes les icônes sont cliquables (sauf sur la mini-carte) et ont une fonction Les icônes de carte fonctionnent avec ou sans la touche Maj. Changez simplement la fonction Maj !"
L["Generally"] = "En général"
L["General"] = "Générale"
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Paramètres généraux qui s'appliquent simultanément à la carte Azeroth / Continent / Donjon"
L["General settings / Additional functions"] = "Paramètres généraux / Fonctions supplémentaires"
L["Shift function!"] = "Fonction Shift!"
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."] = "Lorsque cette option est activée, vous devez appuyer sur Shift avant de cliquer avec le bouton gauche ou droit pour interagir avec les icônes MapNotes. Mais cela présente un avantage car il y a tellement d'icônes dans le jeu, y compris celles provenant d'autres extensions, que vous ne cliquez donc pas accidentellement sur un et modifiez la carte, ou créez par erreur un point TomTom."
L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"] = "Vous devez toujours appuyer sur le bouton Shift + Mouse en même temps pour interagir avec les symboles MapNotes"
L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"] = "Vous pouvez désormais interagir avec les symboles MapNotes sans avoir à appuyer sur le bouton Shift + Mouse en même temps"
L["Settings apply to the zone map and the mini map at the same time"] = "Les paramètres s'appliquent à la carte de zone et à la mini-carte en même temps"
L["symbol size"] = "taille du symbole"
L["Changes the size of the icons"] = "Modifie la taille des icônes"
L["symbol visibility"] = "visibilité des symboles"
L["Changes the visibility of the icons"] = "Modifie la visibilité des icônes"
L["hide minimap button"] = "masquer le bouton de la mini-carte"
L["Hide the MapNotes button on the minimap"] = "Masquer le bouton MapNotes sur la mini carte"
L["hide worldmap button"] = "Masquer le bouton de la carte du monde"
L["Hide the MapNotes button on the worldmap"] = "Masquer le bouton MapNotes sur la carte du monde"
L["hide MapNotes!"] = "masquer MapNotes!"
L["-> Hide all MapNotes icons <-"] = "-> Masquer toutes les icônes MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Désactivez MapNotes, toutes les icônes seront masquées sur chaque carte et toutes les catégories seront désactivées"
L["Adventure guide"] = "Guide d'aventure"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Un clic gauche sur un raid MapNotes (vert), un donjon (bleu) ou une icône multiple (vert et bleu) sur la carte ouvre la carte du donjon ou du raid correspondant dans le Guide d'aventure (la carte ne doit pas être ouverte en plein écran)"
L["TomTom waypoints"] = "Points de cheminement TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Maj+clic droit sur un raid, un donjon, un symbole multiple, un portail, un navire, un zeppelin, un passage ou une sortie de MapNotes sur la carte du continent ou du donjon crée un waypoint TomTom jusqu'à ce point (mais le module complémentaire TomTom doit être installé pour cela )"
L["extra information"] = "informations supplémentaires"
L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"] = "Affiche des informations supplémentaires pour les donjons ou les raids. Par exemple, le nombre de boss déjà tués"
L["gray single"] = "Gris individuel"
L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"] = "Seuls les points individuels colorés des donjons et des raids attribués en gris (si vous avez un ID)"
L["gray all"] = "Tout gris"
L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"] = "Color tout le monde! Donjons et raids attribués Gray également plusieurs points (si vous avez un ID)"
L["enemy faction"] = "faction ennemie"
L["Shows enemy faction (horde/alliance) icons"] = "Affiche les icônes de faction ennemie (horde/alliance)"
L["chat message"] = "Messages de chat" 
L["Disables MapNotes status chat messages excluding core information"] = "NOUVELLES DE CHAT DES MAPNOTES DEACTIVE"
L["Shows special transport icons like"] = "Montre des icônes de transport spéciales comme"
L["Combines several different grouped symbols that lie on one point, thus showing all possible transport/instance symbols that are located here instead of just one of several possible ones"] = "Combine plusieurs symboles groupés différents qui se trouvent sur un point, montrant ainsi tous les symboles de transport / instance possibles qui sont situés ici au lieu de l'un des nombreux possibles"
L["Left-clicking on one of these symbols on the map opens the corresponding map, which contains all of the points listed by the symbol on the map"] = "Un clic gauche sur l'un de ces symboles sur la carte ouvre la carte correspondante, qui contient tous les points répertoriés par le symbole sur la carte"
L["Informations"] = "Informations"
L["Chat commands:"] = "Commandes de discussion :"
L["to show MapNotes info in chat: /mn, /MN"] = "pour afficher les informations MapNotes dans le chat : /mn, /MN"
L["to open MapNotes menu: /mno, /MNO"] = "pour ouvrir le menu MapNotes : /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "pour fermer le menu MapNotes : /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "pour afficher le bouton de la mini-carte : /mnb ou /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "pour masquer le bouton de la mini-carte : /mnbh ou /MNBH"
--5 Tab specific
L["Left-clicking on a symbol on this map type opens the corresponding map in which the symbol is located"] = "Click gauche sur un symbole sur ce type de carte ouvre la carte correspondante dans laquelle le symbole est situé"
L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"] = "Certaines icônes d'instance ne peuvent pas être cachées car elles ont été créées par Blizzard lui-même et non par MapNotes"
L["Azeroth map"] = "Carte d'Azeroth"
L["Continent map"] = "Carte des continents"
L["Icon size 2.0 would be the default size of Blizzard's own instance icons on the zone map"] = "La taille de l'icône 2.0 serait la taille par défaut des propres icônes d'instance de Blizzard sur la carte de la zone"
L["Zone map"] = "Carte de zone"
L["Dungeon map"] =  "Carte du donjon" 
--6 Map Tabs together
L["Instance Entrance"] = "Entrée d'instance"
L["switches weekly between"] = "commutations chaque semaine entre"
L["Activate icons"] = "Activer les icônes"
L["Show individual icons"] = "Afficher les icônes individuelles"
L["Exits"] = "Sorties"
L["Raids"] = "Raids"
L["Dungeons"] = "Donjons"
L["Passages"] = "Passage"
L["Multiple"] = "Plusieurs"
L["Portals"] = "Portails"
L["Zeppelins"] = "Zeppelin"
L["Ships"] = "Navires"
L["Transport"] = "Transport"
L["Special"] = "Spéciale"
L["Ogre Waygate"] = "Porte de passage de l'Ogre"
L["Old Instances"] = "Anciens cas"
L["Show icons of passage on this map"] = "Afficher les icônes de passage sur cette carte"
L["Show icons of raids on this map"] = "Afficher les icônes des raids sur cette carte"
L["Show icons of dungeons on this map"] = "Afficher les icônes des donjons sur cette carte"
L["Show icons of multiple on this map"] = "Afficher plusieurs icônes sur cette carte"
L["Show icons of portals on this map"] = "Afficher les icônes des portails sur cette carte"
L["Show icons of zeppelins on this map"] = "Afficher les icônes des zeppelins sur cette carte"
L["Show icons of ships on this map"] = "Afficher les icônes des navires sur cette carte"
L["Show all MapNotes for a specific map"] = "Afficher toutes les MapNotes pour une carte spécifique"
L["Show icons of MapNotes dungeon exit on this map"] = "Afficher les icônes de sortie du donjon MapNotes sur cette carte"
L["Enables the display of all possible icons on this map"] = "Permet l'affichage de toutes les icônes possibles sur cette carte"
L["Show icons of passage to raids and dungeons on this map"] = "Afficher les icônes de passage vers les raids et donjons sur cette carte"
L["Show Ogre Waygate icons from Garrison on this map"] = "Afficher les icônes Ogre Waygate de Garrison sur cette carte"
L["Activates the display of all possible icons on this map"] = "Active l'affichage de toutes les icônes possibles sur cette carte"
L["Show icons of multiple (dungeons,raids) on this map"] = "Afficher les icônes de plusieurs (donjons, raids) sur cette carte"
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires d'Outland MapNotes sur cette carte"
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires Draenor MapNotes sur cette carte"
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires de Shadowlands MapNotes sur cette carte"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires Kalimdor MapNotes sur cette carte"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires de Eastern Kingdom MapNotes sur cette carte"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires Northrend MapNotes sur cette carte"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires Pandaria MapNotes sur cette carte"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires Zandalar MapNotes sur cette carte"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires de Kul Tiras MapNotes sur cette carte"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires de Broken Isles MapNotes sur cette carte"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires Dragon Isles MapNotes sur cette carte"
L["Show all Khaz Algar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Afficher toutes les icônes des donjons, raids, portails, zeppelins et navires de Khaz Algar MapNotes sur cette carte"
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "Certaines icônes peuvent être affichées ou non. Si l'option (Activer les icônes) a été activée dans cette catégorie"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Affichez les versions vanille des donjons et des raids tels que Naxxramas, Scholomance ou le Monastère Écarlate, qui nécessitent des succès ou d'autres choses"
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "Les symboles individuels qui sont trop proches des autres symboles de cette carte ne sont pas placés à 100% précisément sur cette carte! Pour des coordonnées plus détaillées, veuillez utiliser les points sur la carte de zone"
--7 Maps
L["Kalimdor"] = "Kalimdor"
L["Eastern Kingdom"] = "Royaume de l'Est"
L["Outland"] = "Outreterre"
L["Northrend"] = "Norfendre"
L["Pandaria"] = "Pandarie"
L["Draenor"] = "Draenor"
L["Broken Isles"] = "Îles Brisées"
L["Zandalar"] = "Zandalar"
L["Kul Tiras"] = "Koul Tiras"
L["Shadowlands"] = "Terres de l'Ombre"
L["Dragon Isles"] = "Îles du Dragon"
--8 Core specific
L["Shift function"] = "Fonction Shift"
L["-> MiniMapButton <-"] = "-> MiniMapButton <-"
L["-> WorldMapButton <-"] = "-> Bouton de carte mondiale <-"
L["MapNotes menu window"] = "Fenêtre du menu MapNotes"
L["All set icons have been restored"] = "Toutes les icônes définies ont été restaurées"
L["All MapNotes icons have been hidden"] = "Toutes les icônes MapNotes ont été masquées"
L["is activated"] = "est activé"
L["is deactivated"] = "est désactivé"
L["are shown"] = "sont indiqués"
L["are hidden"] = "sont cachés"
L["Left-click => Open/Close"] = "Clic gauche => Ouvrir/Fermer"
L["Right-click => Open/Close"] = "Clic droit => Ouvrir/Fermer"
L["Shift + Right-click => hide"] = "Maj + clic droit => masquer"
L["Middle-Mouse-Button => Open/Close"] = "Bouton de la souris du milieu => Ouvrir / fermer"
--9 transport
L["Ever-Shifting Mirror"] = "Miroir changeant"
L["icons"] = "Icônes"
L["Exit"] = "Sortie"
L["Entrance"] = "Entrée"
L["Passage"] = "Passage"
L["Portal"] = "Portail"
L["Ship"] = "Bateau"
L["Zeppelin"] = "zepelín"
L["Portalroom"] = "Salle du portail"
L["The Dark Portal"] = "Le portail des ténèbres"
L["Captain Krooz"] = "Capitaine Krooz"
L["Thrallmar Mage"] = "Mage de Thrallmar"
L["Honor Hold Mage"] = "Mage du bastion de l'Honneur"
L["Use the Old Keyring"] = "Utilisez le vieux porte-clés"
L["Travel"] = "Voyage"
L["Teleporter"] = "Téléporteur"
L["Old Keyring"] = "Vieux porte-clés"
L["Old Version"] = "Ancienne version"
L["Secret Portal"] = "Portail secret"
L["Secret Entrance"] = "Entrée secrète"
L["Ogre Waygate to Garrison"] = "Ogre Waygate vers la garnison"
L["in the basement"] = "au sous-sol"
L["(on the tower)"] = "(sur la tour)"
L["(inside portal chamber)"] = "(à l'intérieur de la chambre du portail)"
L["(inside building)"] = "(à l'intérieur du bâtiment)"
L["talk to"] = "parler à"
--10 places
L["Telogrus Rift"] = "Faille de Telogrus"
L["Sholazar Basin"] = "Bassin de Sholazar"
L["Un'Goro Crater"] = "Cratère d'Un'Goro"
L["Auberdine"] = "Auberdine"
L["Ratchet"] = "Rochet"
L["Theramore Isle"] = "Île Theramore"
L["Dire Maul"] = "Hache-tripes"
L["Blackfathom Deeps"] = "Profondeurs de Brassenoire"
L["Stormwind"] = "Hurlevent"
L["Shadowfang Keep"] = "Donjon d’Ombrecroc"
L["Undercity"] = "Undercity"
L["Rut'theran"] = "Rut'theran"
L["Azuremyst Isle"] = "Île de Brume-Azur"
L["Bel'ameth, Amirdrassil"] = "Bel'ameth, Amirdrassil"
L["Ruins of Gilneas"] = "Ruines de Gilnéas"
L["Darnassus"] = "Darnassus"
L["Teldrassil"] = "Teldrassil"
L["Graveyard"] = "Cimetière"
L["Library"] = "Bibliothèque"
L["Cathedral"] = "Cathédrale"
L["Armory"] = "Arsenal"
L["Ashran"] = "Ashran"
L["The Timeways"] = "Les voies temporelles"
L["Vol'mar"] = "Vol'mar"
L["Zuldazar"] = "Zuldazar"
L["Thunder Bluff"] = "Tonnerre Bluff"
L["Silvermoon City"] = "La ville de Lune d'Argent"
L["Boralus, Tiragarde Sound"] = "Boralus, son de Tiragarde"
L["Valdrakken"] = "Valdrakken"
L["Badlands"] = "Badlands"
L["Oribos"] = "Oribos"
L["Azsuna"] = "Azsuna"
L["Uldum"] = "Uldum"
L["Dazar'alor"] = "Dazar'alor"
L["Shattrath City"] = "La ville de Shattrath"
L["Echo Isles, Durotar"] = "Îles Écho, Durotar"
L["Silithus"] = "Silithus"
L["Nazjatar"] = "Nazjatar"
L["Emerald Dream"] = "Rêve d'émeraude"
L["Thunder Bluff"] = "Tonnerre Bluff"
L["Howling Fjord"] = "Fjord Hurlant"
L["Ruins of Lordaeron"] = "Ruines de Lordaeron"
L["Isle of Thunder"] = "L'île du Tonnerre"
L["Twilight Highlands"] = "Hautes Terres du Crépuscule"
L["Vashj'ir"] = "Vashj'ir"
L["The Waking Shores, Dragon Isles"] = "Les rivages éveillés, îles du dragon"
L["Shado-Pan Garrison, Townlong Steppes"] = "Garrison Shado-Pan, Steppes de Townlong"
L["Grom'gol, Stranglethorn Vale"] = "Grom'gol, Vallée de Strangleronce"
L["Exodar"] = "Exode"
L["Jade Forest"] = "Forêt de jade"
L["Drustvar"] = "Drusvar"
L["Gorgrond"] = "Gorgrond"
L["Talador"] = "Talador"
L["Nagrand"] = "Nagrand"
L["Frostfire Ridge"] = "Crête de Givrefeu"
L["Tanaan Jungle"] = "Jungle de Tanaan"
L["Shadowmoon Valley"] = "Vallée d’Ombrelune"
L["Spires of Arak"] = "Flèches d’Arak"
L["Netherstorm"] = "Raz-de-Néant"
L["Blade's Edge Mountains"] = "Les Tranchantes"
L["Zangarmarsh"] = "Marécage de Zangar"
L["Terokkar Forest"] = "Forêt de Terokkar"
L["Ohn'ahran Plains"] = "Plaines ohn'ahran"
L["Borean Tundra"] = "Toundra boréenne"
L["Tirisfal Glades"] = "Clairées de Tirisfal"
L["Wintergrasp"] = "Poigne d'hiver"
L["Boralus"] = "Boralus"
L["Stormsong Valley"] = "Vallée Chantorage"
L["Tiragarde Sound"] = "Le son de Tiragarde"
L["Ironforge"] = "Forge de fer"
L["Blasted Lands"] = "Terres foudroyées"
L["Darkshore"] = "Sombrerivage"
L["Durotar"] = "Durotar"
L["Dustwallow Marsh"] = "Marais d'Âprefange"
L["Vale of Eternal Blossoms"] = "Vallée des Fleurs éternelles"
L["Arathi Highlands"] = "Hautes terres d'Arathi"
L["Nazmir"] = "Nazmir"
L["Vol'dun"] = "Vol'dun"
L["Isle of Quel'Danas"] = "Île de Quel'Danas"
L["Hellfire Peninsula"] = "Péninsule des Flammes Infernales"
L["Korthia"] = "Korthia"
L["The Maw"] = "La Gueule"
L["Zereth Mortis"] = "Zereth Mortis"
L["Icecrown"] = "La Couronne de glace"
L["Krasarang Wilds"] = "Étendues sauvages de Krasarang"
L["Townlong Steppes"] = "Steppes de Tanglong"
L["Kun-Lai Summit"] = "Sommet de Kun-Lai"
L["Valley of the Four Winds"] = "Vallée des Quatre vents"
L["Barnard 'The Smasher' Bayswort"] = "Barnard 'The Smasher' Bayswort"
L["Desha Stormwallow"] = "Desha Stormwallow"
L["Daria Smithson"] = "Daria Smithson"
L["Swellthrasher"] = "Swellthrasher"
L["Grok Seahandler"] = "Grok Seahandler"
L["Erul Dawnbrook"] = "Erul Dawnbrook"
L["Dread-Admiral Tattersail"] = "Tattersail de l'Effroi-Amiral"
L["Grand Admiral Jes-Tereth"] = "Grand Amiral Jes-Tereth" 
L["Naxxramas"] = "Naxxramas"
L["Scholomance"] = "Bilan"
L["Temple of Ahn'Qiraj"] = "Ahn'Qiraj"
L["Lorewalker Han"] = "Chroniqueur Han"
L["Archmage Timear"] = "Archimage Timear"
L["Kiku"] = "Kiko"
L["Eppu"] = "Eppu"
L["Ta'elfar"] = "Ta'elfar"
L["Seer Kazal"] = "Voyant Kazal"
L["Auridormi"] = "Auridormi"
L["Registrant"] = "Inscription"
L["Scarlet Instances"] = "Instances rouges écarlates"
L["hide Cosmos map symbols"] = "Masquer les symboles du cosmos"
L["Shows the locations of Raidbrowser applicants for old Raids"] = "Montre la position du registre du navigateur formé à l'abattage pour l'ancien abattoir"
L["Deactivates the display of all possible icons on this map"] = "Désactive l'affichage de toutes les icônes possibles sur cette carte"
--11 Specific
L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] = "Cette entrée d'instance est dans une chronologie différente. Une autre chronologie peut être activée à Zidormi"
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "Affiche les emplacements des raids, des donjons, des portails, des navires et des icônes de zeppelins sur différentes cartes"
L["(Wards of the Dread Citadel - Achievement)"] = "(Quartiers de la Citadelle d'Effroi - Succès)"
L["(Memory of Scholomance - Achievement)"] = "(Mémoire de Scholomance - Réussite)"
L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] = "(il n'apparaît dans le jeu que si votre faction\n occupe actuellement Bashal'Aran)"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Ce portail des Hautes Terres d'Arathi n'est actif que si votre faction occupe actuellement Ar'gorok"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Ce portail de Sombrivage n'est actif que si votre faction occupe actuellement Bashal'Aran"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Le Grand Amiral Jes-Tereth) vous emmènera à Vol'Dun, Nazmir ou Zuldazar"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Dread-Admiral Tattersail) vous emmènera à Drustvar, au détroit de Tiragarde ou à la vallée Chantorage"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Ancien porte-clés \n Vous obtenez la clé écarlate dans la \n [Citrouille remplie de butin] de [Événement de la Sanssaint] ou de la [Hôtel des ventes] \n vous pouvez maintenant activer l'[Ancien porte-clés] ici \n pour activer l'ancien versions de donjon du Monastère Écarlate"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "Apparaît en premier après une certaine progression de l'instance\n ou nécessite une certaine réussite" 
--12 Classic
L["Ulduar"] = "Ulduar"
L["Trial of the Champion"] = "L'épreuve du champion"
L["Trial of the Crusader"] = "L'épreuve du croisé"
L["Azjol-Nerub"] = "Azjol-Nérub"
L["Drak'Tharon Keep"] = "Donjon de Drak'Tharon"
L["Utgarde Pinnacle"] = "Cime d'Utgarde"
L["Utgarde Keep"] = "Donjon d'Utgarde"
L["Magisters' Terrace"] = "Terrasse des Magistères"
L["Karazhan"] = "Karazhan"
L["The Culling of Stratholme"] = "L'Épuration de Stratholme"
L["Old Hillsbrad Foothills"] = "Contreforts de Hautebrande d'antan"
L["The Oculus"] = "L'Oculus"
L["The Ruby Sanctum"] = "Le sanctum Rubis"
L["Black Temple"] = "Temple noir"
L["Auchenai Crypts"] = "Cryptes Auchenaï"
L["Sethekk Halls"] = "Les salles des Sethekk"
L["The Arcatraz"] = "L'Arcatraz"
L["Reforge"] = "Reforger"
--13 The War Within
L["Khaz Algar"] = "Khaz Algar"
L["Dornogal"] = "Dornogal"
L["Catalyst"] = "Catalyst"
L["Merchant for Renown items"] = "Marchand pour les articles renommés"
L["Council of Dornogal"] = "Conseil de Dornogal"
L["The Assembly of the Deeps"] = "Assemblée des profondeurs"
L["Hallowfall Arathi"] = "Arathis de Sainte-Chute"
-- 14
L["Displays zone icons on a specific continent"] = "Affiche les icônes de zone sur un continent spécifique"
L["If you don't see this icon, it's probably in a different phase. \nChange the phase on Zidormi"] = "Si vous ne voyez pas cette icône, c'est probablement dans une phase différente. \nChanger la phase sur Zidormi"
L["The associated settings are regulated here. \nRegardless of whether it is the display of an icon, an entire icon group or the display of the complete icons for the corresponding Continent"] = "Les paramètres associés sont régulés ici.\nQue ce soit l'affichage d'une icône, un groupe d'icônes entier ou l'affichage des icônes complètes pour le continent correspondant"
L["The associated settings are regulated here. \nRegardless of whether it is the display of an icon, an entire icon group or the display of the complete icons for the corresponding Capital"] = "Les paramètres associés sont régulés ici.\nQue ce soit l'affichage d'une icône, un groupe d'icônes entier ou l'affichage des icônes complètes pour le capital correspondant"