local Kimel = require("scripts.characters.kimel")

local function MC_POST_PICKUP_INIT(mod)
	mod:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, Kimel.PostPickupInit)
end

return MC_POST_PICKUP_INIT