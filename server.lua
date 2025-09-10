ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('checkSpritze', function(source, cb, item)
    local xPlayer = ESX.GetPlayerFromId(source)
    cb(xPlayer.getInventoryItem(item).count > 0)
end)

RegisterNetEvent('useSpritze')
AddEventHandler('useSpritze', function(targetId)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('spritze').count > 0 then
        xPlayer.removeInventoryItem('spritze', 1)
        TriggerClientEvent('receiveInjection', targetId)
    end
end)
