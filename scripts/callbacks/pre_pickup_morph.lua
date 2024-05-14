local Kimel = require("scripts.characters.kimel")

local function MC_PRE_PICKUP_MORPH(mod)
	mod:AddCallback(ModCallbacks.MC_PRE_PICKUP_MORPH, Kimel.PrePickupMorph)
end

return MC_PRE_PICKUP_MORPH