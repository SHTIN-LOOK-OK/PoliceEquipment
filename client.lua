------------------------------------
---- Police ammunition by SHTIN ----
------------------------------------
---- Made for FiveM communities ----
------------------------------------


 -- Config LSSD --
 
RegisterCommand("lssd", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You put on your gear.")
    SetPedComponentVariation(GetPlayerPed(-1), 9, 12, 2, 0)
end, false)

RegisterCommand("relssd", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You take off your gear.")
    SetPedComponentVariation(GetPlayerPed(-1), 9, 14, 0, 0)
end, false)

 -- Config BCSO --
 
RegisterCommand("bcso", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You put on your gear.")
    SetPedComponentVariation(GetPlayerPed(-1), 9, 12, 1, 0)
end, false)

RegisterCommand("rebcso", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You take off your gear.")
    SetPedComponentVariation(GetPlayerPed(-1), 9, 14, 0, 0)
end, false)

 -- Config LSPD --
 
RegisterCommand("lspd", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You put on your gear.")
    SetPedComponentVariation(GetPlayerPed(-1), 9, 12, 3, 0)
end, false)

RegisterCommand("relspd", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You take off your gear.")
    SetPedComponentVariation(GetPlayerPed(-1), 9, 13, 0, 0)
end, false)

 -- Config SAHP --
 
RegisterCommand("sahp", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You put on your gear.")
    SetPedComponentVariation(GetPlayerPed(-1), 9, 12, 0, 0)
end, false)

RegisterCommand("resahp", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You take off your gear.")
    SetPedComponentVariation(GetPlayerPed(-1), 9, 13, 0, 0)
end, false)

 -- Traffic officer --
 
RegisterCommand("traff", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You put on a reflective vest.")
    SetPedComponentVariation(GetPlayerPed(-1), 9, 10, 4, 0)
end, false)

RegisterCommand("retraff", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You removed a reflective vest.")
    SetPedComponentVariation(GetPlayerPed(-1), 9, 13, 0, 0)
end, false)


 -- Config medical gloves --
 
RegisterCommand("medic", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You put on medical gloves.")
    SetPedComponentVariation(GetPlayerPed(-1), 3, 85, 0, 0)
end, false)

RegisterCommand("remedic", function(args, string)
    local red = GetPlayerPed(PlayerId())
	msg("You removed medical gloves.")
    SetPedComponentVariation(GetPlayerPed(-1), 3, 0, 0, 0)
end, false)

 -- Weapons --
 
RegisterCommand("duty", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("You were given a weapon.")
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    GiveWeaponToPed(ped, GetHashKey("WEAPON_NIGHTSTICK"), 50, false, false)
    GiveWeaponToPed(ped, GetHashKey("WEAPON_PUMPSHOTGUN"), 20, false, false)
	GiveWeaponToPed(ped, GetHashKey("WEAPON_CARBINERIFLE"), 90, false, false)
    GiveWeaponToPed(ped, GetHashKey("WEAPON_COMBATPISTOL"), 36, false, false)
    GiveWeaponToPed(ped, GetHashKey("WEAPON_STUNGUN"), 1, false, false)
	GiveWeaponToPed(ped, GetHashKey("WEAPON_FLASHLIGHT"), 1, false, false)
end, false)

RegisterCommand("reduty", function(args, string)
    local red = GetPlayerPed(PlayerId())
	msg("You surrendered weapons.")
	RemoveAllPedWeapons(GetPlayerPed(-1), true)
end, false)

 -- Remove ALL --

RegisterCommand("clean", function(args, string)
    local red = GetPlayerPed(PlayerId())
	msg("You removed all the gear.")
	RemoveAllPedWeapons(GetPlayerPed(-1), true)
    SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 0, 0)
	SetPedComponentVariation(GetPlayerPed(-1), 3, 0, 0, 0)
end, false)

function msg(text)
    TriggerEvent("chatMessage", "OUTFIT", {255, 4, 1}, text)
end