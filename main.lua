local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local userKey = getgenv().script_key or script_key or ""
local keysUrl = "https://raw.githubusercontent.com/JuanCr479/MainLol/refs/heads/main/Keys.lua"

-- Cargar la tabla de llaves como código Lua directo
local success, keysList = pcall(function()
    return loadstring(game:HttpGet(keysUrl))()
end)

if success and type(keysList) == "table" then
    local allowedUser = keysList[userKey]

    if allowedUser and allowedUser == LocalPlayer.Name then
        print("¡Llave válida! Cargando script...")
    else
        LocalPlayer:Kick("Llave inválida o no pertenece a esta cuenta de Roblox.")
        return
    end
else
    LocalPlayer:Kick("Error al descargar la lista de licencias.")
    return
end

-- Script principal (Autofarm / Ranked Reward)
while task.wait(1) do
    local args = {
        1
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("SeasonService"):WaitForChild("RF"):WaitForChild("RequestRankedReward"):InvokeServer(unpack(args))
end
