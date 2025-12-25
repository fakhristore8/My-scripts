--[[ 🚀 FUCK FLA$H — UNIVERSAL LOADER ]]
repeat task.wait() until game:IsLoaded()

local BaseURL = "https://raw.githubusercontent.com/fakhristore8/My-scripts/main/"

local meta = {
    [2619619496] = { title = "Bedwars", file = "NewMainScript.lua" },
    [7008097940] = { title = "Ink Game", file = "inkgame.lua" },
    [6331902150] = { title = "Forsaken", file = "forsaken.lua" },
    [7326934954] = { title = "99 Nights In The Forest", file = "nightsintheforest.lua" }
}

local data = meta[game.GameId]

-- GUI Notification
local function notify(t, msg)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FUCK FLA$H | " .. t,
        Text = msg,
        Duration = 5
    })
end

if not data then
    notify("Error", "Game ID: " .. game.GameId .. " tidak didukung!")
    return
end

notify("Loading", "Sedang memuat script " .. data.title .. "...")

-- Memanggil file dari repo ANDA
local suc, err = pcall(function()
    loadstring(game:HttpGet(BaseURL .. data.file))()
end)

if not suc then
    warn("FUCK FLA$H Error: " .. tostring(err))
    notify("Error", "Gagal memuat file dari GitHub Anda.")
end
