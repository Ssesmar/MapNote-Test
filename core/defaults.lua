local ADDON_NAME, ns = ...


ns.defaults = {
    profile = {
      --1
        ShiftWorld = false,
        ClassicIcons = false,
        mapnoteScale = 1.2,
        mapnoteAlpha = 1,    
        hideAddon = false,
        hideMMB = false,
        journal = true,
        tomtom = true,
        assignedID = true,
        assignedgray = true,
        graymultipleID = true,
        showEnemyFaction = true,
      
      --2 Azeroth map
        showAzeroth = true,
        --azerothScale = 1.2,
        --azerothAlpha = 1,
        showAzerothRaids = true,
        showAzerothDungeons = true,
        showAzerothPassage = true,
        showAzerothMultiple = true,
        showAzerothPortals = true,
        showAzerothZeppelins = true,
        showAzerothShips = true,
        showAzerothTransport = true,
        showAzerothOldVanilla = true,
        showAzerothKalimdor = true,
        showAzerothEasternKingdom = true,
        showAzerothNorthrend = true,
        showAzerothKulTiras = true,
        showAzerothPandaria = true,
        showAzerothBrokenIsles = true,
        showAzerothZandalar = true,
        showAzerothDragonIsles = true,
  
      --3 Continent map
        showContinent = true,
        --continentScale = 1.2,
        --continentAlpha = 1,
        showContinentRaids = true,
        showContinentDungeons = true,
        showContinentPassage = true,
        showContinentMultiple = true,
        showContinentPortals = true,
        showContinentZeppelins = true,
        showContinentShips = true,
        showContinentTransport = true,
        showContinentOldVanilla = true,
        showContinentOgreWaygates = true,
        showContinentKalimdor = true,
        showContinentEasternKingdom = true,
        showContinentOutland = true,
        showContinentNorthrend = true,
        showContinentPandaria = true,
        showContinentDraenor = true,
        showContinentBrokenIsles = true,
        showContinentZandalar = true,
        showContinentKulTiras = true,
        showContinentShadowlands = true,
        showContinentDragonIsles = true,
  
      --3 Zone map
        showZoneMap = true,
        --zoneScale = 1.2,
        --zoneAlpha = 1,
        showZoneRaids = true,
        showZoneDungeons = true,
        showZonePassage = true,
        showZoneMultiple = true,
        showZonePortals = true,
        showZoneZeppelins = true,
        showZoneShips = true,
        showZoneTransport = true,
        showZoneOldVanilla = true,
        showZoneOgreWaygates = true,
        showZoneKalimdor = true,
        showZoneEasternKingdom = true,
        showZoneOutland = true,
        showZoneNorthrend = true,
        showZonePandaria = true,
        showZoneDraenor = true,
        showZoneBrokenIsles = true,
        showZoneZandalar = true,
        showZoneKulTiras = true,
        showZoneShadowlands = true,
        showZoneDragonIsles = true,
        
      --5 Inside Dungeon Map
        showDungeonMap = true,
        --dungeonScale = 1.2,
        --dungeonAlpha = 1,
        showDungeonExit = true,
        showDungeonPassage = true,
        showDungeonPortal = true,
        showDungeonTransport = true,

      --0 show.show commands
        show = {
          Azeroth = true,
          Continent = true,
          ZoneMap = true,
          Dungeon = true,
          DungeonMap = true,
          EnemyFaction = true,
          OldVanilla = true,
          Raid = true,
          Multiple = true,
          Gray = true,
          Portal = true,
          HPortal = true,
          APortal = true,
          Zeppelin = true,
          Ship = true,
          HShip = true,
          AShip = true,
          },
    },
}