
local consolas = draw.CreateFont("Consolas", 17, 500)

/* Uncomment if you want "AutoFocus Activated text under your crosshair" */
/*
local function displayStatus()
    draw.SetFont(consolas)
    draw.Color(255, 255, 255, 255)
    draw.Text(
                //  My screen is 3440x1440
        1650,   //  Half of your screen's width - 70
        820,    //  Half of your screen's height + 100
        "AutoFocus Activated")
end
callbacks.Register("Draw", "draw", displayStatus)
*/

local function onPlayerDeath(event)
    if event:GetName() == "player_death" and event:GetInt("attacker") == client.GetLocalPlayerIndex() + 1 then
        client.Command('+reload',true)
    end

end

callbacks.Register("FireGameEvent", "AutoTauntOnKill", onPlayerDeath)
