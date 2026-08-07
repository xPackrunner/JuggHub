local GAMES = {
    [142823291] = "https://raw.githubusercontent.com/xPackrunner/JuggHub/refs/heads/main/mm2.lua",
}

local GAME_NAMES = {
    [142823291] = "Murder Mystery 2",
}

local placeId = game.PlaceId
local scriptUrl = GAMES[placeId]
local gameName = GAME_NAMES[placeId] or ("Game " .. tostring(placeId))

if scriptUrl then
    pcall(function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Jugg Hub";
            Text = "Loading script for " .. gameName .. "...";
            Duration = 4;
        })
    end)
    loadstring(game:HttpGet(scriptUrl))()
else
    pcall(function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Jugg Hub";
            Text = "This game is not supported yet! (PlaceId: " .. placeId .. ")";
            Duration = 5;
        })
    end)
end
