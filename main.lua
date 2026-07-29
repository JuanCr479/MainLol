local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Obtener la llave desde el entorno global de los ejecutores (getgenv)
local userKey = getgenv().script_key or script_key or ""

local keysUrl = "https://raw.githubusercontent.com/JuanCr479/MainLol/refs/heads/main/Keys.json"

-- Descargar el archivo Keys.json
local success, result = pcall(function()
    return game:HttpGet(keysUrl)
end)

if success and result and result ~= "" then
    -- Decodificar JSON
    local decodeSuccess, data = pcall(function()
        return HttpService:JSONDecode(result)
    end)
    
    if decodeSuccess and data and data.KEYS then
        local allowedUser = data.KEYS[userKey]

        if allowedUser and allowedUser == LocalPlayer.Name then
            print("¡Llave válida! Cargando script...")
        else
            LocalPlayer:Kick("Llave inválida o no pertenece a esta cuenta de Roblox.")
            return
        end
    else
        LocalPlayer:Kick("Error al leer la lista de llaves JSON.")
        return
    end
else
    LocalPlayer:Kick("Error al descargar la lista de licencias.")
    return
end

-- Tu código principal
print("Script ejecutado exitosamente por: " .. LocalPlayer.Name)
