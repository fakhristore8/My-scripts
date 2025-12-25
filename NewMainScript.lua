--[[ 🚀 FUCK FLA$H - MAIN FRAMEWORK v1.0 🚀 ]]
-- File ini berfungsi sebagai otak dari semua script di repo fakhristore8

if not game:IsLoaded() then game.Loaded:Wait() end

-- Konfigurasi Identitas
shared.FuckFlash = {
    Name = "FUCK FLA$H",
    Folder = "FUCKFLASH_DATA",
    Color = Color3.fromRGB(255, 0, 0)
}

-- Menghapus Jejak Voidware agar tidak bentrok
shared.VapeVoidware = nil
shared.VoidDev = nil

-- Fungsi Notifikasi Internal
local function notify(title, msg)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = shared.FuckFlash.Name .. " | " .. title,
        Text = msg,
        Duration = 5
    })
end

notify("Sistem", "Menghubungkan ke modul fakhristore8...")

-- [[ PROSES REBRANDING CORE ]]
-- Bagian ini mengambil fitur asli tapi mengganti semua teks "Voidware" menjadi "FUCK FLA$H"
local function LoadModule(url)
    local suc, content = pcall(function() return game:HttpGet(url) end)
    if suc then
        -- Teknik "String Swap" untuk rebranding otomatis di memori
        local rebrandedContent = content:gsub("Voidware", shared.FuckFlash.Name)
                                       :gsub("VapeVoidware", "fakhristore8")
                                       :gsub("voidware_libraries", shared.FuckFlash.Folder)
        
        local func, err = loadstring(rebrandedContent)
        if func then 
            return func() 
        else 
            warn("Error loading module: " .. tostring(err))
        end
    end
end

-- Menjalankan fitur utama berdasarkan Game ID
if game.PlaceId == 79546208627805 or game.GameId == 7326934954 then
    -- Fitur 99 Nights
    LoadModule("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/newnightsintheforest.lua")
elseif game.GameId == 2619619496 then
    -- Fitur Bedwars
    LoadModule("https://raw.githubusercontent.com/VapeVoidware/VWRewrite/main/NewMainScript.lua")
else
    -- Jika game lain, gunakan modul universal
    notify("Info", "Menggunakan Modul Universal.")
end

notify("Sukses", "Semua fitur FUCK FLA$H telah aktif!")
