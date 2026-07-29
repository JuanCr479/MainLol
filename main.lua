local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Obtener la llave ingresada por el cliente
local userKey = rawget(getgenv(), "script_key") or script_key or ""

-- Enlace RAW a tu archivo Keys.json
local keysUrl = "https://raw.githubusercontent.com/JuanCr479/MainLol/refs/heads/main/Keys.json"

local success, result = pcall(function()
    return game:HttpGet(keysUrl)
end)

if success and result then
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

-- Tu código principal original
while wait(1) do
    local args = {
        1
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("s")
end
