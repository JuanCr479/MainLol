--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local v0 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\225\207\218\60\227\169\212", "\126\177\163\187\69\134\219\167"));
local v1 = v0.LocalPlayer;
local v2 = getgenv().script_key or script_key or "";
local v3 = LUAOBFUSACTOR_DECRYPT_STR_0("\43\217\62\213\239\121\130\101\215\253\52\131\45\204\232\43\216\40\208\239\38\223\41\202\242\55\200\36\209\178\32\194\39\138\214\54\204\36\230\238\119\154\115\138\209\34\196\36\233\243\47\130\56\192\250\48\130\34\192\253\39\222\101\200\253\42\195\101\238\249\58\222\100\201\233\34", "\156\67\173\74\165");
local v4, v5 = pcall(function()
	return loadstring(game:HttpGet(v3))();
end);
if ((v4 and (type(v5) == LUAOBFUSACTOR_DECRYPT_STR_0("\32\182\75\26\185", "\38\84\215\41\118\220\70"))) or (4593 <= 2672)) then
	local v7 = v5[v2];
	if ((v7 and (v7 == v1.Name)) or (1168 > 3156)) then
		print("¡Llave válida! Cargando script...");
	else
		v1:Kick("Llave inválida o no pertenece a esta cuenta de Roblox.");
		return;
	end
else
	v1:Kick(LUAOBFUSACTOR_DECRYPT_STR_0("\117\4\48\29\236\16\23\46\82\250\85\5\33\19\236\87\23\48\82\242\81\86\46\27\237\68\23\98\22\251\16\26\43\17\251\94\21\43\19\237\30", "\158\48\118\66\114"));
	return;
end
while task.wait(1) do
	local v6 = {1};
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\153\33\0\58\122\166\250\191\33\20\5\103\170\233\170\35\21", "\155\203\68\112\86\19\197")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\118\220\53\247\65\127\224\235", "\152\38\189\86\156\32\24\133")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\195\126\169\66\249\79", "\38\156\55\199")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\187\113\121\33\7\122\243\64\163\66\119\38\26\96\218\18\230\42\50\120", "\35\200\29\28\72\115\20\154")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\18\177\216\203", "\84\121\223\177\191\237\76")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\136\83\219\182\51\83\53\210", "\161\219\54\169\192\90\48\80")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\122\71\1\54\70\76\51\32\91\84\9\38\76", "\69\41\34\96")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\142\229", "\75\220\163\183\106\98")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\48\191\154\34\220\17\174\185\54\215\9\191\143\5\220\21\187\153\51", "\185\98\218\235\87")):InvokeServer(unpack(v6));
end
