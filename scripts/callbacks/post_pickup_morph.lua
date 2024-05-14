local Kimel = require("scripts.characters.kimel")

local function MC_POST_PICKUP_MORPH(mod)
	mod:AddCallback(ModCallbacks.MC_POST_PICKUP_MORPH, Kimel.PostPickupMorph)
end

return MC_POST_PICKUP_MORPH