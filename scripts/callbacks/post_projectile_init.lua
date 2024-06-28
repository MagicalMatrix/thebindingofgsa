local Patryk = require("scripts.characters.patryk")

local function POST_PROJECTILE_INIT(mod)
	mod:AddCallback(ModCallbacks.MC_POST_PROJECTILE_INIT, Patryk.PostProjectileInit)
end

return POST_PROJECTILE_INIT