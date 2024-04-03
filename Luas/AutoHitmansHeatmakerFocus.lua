local function onPlayerDeath(event)
    if event:GetName() == "player_death" and event:GetInt("attacker") -243 == client.GetLocalPlayerIndex() then
        print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> You")
        client.Command('+reload',true)
    end
end
callbacks.Unregister("FireGameEvent", "AutoTauntOnKill", onPlayerDeath)
callbacks.Register("FireGameEvent", "AutoTauntOnKill", onPlayerDeath)
