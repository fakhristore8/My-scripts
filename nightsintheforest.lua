--[[
    🚀 FUCK FLA$H — 99 Nights In The Forest 🚀
    Converted from: nightsintheforest.lua
]]

if not game:IsLoaded() then return end

local Services = setmetatable({}, {
    __index = function(self, key)
        return game:GetService(key)
    end
})

local Players = Services.Players
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = Services.ReplicatedStorage

-- Branding & Notification
local function Notify(title, text)
    Services.StarterGui:SetCore("SendNotification", {
        Title = "FUCK FLA$H | " .. title,
        Text = text,
        Duration = 5
    })
end

Notify("Status", "Script FUCK FLA$H sedang dimuat...")

-- Main Script Logic (Struktur Dasar)
local FFlash = {
    Settings = {},
    Modules = {}
}

-- Contoh fungsi yang biasanya ada di script tersebut (Auto Farm / ESP)
function FFlash:Init()
    print("FUCK FLA$H Core Initialized")
    
    -- Ganti tag chat menjadi FUCK FLA$H
    task.spawn(function()
        local TextChatService = Services.TextChatService
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            TextChatService.OnIncomingMessage = function(data)
                local props = Instance.new("TextChatMessageProperties")
                if data.TextSource then
                    local plr = Players:GetPlayerByUserId(data.TextSource.UserId)
                    if plr == LocalPlayer then
                        props.PrefixText = "<font color='#FF0000'>[FUCK FLA$H]</font> " .. data.PrefixText
                    end
                end
                return props
            end
        end
    end)
end

-- Menjalankan Init
FFlash:Init()

-- Load Main UI (Biasanya menggunakan library eksternal)
-- Jika Anda memiliki UI Library sendiri, Anda bisa memanggilnya di sini.
Notify("Berhasil", "FUCK FLA$H siap digunakan!")
