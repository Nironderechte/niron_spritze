ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('receiveInjection')
AddEventHandler('receiveInjection', function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, true)
    SetTimecycleModifier("spectator5")
    SetPedMovementClipset(playerPed, "MOVE_M@DRUNK@SLIGHTLYDRUNK", true)
    SetPedIsDrunk(playerPed, true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0)
    DisablePlayerFiring(PlayerId(), true)
    local newHealth = GetEntityHealth(playerPed) - 50
    if newHealth < 50 then newHealth = 50 end
    SetEntityHealth(playerPed, newHealth)
    Citizen.SetTimeout(60000, function()
        ClearTimecycleModifier()
        ResetPedMovementClipset(playerPed, 0)
        SetPedIsDrunk(playerPed, false)
        DisablePlayerFiring(PlayerId(), false)
        StopGameplayCamShaking(true)
        ESX.ShowNotification("Die Wirkung der Spritze ist vorbei.")
    end)
end)

function injectNearestPlayer()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    if closestPlayer ~= -1 and closestDistance <= 3.0 then
        TriggerServerEvent('useSpritze', GetPlayerServerId(closestPlayer))
        ESX.ShowNotification("Du hast die Spritze benutzt!")
    else
        ESX.ShowNotification("Kein Spieler in der Nähe!")
    end
end

RegisterNetEvent('injectNearestPlayer')
AddEventHandler('injectNearestPlayer', function()
    injectNearestPlayer()
end)
