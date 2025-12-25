-- [[ 🚀 FUCK FLA$H — 99 NIGHTS IN THE FOREST ]]
local Branding = "FUCK FLA$H"
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

-- Fungsi Notifikasi
local function notify(msg)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = Branding,
        Text = msg,
        Duration = 5
    })
end

notify("Script Active! Mengaktifkan fitur...")

-- FITUR 1: Speed & Jump (Contoh Fitur Nyata)
task.spawn(function()
    while task.wait() do
        if Character:FindFirstChild("Humanoid") then
            Character.Humanoid.WalkSpeed = 25 -- Lebih cepat dari normal
            Character.Humanoid.JumpPower = 60
        end
    end
end)

-- FITUR 2: Full Bright (Menghilangkan Gelap di Hutan)
local Lighting = game:GetService("Lighting")
Lighting.Brightness = 2
Lighting.ClockTime = 14
Lighting.FogEnd = 100000

-- FITUR 3: ESP Sederhana (Melihat Player/Item)
for _, v in pairs(Players:GetPlayers()) do
    if v ~= LocalPlayer and v.Character then
        local highlight = Instance.new("Highlight")
        highlight.Parent = v.Character
        highlight.FillColor = Color3.fromRGB(255, 0, 0)
        highlight.Name = "FF_ESP"
    end
end

-- Chat Tag Otomatis
local TextChatService = game:GetService("TextChatService")
if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
    TextChatService.OnIncomingMessage = function(data)
        local props = Instance.new("TextChatMessageProperties")
        if data.TextSource and data.TextSource.UserId == LocalPlayer.UserId then
            props.PrefixText = "<font color='#FF0000'>[FUCK FLA$H]</font> " .. data.PrefixText
        end
        return props
    end
end

notify("Semua fitur aktif! [Speed, Bright, ESP]")
