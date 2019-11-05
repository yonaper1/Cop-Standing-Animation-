Citizen.CreateThread(function()
 while true do
    Citizen.Wait(15)
    if IsControlJustPressed(0, 38) then -- 0,38 is E If change the number to a new one in https://docs.fivem.net/game-references/controls/
        TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_COP_IDLES", 0, false)
    end
 end
end)

Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
           if IsPedUsingAnyScenario(GetPlayerPed(-1)) then
               if IsControlPressed(0, 32) or IsControlPressed(0, 33) or IsControlPressed(0, 34) or IsControlPressed(0, 35) or IsControlJustPressed(1, 8) or IsControlJustPressed(1, 9) then
                    ClearPedTasks(GetPlayerPed(-1))
               end
           end
  end
end)