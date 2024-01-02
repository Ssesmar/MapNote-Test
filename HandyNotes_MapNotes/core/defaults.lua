local ADDON_NAME, ns = ...


ns.defaults = {
    profile = {
        show = {
        Azeroth = true,
        Continent = true,
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
  
      --1
        ShiftWorld = false,
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
        showAzerothRaid = true,
        showAzerothDungeon = true,
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
  
      --4 Inside Dungeon Map
        showDungeonMap = true,
        showDungeonExit = true,
        showDungeonPassage = true,
        showDungeonPortal = true,
        showDungeonTransport = true,
    },
}