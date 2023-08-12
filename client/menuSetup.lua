AddEventHandler('s:MenuClose', function()
    while inMenu do
        Wait(5)
        if IsControlJustReleased(0, 0x156F7119) then
            StopAnimTask(PlayerPedId(), "script_proc@robberies@coach@rhodes","waiting_01_alden")
            disconnect()
            inMenu = false
            MenuData.CloseAll()
            break
        end
    end
end)

RegisterNetEvent('s:ValCall', function()
    inMenu = true
    TriggerEvent('s:MenuClose')
    MenuData.CloseAll()

    local elements = {
        { label = _U("Blackwater"),     value = 'Blackwater',     desc = _U("blackwater_desc") },
        { label = _U("StDenis"),       value = 'StDenis',       desc = _U("stdenis_desc") },
        { label = _U("incomingcalls"),       value = 'incomingcalls',       desc = _U("incomingcallsdesc") }
    }

    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
        {
            title =
                "<img style='max-height:5vh;max-width:7vh; float: left;text-align: center; margin-top: 4vh; position:relative; right: 8vh;' src='nui://s-phone/images/phone.png'>"
                .. "<div style='position: relative; right: 6vh; margin-top: 4vh;'>" .. _U("menuTitle") .. "</div>",
            align = 'top-left',
            elements = elements,
        },
        function(data)
            if data.current == 'backup' then
                _G[data.trigger]()
            end
            local selectedOption = {
                ['Blackwater'] = function()
                    anim()
                    TriggerServerEvent('bw')
                    bwincomingcalls()
                end,
                ['StDenis'] = function()
                    anim()
                    TriggerServerEvent('stdenis')
                    stincomingcalls()
                end,
                ['incomingcalls'] = function()
                    anim()
                    valincomingcalls()
                end,
            }

            if selectedOption[data.current.value] then
                selectedOption[data.current.value]()
            end
        end)
end)

RegisterNetEvent('s:BWCall', function()
    inMenu = true
    TriggerEvent('s:MenuClose')
    MenuData.CloseAll()

    local elements = {
        { label = _U("Valentine"),     value = 'Valentine',     desc = _U("valentine_desc") },
        { label = _U("StDenis"),       value = 'StDenis',       desc = _U("stdenis_desc") },
        { label = _U("incomingcalls"),       value = 'incomingcalls',       desc = _U("incomingcallsdesc") }
    }

    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
        {
            title =
                "<img style='max-height:5vh;max-width:7vh; float: left;text-align: center; margin-top: 4vh; position:relative; right: 8vh;' src='nui://s-phone/images/phone.png'>"
                .. "<div style='position: relative; right: 6vh; margin-top: 4vh;'>" .. _U("menuTitle") .. "</div>",
            align = 'top-left',
            elements = elements,
        },
        function(data)
            if data.current == 'backup' then
                _G[data.trigger]()
            end
            local selectedOption = {
                ['Valentine'] = function()
                    anim()
                    TriggerServerEvent('val')
                    valincomingcalls()
                end,
                ['StDenis'] = function()
                    anim()
                    TriggerServerEvent('stdenis')
                    stincomingcalls()
                end,
                ['incomingcalls'] = function()
                    anim()
                    valincomingcalls()
                end,
            }

            if selectedOption[data.current.value] then
                selectedOption[data.current.value]()
            end
        end)
end)

RegisterNetEvent('s:StCall', function()
    inMenu = true
    TriggerEvent('s:MenuClose')
    MenuData.CloseAll()

    local elements = {
        { label = _U("Valentine"),     value = 'Valentine',     desc = _U("valentine_desc") },
        { label = _U("Blackwater"),     value = 'Blackwater',     desc = _U("blackwater_desc") },
        { label = _U("incomingcalls"),       value = 'incomingcalls',       desc = _U("incomingcallsdesc") }
    }

    MenuData.Open('default', GetCurrentResourceName(), 'menuapi',
        {
            title =
                "<img style='max-height:5vh;max-width:7vh; float: left;text-align: center; margin-top: 4vh; position:relative; right: 8vh;' src='nui://s-phone/images/phone.png'>"
                .. "<div style='position: relative; right: 6vh; margin-top: 4vh;'>" .. _U("menuTitle") .. "</div>",
            align = 'top-left',
            elements = elements,
        },
        function(data, menu)
            if data.current == 'backup' then
                _G[data.trigger]()
            end
            local selectedOption = {
                ['Valentine'] = function()
                    anim()
                    TriggerServerEvent('val')
                    valincomingcalls()
                end,
                ['Blackwater'] = function()
                    anim()
                    TriggerServerEvent('bw')
                    bwincomingcalls()
                end,
                ['incomingcalls'] = function()
                    anim()
                    stincomingcalls()
                end,
            }

            if selectedOption[data.current.value] then
                selectedOption[data.current.value]()
        end

        end)
end)



