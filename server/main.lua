RegisterServerEvent("val")
AddEventHandler("val", function()
    local _source = source
    TriggerClientEvent('valsound', _source)
end)

RegisterServerEvent("bw")
AddEventHandler("bw", function()
    local _source = source
    TriggerClientEvent('bwsound', _source)
end)

RegisterServerEvent("stdenis")
AddEventHandler("stdenis", function()
    local _source = source
    TriggerClientEvent('stdenissound', _source)
end)

