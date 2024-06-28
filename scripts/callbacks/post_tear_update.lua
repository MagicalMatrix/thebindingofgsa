local Patryk = require("scripts.characters.patryk")

local function POST_TEAR_UPDATE(mod)
	mod:AddCallback(ModCallbacks.MC_POST_TEAR_UPDATE, Patryk.PostTearUpdate)
end

return POST_TEAR_UPDATE