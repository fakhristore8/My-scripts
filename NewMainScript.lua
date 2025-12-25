--[[ 🚀 FUCK FLA$H - UNIVERSAL FRAMEWORK ]]
local Branding = "FUCK FLA$H"

-- Menghapus sisa-sisa Voidware di memori
shared.VapeVoidware = nil
shared.VoidDev = nil
shared.FuckFlashActive = true

print([[ 
  ______ _    _  _____ _  __  ______ _               _____ _    _ 
 |  ____| |  | |/ ____| |/ / |  ____| |        /\   / ____| |  | |
 | |__  | |  | | |    | ' /  | |__  | |       /  \ | (___ | |__| |
 |  __| | |  | | |    |  <   |  __| | |      / /\ \ \___ \|  __  |
 | |    | |__| | |____| . \  | |    | |____ / ____ \____) | |  | |
 |_|     \____/ \_____|_|\_\ |_|    |______/_/    \_\_____/|_|  |_|
]])

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = Branding,
    Text = "Universal Framework Ready!",
    Duration = 5
})
