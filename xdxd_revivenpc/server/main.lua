lib.callback.register('xdxd_revivenpc:checkMoney', function(source, price)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cashMoney = xPlayer.getMoney()
    local bankMoney = xPlayer.getAccount('bank').money

    if cashMoney == nil or bankMoney == nil then
        return false, false, true
    end
    
    if (cashMoney >= price) or (Config.allowBankPayment and bankMoney >= price) then
        if (Config.allowBankPayment and bankMoney >= price) then
            account = 'bank'
        else
            account = 'money'
        end
        return true, account, true
    else
        if (bankMoney >= price) and not Config.allowBankPayment then
            TriggerClientEvent('ox_lib:notify', source, {desription = Translate('ped_onlyCash')})
        end
        return false, nil, true
    end
end)

lib.callback.register('xdxd_revivenpc:EMScount', function()
    local players = ESX.GetPlayers()
    local count = 0

    for i=1, #players do
        local xPlayer = ESX.GetPlayerFromId(players[i])
        if xPlayer.job.name == 'ambulance' then
            count = count + 1
        end
    end
    
    return count
end)

RegisterServerEvent('xdxd_revivenpc:payment')
AddEventHandler('xdxd_revivenpc:payment', function(account, event)
    local xPlayer = ESX.GetPlayerFromId(source)
    if event == 'revive' then
        xPlayer.removeAccountMoney(account, Config.revivePrice)
    elseif event == 'heal' then
        xPlayer.removeAccountMoney(account, Config.healPrice)
    end
end)