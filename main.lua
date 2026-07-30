--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0=game:GetService("Players");local v1=v0.LocalPlayer;local v2=getgenv().script_key or script_key or "" ;local v3="https://raw.githubusercontent.com/JuanCr479/MainLol/refs/heads/main/Keys.lua";local v4,v5=pcall(function() return loadstring(game:HttpGet(v3))();end);if (v4 and (type(v5)=="table")) then local v7=v5[v2];if (v7 and (v7==v1.Name)) then print("¡Llave válida! Cargando script...");else v1:Kick("Llave inválida o no pertenece a esta cuenta de Roblox.");return;end else v1:Kick("Error al descargar la lista de licencias.");return;end while task.wait(1) do local v6={1};game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("SeasonService"):WaitForChild("RF"):WaitForChild("RequestRankedReward"):InvokeServer(unpack(v6));end
