RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
TriggerEvent('valDirectory')
TriggerEvent('BwDirectory')
TriggerEvent('StDirectory')
end)

RegisterNetEvent('valDirectory', function()
    local PromptGroup = VORPutils.Prompts:SetupPromptGroup()
    local firstprompt = PromptGroup:RegisterPrompt(_U("openDirectory"), 0x760A9C6F, 1, 1, true, 'hold',
        { timedeventhash = "MEDIUM_TIMED_EVENT" })
    while true do
        Wait(5)
        local sleep = true
        local px, py, pz = table.unpack(GetEntityCoords(PlayerPedId()))
            if GetDistanceBetweenCoords(-187.7973, 626.8018, 114.0321, px, py, pz, true) < 2 then
                sleep = false
                PromptGroup:ShowGroup(_U("info"))
                if firstprompt:HasCompleted() then
                    TriggerEvent('s:ValCall')
                end
            end
        end
        if sleep then
            Wait(1500)
        end
    end)


    RegisterNetEvent('BwDirectory', function()
    local PromptGroup = VORPutils.Prompts:SetupPromptGroup()
    local firstprompt = PromptGroup:RegisterPrompt(_U("openDirectory"), 0x760A9C6F, 1, 1, true, 'hold',
        { timedeventhash = "MEDIUM_TIMED_EVENT" })
    while true do
        Wait(5)
        local sleep = true
        local px, py, pz = table.unpack(GetEntityCoords(PlayerPedId()))
            if GetDistanceBetweenCoords(-869.7830, -1328.0912, 43.9500, px, py, pz, true) < 2 then
                sleep = false
                PromptGroup:ShowGroup(_U("info"))
                if firstprompt:HasCompleted() then
                    TriggerEvent('s:BWCall')
                end
            end
        end
        if sleep then
            Wait(1500)
        end
    end)

    RegisterNetEvent('StDirectory', function()
        local PromptGroup = VORPutils.Prompts:SetupPromptGroup()
        local firstprompt = PromptGroup:RegisterPrompt(_U("openDirectory"), 0x760A9C6F, 1, 1, true, 'hold',
            { timedeventhash = "MEDIUM_TIMED_EVENT" })
        while true do
            Wait(5)
            local sleep = true
            local px, py, pz = table.unpack(GetEntityCoords(PlayerPedId()))
                if GetDistanceBetweenCoords(2739.1714, -1395.1139, 46.1831, px, py, pz, true) < 2 then
                    sleep = false
                    PromptGroup:ShowGroup(_U("info"))
                    if firstprompt:HasCompleted() then
                        TriggerEvent('s:StCall')
                    end
                end
            end
            if sleep then
                Wait(1500)
            end
        end)


    RegisterNetEvent('valsound', function()
        local id = "name"
        xSound:PlayUrlPos(id ,"https://www.youtube.com/watch?v=N2jZmXePKV0",1,vector3(-187.7973, 626.8018, 114.0321))
        xSound:onPlayStart(id, function(event) 
        xSound:onPlayEnd(id, function(event)
        end)
    end)
    end)

    
    RegisterNetEvent('bwsound', function()
    local id = "name"
    xSound:PlayUrlPos(id ,"https://www.youtube.com/watch?v=N2jZmXePKV0",1,vector3(-869.7830, -1328.0912, 43.9500))
    xSound:onPlayStart(id, function(event) 
    xSound:onPlayEnd(id, function(event)
    end)
end)
end)

RegisterNetEvent('stdenissound', function()
    local id = "name"
    xSound:PlayUrlPos(id ,"https://www.youtube.com/watch?v=N2jZmXePKV0",1,vector3(2739.1714, -1395.1139, 46.1831))
    xSound:onPlayStart(id, function(event) 
    xSound:onPlayEnd(id, function(event)
    end)
end)
end)
