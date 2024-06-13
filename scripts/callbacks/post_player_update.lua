local Hikkof = require("scripts.characters.hikkof")

local function POST_PLAYER_UPDATE(mod)
	mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Hikkof.PostPlayerUpdate)
end

return POST_PLAYER_UPDATE