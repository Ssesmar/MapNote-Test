local ADDON_NAME, ns = ...

ns.defaults = {
    profile = { -- ns.Addon.db.profile.show (without a point at the end of show)
      
      --FogOfWar
        colorR = 1,
        colorG = 1,
        colorB = 1,
        colorA = 1,
        colorR_Reduce = 0.75,
        colorG_Reduce = 0.75,
        colorB_Reduce = 0.75,
        colorA_Reduce = 0.75,


      --0 General tab
        hideMMB = false,
        showEnemyFaction = true,
        ShiftWorld = false,
        ClassicIcons = false,
        journal = true,
        tomtom = true,
        extraInformation = true,
        assignedgray = true,
        graymultipleID = true,
        noChatMassage = false,


      --1 MiniMap map tab
        minimapScale = 1.5,
        minimapAlpha = 1,
        showMiniMapRaids = true,
        showMiniMapDungeons = true,
        showMiniMapPassage = true,
        showMiniMapMultiple = true,
        showMiniMapPortals = true,
        showMiniMapZeppelins = true,
        showMiniMapShips = true,
        showMiniMapTransport = true,
        showMiniMapOldVanilla = true,
        showMiniMapLFR = true,
        showMiniMapKalimdor = true,
        showMiniMapEasternKingdom = true,
        showMiniMapOutland = true,
        showMiniMapNorthrend = true,
        showMiniMapPandaria = true,
        showMiniMapDraenor = true,
        showMiniMapBrokenIsles = true,
        showMiniMapZandalar = true,
        showMiniMapKulTiras = true,
        showMiniMapShadowlands = true,
        showMiniMapDragonIsles = true,
      

      --2 Zone map tab
        instanceScale = 2,
        instanceAlpha = 1,
        zoneScale = 2,
        zoneAlpha = 1,
        showZoneRaids = true,
        showZoneDungeons = true,
        showZonePassage = true,
        showZoneMultiple = true,
        showZonePortals = true,
        showZoneZeppelins = true,
        showZoneShips = true,
        showZoneTransport = true,
        showZoneOldVanilla = true,
        showZoneLFR = true,
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


      --3 Continent map tab
        continentScale = 1.5,
        continentAlpha = 1,
        showContinentRaids = true,
        showContinentDungeons = true,
        showContinentPassage = true,
        showContinentMultiple = true,
        showContinentPortals = true,
        showContinentZeppelins = true,
        showContinentShips = true,
        showContinentTransport = true,
        showContinentOldVanilla = true,
        showContinentLFR = true,
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


        --4 Azeroth map tab
        azerothScale = 1.5,
        azerothAlpha = 1,
        showAzerothRaids = true,
        showAzerothDungeons = true,
        showAzerothPassage = true,
        showAzerothMultiple = true,
        showAzerothPortals = true,
        showAzerothZeppelins = true,
        showAzerothShips = true,
        showAzerothTransport = true,
        showAzerothOldVanilla = true,
        showAzerothLFR = true,
        showAzerothKalimdor = true,
        showAzerothEasternKingdom = true,
        showAzerothNorthrend = true,
        showAzerothKulTiras = true,
        showAzerothPandaria = true,
        showAzerothBrokenIsles = true,
        showAzerothZandalar = true,
        showAzerothDragonIsles = true,


      --5 Cosmos map tab
        comosScale = 1.5,
        cosmosAlpha = 1,
        showCosmosKalimdor = true,
        showCosmosEasternKingdom = true,
        showCosmosOutland = true,
        showCosmosNorthrend = true,
        showCosmosPandaria = true,
        showCosmosDraenor = true,
        showCosmosBrokenIsles = true,
        showCosmosZandalar = true,
        showCosmosKulTiras = true,
        showCosmosShadowlands = true,
        showCosmosDragonIsles = true,


      --6 Inside Dungeon Map tab
        dungeonScale = 1.5,
        dungeonAlpha = 1,
        showDungeonExit = true,
        showDungeonPassage = true,
        showDungeonPortal = true,
        showDungeonTransport = true,


      --6 Capitals tab
        CapitalsScale = 1,
        CapitalsAlpha = 1,
        showCapitals = true,
        showCapitalsOrgrimmar = true,
        showCapitalsThunderBluff = true,
        showCapitalsSilvermoon = true,
        showCapitalsUndercity = true,
        showCapitalsStormwind = true,
        showCapitalsIronforge = true,
        showCapitalsDarnassus = true,
        showCapitalsExodar = true,
        showCapitalsShattrath = true,
        showCapitalsDalaranNorthrend = true,
        showCapitalsDalaranLegion = true,
        showCapitalsSot2M = true,
        showCapitalsSot7S = true,
        showCapitalsStormshield = true,
        showCapitalsWarspear = true,
        showCapitalsDazarAlor = true,
        showCapitalsBoralus = true,
        showCapitalsOribos = true,
        showCapitalsValdrakken = true,

      --Capital Instances
        CapitalsInstanceScale = 2,
        CapitalsInstanceAlpha = 1,
        showCapitalsRaids = true,
        showCapitalsDungeons = true,
        showCapitalsInstancePassage = true,
        showCapitalsMultiple = true,

      --Capital Transport
        CapitalsTransportScale = 1,
        CapitalsTransportAlpha = 1,
        showCapitalsPortals = true,
        showCapitalsZeppelins = true,
        showCapitalsShips = true,
        showCapitalsTransport = true,
        showCapitalsOldVanilla = true,
        showCapitalsLFR = true,

      -- Capital Professions
        CapitalsProfessionsScale = 1,
        CapitalsProfessionsAlpha = 1,
        showAlchemy = true,
        showEngineer = true,
        showCooking = true,
        showFishing = true,
        showArchaeology = true,
        showMining = true,
        showJewelcrafting = true,
        showBlacksmith = true,
        showLeatherworking = true,
        showSkinning = true,
        showTailoring = true,
        showHerbalism = true,
        showInscription = true,
        showEnchanting = true,

      --Capital General
        CapitalsGeneralScale = 1,
        CapitalsGeneralAlpha = 1,
        showCapitalsMapNotes = true,
        showCapitalsHearthstone = true,
        showCapitalsAuctioneer = true,
        showCapitalsPaths = true,
        showCapitalsBank = true,


      --7 Capitals Minimap
        MinimapCapitalsScale = 1,
        MinimapCapitalsAlpha = 1,
        showMinimapCapitals = true,
        showMinimapCapitalsOrgrimmar = true,
        showMinimapCapitalsThunderBluff = true,
        showMinimapCapitalsSilvermoon = true,
        showMinimapCapitalsUndercity = true,
        showMinimapCapitalsStormwind = true,
        showMinimapCapitalsIronforge = true,
        showMinimapCapitalsDarnassus = true,
        showMinimapCapitalsExodar = true,
        showMinimapCapitalsShattrath = true,
        showMinimapCapitalsDalaranNorthrend = true,
        showMinimapCapitalsDalaranLegion = true,
        showMinimapCapitalsSot2M = true,
        showMinimapCapitalsSot7S = true,
        showMinimapCapitalsStormshield = true,
        showMinimapCapitalsWarspear = true,
        showMinimapCapitalsDazarAlor = true,
        showMinimapCapitalsBoralus = true,
        showMinimapCapitalsOribos = true,
        showMinimapCapitalsValdrakken = true,

      --Capital Minimap Instances
        MinimapCapitalsInstanceScale = 2,
        MinimapCapitalsInstanceAlpha = 1,
        showMinimapCapitalsRaids = true,
        showMinimapCapitalsDungeons = true,
        showMinimapCapitalsInstancePassage = true,
        showMinimapCapitalsMultiple = true,

      --Capital Minimap Transport
        MinimapCapitalsTransportScale = 1,
        MinimapCapitalsTransportAlpha = 1,
        showMinimapCapitalsPortals = true,
        showMinimapCapitalsZeppelins = true,
        showMinimapCapitalsShips = true,
        showMinimapCapitalsTransport = true,
        showMinimapCapitalsOldVanilla = true,
        showMinimapCapitalsLFR = true,

      -- Capital Minimap Professions
        MinimapCapitalsProfessionsScale = 1,
        MinimapCapitalsProfessionsAlpha = 1,
        showMinimapCapitalsAlchemy = true,
        showMinimapCapitalsEngineer = true,
        showMinimapCapitalsCooking = true,
        showMinimapCapitalsFishing = true,
        showMinimapCapitalsArchaeology = true,
        showMinimapCapitalsMining = true,
        showMinimapCapitalsJewelcrafting = true,
        showMinimapCapitalsBlacksmith = true,
        showMinimapCapitalsLeatherworking = true,
        showMinimapCapitalsSkinning = true,
        showMinimapCapitalsTailoring = true,
        showMinimapCapitalsHerbalism = true,
        showMinimapCapitalsInscription = true,
        showMinimapCapitalsEnchanting = true,

      --Capital Minimap General
        MinimapCapitalsGeneralScale = 1,
        MinimapCapitalsGeneralAlpha = 1,   
        showMinimapCapitalsMapNotes = true,     
        showMinimapCapitalsHearthstone = true,
        showMinimapCapitalsAuctioneer = true,
        showMinimapCapitalsPaths = true,
        showMinimapCapitalsBank = true,

        --10 ns.Addon.db.profile.activate.
        activate = {
          HideMapNote = false,
          RemoveBlizzPOIs = true,
          FogOfWar = true,
          FogOfWarAlphaReduce = true,
        --activate tab
          CosmosMap = true, -- activate tab
          Azeroth = true, -- activate tab
          Continent = true, -- activate tab
          ZoneMap = true, -- activate tab
          DungeonMap = true, -- activate tab
          MiniMap = true, -- activate tab
          Capitals = true, -- activate tab
          MinimapCapitals = true, -- activate tab
        --Capitals
          CapitalsEnemyFaction = true,
          CapitalsInstances = true,
          CapitalsTransporting = true,
          CapitalsProfessions = true,
          CapitalsGeneral = true,
        --Capitals Minimap
          MinimapCapitalsEnemyFaction = true,
          MinimapCapitalsInstances = true,
          MinimapCapitalsTransporting = true,
          MinimapCapitalsProfessions = true,
          MinimapCapitalsGeneral = true,

        },
    },
}