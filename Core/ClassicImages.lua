local ADDON_NAME, ns = ...

function ns.ChangeToClassicImages()

    if ns.Addon.db.profile.activate.ClassicImages then 
        -- Transport Icons
        ns.icons["Portal"] = ns.icons["PortalOld"]
        ns.icons["APortal"] = ns.icons["APortalOld"]
        ns.icons["HPortal"] = ns.icons["HPortalOld"]
        ns.icons["APortalS"] = ns.icons["APortalSOld"]
        ns.icons["HPortalS"] = ns.icons["HPortalSOld"]
        ns.icons["PassagePortal"] = ns.icons["PassagePortalOld"]
        ns.icons["APassagePortal"] = ns.icons["APassagePortalOld"]
        ns.icons["HPassagePortal"] = ns.icons["HPassagePortalOld"]
    else ns.Addon.db.profile.activate.ClassicImages = false
        ns.icons["Portal"] = ns.icons["PortalNew"]
        ns.icons["APortal"] = ns.icons["APortalNew"]
        ns.icons["HPortal"] = ns.icons["HPortalNew"]
        ns.icons["APortalS"] = ns.icons["APortalSNew"]
        ns.icons["HPortalS"] = ns.icons["HPortalSNew"]
        ns.icons["PassagePortal"] = ns.icons["PassagePortalNew"]
        ns.icons["APassagePortal"] = ns.icons["APassagePortalNew"]
        ns.icons["HPassagePortal"] = ns.icons["HPassagePortalNew"]
    end

end