local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local userKey = getgenv().script_key or script_key or ""
local keysUrl = "https://raw.githubusercontent.com/JuanCr479/MainLol/refs/heads/main/Keys.json"

local success, result = pcall(function()
    return game:HttpGet(keysUrl)
end)

if success and result and result ~= "" then
    local decodeSuccess, data = pcall(function()
        return HttpService:JSONDecode(result)
    end)
    
    if decodeSuccess and data then
        -- Compatible con "keys" o "KEYS"
        local keysList = data.keys or data.KEYS
        
        if keysList then
            local allowedUser = keysList[userKey]

            if allowedUser and allowedUser == LocalPlayer.Name then
                print("¡Llave válida! Cargando script...")
            else
                LocalPlayer:Kick("Llave inválida o no pertenece a esta cuenta de Roblox.")
                return
            end
        else
            LocalPlayer:Kick("Formato del JSON incorrecto (no encuentra la lista de llaves).")
            return
        end
    else
        LocalPlayer:Kick("Error al decodificar el archivo JSON.")
        return
    end
else
    LocalPlayer:Kick("Error al descargar la lista de licencias.")
    return
end

-- Script principal (Autofarm / Ranked Reward)
while task.wait(1) do
    local args = {
        1 --arg can vary depending on the rank reward
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("SeasonService"):WaitForChild("RF"):WaitForChild("RequestRankedReward"):InvokeServer(unpack(args))
end
