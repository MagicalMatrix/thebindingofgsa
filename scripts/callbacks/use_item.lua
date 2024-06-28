local Adam = require("scripts.characters.adam")

local function USE_ITEM(mod)
	mod:AddCallback(ModCallbacks.MC_USE_ITEM, Adam.UseItem)
end

return USE_ITEM