local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local userKey = getgenv().script_key or script_key or ""
-- Agregamos ?nocache= para evitar problemas de actualización en GitHub
local keysUrl = "https://raw.githubusercontent.com/JuanCr479/MainLol/refs/heads/main/Keys.lua?nocache=" .. tick()

local success, keysList = pcall(function()
    return loadstring(game:HttpGet(keysUrl))()
end)

if success and type(keysList) == "table" then
    local allowedUser = keysList[userKey]

    if allowedUser ~= nil then
        -- Limpiamos espacios en blanco e ignoramos mayúsculas/minúsculas
        local cleanAllowedUser = string.lower(tostring(allowedUser):gsub("%s+", ""))
        local cleanPlayerName = string.lower(LocalPlayer.Name)

        -- Permite el paso si la llave es pública ("") O si coincide con el usuario
        if cleanAllowedUser == "" or cleanAllowedUser == cleanPlayerName then
            print("Valid key! Loading script...")
        else
            LocalPlayer:Kick("Invalid key or it does not belong to this Roblox account.")
            return
        end
    else
        LocalPlayer:Kick("Invalid or expired key.")
        return
    end
else
    LocalPlayer:Kick("Error fetching key list from server.")
    return
end

-- Main Script (Infinite Lucky Spins / Ranked Reward)
local SeasonService = game:GetService("ReplicatedStorage")
    :WaitForChild("Packages")
    :WaitForChild("_Index")
    :WaitForChild("sleitnick_knit@1.7.0")
    :WaitForChild("knit")
    :WaitForChild("Services")
    :WaitForChild("SeasonService")
    :WaitForChild("RF")
    :WaitForChild("RequestRankedReward")

print("Starting Ranked Reward loop...")

while task.wait(1) do
    local args = { 1 }
    
    local runSuccess, runError = pcall(function()
        SeasonService:InvokeServer(unpack(args))
    end)
    
    if not runSuccess then
        warn("Failed to request ranked reward: " .. tostring(runError))
    end
end
