local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Obtener la llave ingresada por el usuario
local userKey = script_key or ""

-- Enlace RAW exacto a tu Keys.json
local keysUrl = "https://raw.githubusercontent.com/JuanCr479/MainLol/refs/heads/main/Keys.json"

local success, result = pcall(function()
    return game:HttpGet(keysUrl)
end)

if success then
    local data = HttpService:JSONDecode(result)
    local allowedUser = data.KEYS[userKey]

    if allowedUser and allowedUser == LocalPlayer.Name then
        print("¡Llave válida! Cargando script...")
    else
        LocalPlayer:Kick("Llave inválida o no pertenece a esta cuenta de Roblox.")
        return
    end
else
    LocalPlayer:Kick("Error al verificar la licencia. Intenta de nuevo.")
    return
end

-- Código principal (main.lua)
while wait(1) do
    local args = {
        1 --arg can vary depending on the rank reward
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("s")
end
