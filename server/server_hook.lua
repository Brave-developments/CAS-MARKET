if CAS.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
else
    ESX = exports["es_extended"]:getSharedObject()
end


GetPlayer = function(playerId)
    if CAS.Framework == "qb" then
        return QBCore.Functions.GetPlayer(playerId)
    else
        return ESX.GetPlayerFromId(playerId)
    end
end

AddItem = function(player, itemName, count)
    if CAS.Inventory == 'ox_inventory' then
        return exports['ox_inventory']:AddItem(player, itemName, count)
    elseif CAS.Inventory == 'qb-inventory' then
        return exports['qb-inventory']:AddItem(player, itemName, count)
    elseif CAS.Inventory == 'ps-inventory' then
        return exports['ps-inventory']:AddItem(player, itemName, count)
    elseif CAS.Inventory == 'DEFAULT' then
        local Player = QBCore.Functions.GetPlayer(player)
        if Player then
            Player.Functions.AddItem(itemName, count)
            TriggerClientEvent('inventory:client:ItemBox', player, QBCore.Shared.Items[itemName], 'add', count)
            return true
        else
            print("Error: Player not found (AddItem) for default inventory")
            return false
        end
    else
        local xPlayer = GetPlayer(player)
        if not xPlayer then
            print("Error: Player not found (AddItem)")
            return false
        end

        if CAS.Framework == "qb" then
            return xPlayer.Functions.AddItem(itemName, count)
        else
            return xPlayer.addInventoryItem(itemName, count)
        end
    end
end



Notify = function(source, text)
    if CAS.Framework == "qb" then
        return TriggerClientEvent("QBCore:Notify",source, text)
    else
        local xPlayer = GetPlayer(source)
        return xPlayer.showNotification(text)
    end
end

RemoveMoney = function(source, method, price)
    local player = GetPlayer(source)
    if CAS.Framework == "qb" then
        if player.Functions.GetMoney(method) >= price then
            player.Functions.RemoveMoney(method, price)
            return true
        else
            Notify(source, "You don't have enough money.")
        end
    else
        if player.getAccount(method).money >= price then
            player.removeAccountMoney(method, price)
            return true
        else
            Notify(source, "You don't have enough money.")
        end
    end
    return false
end


