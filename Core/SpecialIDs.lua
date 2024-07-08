local ADDON_NAME, ns = ...

ns.AllZoneIDs = ns.KalimdorIDs 
                or ns.EasternKingdomIDs 
                or ns.OutlandIDs 
                or ns.NorthrendIDs 
                or ns.PandariaIDs 
                or ns.BrokenIslesIDs
                or ns.ZandalarIDs 
                or ns.KulTirasIDs 
                or ns.ShadowlandIDs 
                or ns.DragonIsleIDs

ns.CapitalIDs = WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85 or WorldMapFrame:GetMapID() == 90 
                or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111 or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 
                or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 503 
                or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 
                or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161 or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 
                or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 2339
                or WorldMapFrame:GetMapID() == 499 or WorldMapFrame:GetMapID() == 500

ns.KalimdorIDs = WorldMapFrame:GetMapID() == 1 or WorldMapFrame:GetMapID() == 7 or WorldMapFrame:GetMapID() == 10 or WorldMapFrame:GetMapID() == 11 or WorldMapFrame:GetMapID() == 57 or WorldMapFrame:GetMapID() == 62 
                or WorldMapFrame:GetMapID() == 63 or WorldMapFrame:GetMapID() == 64 or WorldMapFrame:GetMapID() == 65 or WorldMapFrame:GetMapID() == 66 or WorldMapFrame:GetMapID() == 67 or WorldMapFrame:GetMapID() == 68 
                or WorldMapFrame:GetMapID() == 69 or WorldMapFrame:GetMapID() == 70 or WorldMapFrame:GetMapID() == 71 or WorldMapFrame:GetMapID() == 74 or WorldMapFrame:GetMapID() == 75 or WorldMapFrame:GetMapID() == 76 
                or WorldMapFrame:GetMapID() == 77 or WorldMapFrame:GetMapID() == 78 or WorldMapFrame:GetMapID() == 80 or WorldMapFrame:GetMapID() == 81 or WorldMapFrame:GetMapID() == 83 or WorldMapFrame:GetMapID() == 97 
                or WorldMapFrame:GetMapID() == 106 or WorldMapFrame:GetMapID() == 199 or WorldMapFrame:GetMapID() == 327 or WorldMapFrame:GetMapID() == 460 or WorldMapFrame:GetMapID() == 461 or WorldMapFrame:GetMapID() == 462 
                or WorldMapFrame:GetMapID() == 468 or WorldMapFrame:GetMapID() == 1527 or WorldMapFrame:GetMapID() == 198 or WorldMapFrame:GetMapID() == 249

ns.EasternKingdomIDs = WorldMapFrame:GetMapID() == 13 or WorldMapFrame:GetMapID() == 14 or WorldMapFrame:GetMapID() == 15 or WorldMapFrame:GetMapID() == 16 or WorldMapFrame:GetMapID() == 17 or WorldMapFrame:GetMapID() == 18 
                or WorldMapFrame:GetMapID() == 19 or WorldMapFrame:GetMapID() == 21 or WorldMapFrame:GetMapID() == 22 or WorldMapFrame:GetMapID() == 23 or WorldMapFrame:GetMapID() == 25 or WorldMapFrame:GetMapID() == 26 
                or WorldMapFrame:GetMapID() == 27 or WorldMapFrame:GetMapID() == 28 or WorldMapFrame:GetMapID() == 30 or WorldMapFrame:GetMapID() == 32 or WorldMapFrame:GetMapID() == 33 or WorldMapFrame:GetMapID() == 34 
                or WorldMapFrame:GetMapID() == 35 or WorldMapFrame:GetMapID() == 36 or WorldMapFrame:GetMapID() == 37 or WorldMapFrame:GetMapID() == 42 or WorldMapFrame:GetMapID() == 47 or WorldMapFrame:GetMapID() == 48 
                or WorldMapFrame:GetMapID() == 49 or WorldMapFrame:GetMapID() == 50 or WorldMapFrame:GetMapID() == 51 or WorldMapFrame:GetMapID() == 52 or WorldMapFrame:GetMapID() == 55 or WorldMapFrame:GetMapID() == 56 
                or WorldMapFrame:GetMapID() == 94 or WorldMapFrame:GetMapID() == 210 or WorldMapFrame:GetMapID() == 224 or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 425 or WorldMapFrame:GetMapID() == 427 
                or WorldMapFrame:GetMapID() == 465 or WorldMapFrame:GetMapID() == 467 or WorldMapFrame:GetMapID() == 469 or WorldMapFrame:GetMapID() == 499 or WorldMapFrame:GetMapID() == 500 or WorldMapFrame:GetMapID() == 2070 
                or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 203 or WorldMapFrame:GetMapID() == 204 or WorldMapFrame:GetMapID() == 205 or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 244 
                or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 201 or WorldMapFrame:GetMapID() == 95 or WorldMapFrame:GetMapID() == 122 or WorldMapFrame:GetMapID() == 217 or WorldMapFrame:GetMapID() == 226

ns.OutlandIDs = WorldMapFrame:GetMapID() == 100 or WorldMapFrame:GetMapID() == 102 or WorldMapFrame:GetMapID() == 104 or WorldMapFrame:GetMapID() == 105 or WorldMapFrame:GetMapID() == 107 or WorldMapFrame:GetMapID() == 108
                or WorldMapFrame:GetMapID() == 109

ns.NorthrendIDs = WorldMapFrame:GetMapID() == 114 or WorldMapFrame:GetMapID() == 115 or WorldMapFrame:GetMapID() == 116 or WorldMapFrame:GetMapID() == 117 or WorldMapFrame:GetMapID() == 118 or WorldMapFrame:GetMapID() == 119
                or WorldMapFrame:GetMapID() == 120 or WorldMapFrame:GetMapID() == 121 or WorldMapFrame:GetMapID() == 123 or WorldMapFrame:GetMapID() == 127 or WorldMapFrame:GetMapID() == 170

ns.PandariaIDs = WorldMapFrame:GetMapID() == 371 or WorldMapFrame:GetMapID() == 376 or WorldMapFrame:GetMapID() == 379 or WorldMapFrame:GetMapID() == 388 or WorldMapFrame:GetMapID() == 390 or WorldMapFrame:GetMapID() == 418
                or WorldMapFrame:GetMapID() == 422 or WorldMapFrame:GetMapID() == 433 or WorldMapFrame:GetMapID() == 434 or WorldMapFrame:GetMapID() == 504 or WorldMapFrame:GetMapID() == 554 or WorldMapFrame:GetMapID() == 1530
                or WorldMapFrame:GetMapID() == 507

ns.DraenorIDs = WorldMapFrame:GetMapID() == 525 or WorldMapFrame:GetMapID() == 534 or WorldMapFrame:GetMapID() == 535 or WorldMapFrame:GetMapID() == 539 or WorldMapFrame:GetMapID() == 542 or WorldMapFrame:GetMapID() == 543
                or WorldMapFrame:GetMapID() == 550 or WorldMapFrame:GetMapID() == 588

ns.BrokenIslesIDs = WorldMapFrame:GetMapID() == 630 or WorldMapFrame:GetMapID() == 634 or WorldMapFrame:GetMapID() == 641 or WorldMapFrame:GetMapID() == 646 or WorldMapFrame:GetMapID() == 650 or WorldMapFrame:GetMapID() == 652
                or WorldMapFrame:GetMapID() == 750 or WorldMapFrame:GetMapID() == 680 or WorldMapFrame:GetMapID() == 830 or WorldMapFrame:GetMapID() == 882 or WorldMapFrame:GetMapID() == 885 or WorldMapFrame:GetMapID() == 905
                or WorldMapFrame:GetMapID() == 941 or WorldMapFrame:GetMapID() == 790

ns.ZandalarIDs = WorldMapFrame:GetMapID() == 862 or WorldMapFrame:GetMapID() == 863 or WorldMapFrame:GetMapID() == 864 or WorldMapFrame:GetMapID() == 1355 or WorldMapFrame:GetMapID() == 1528

ns.KulTirasIDs = WorldMapFrame:GetMapID() == 895 or WorldMapFrame:GetMapID() == 896 or WorldMapFrame:GetMapID() == 942 or WorldMapFrame:GetMapID() == 1462 or WorldMapFrame:GetMapID() == 1169

ns.ShadowlandIDs = WorldMapFrame:GetMapID() == 1525 or WorldMapFrame:GetMapID() == 1533 or WorldMapFrame:GetMapID() == 1536 or WorldMapFrame:GetMapID() == 1543 or WorldMapFrame:GetMapID() == 1565 or WorldMapFrame:GetMapID() == 1961
                or WorldMapFrame:GetMapID() == 1970 or WorldMapFrame:GetMapID() == 2016

ns.DragonIsleIDs = WorldMapFrame:GetMapID() == 2022 or WorldMapFrame:GetMapID() == 2023 or WorldMapFrame:GetMapID() == 2024 or WorldMapFrame:GetMapID() == 2025 or WorldMapFrame:GetMapID() == 2026 or WorldMapFrame:GetMapID() == 2133
                or WorldMapFrame:GetMapID() == 2151 or WorldMapFrame:GetMapID() == 2200 or WorldMapFrame:GetMapID() == 2239 or WorldMapFrame:GetMapID() == 2266

ns.ZoneIDs = WorldMapFrame:GetMapID() == 750 or WorldMapFrame:GetMapID() == 652