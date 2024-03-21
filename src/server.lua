SDL = exports["Stoic-IDHandler"]:GetCoreObject()

-- Function to give the player a valid driver's license
RegisterServerEvent("giveValidLicense")  -- Register the server event
AddEventHandler("giveValidLicense", function()
    local source = source  -- Get the source player ID
    print("Attempting to give valid license to player " .. source .. "...")
    local player = NDCore.getPlayer(source)
    if player then
        print("Player found. Attempting to grant valid license...")
        SDL.validDriverLicense(player)
        print("Valid license granted to player " .. source)
        TriggerClientEvent("chatMessage", source, "SYSTEM", {255, 255, 255}, "Congratulations! You've passed the DMV test and now have a valid driver's license.")
        print("Chat message sent to player " .. source)
    else
        print("Player not found.")
    end
end)
