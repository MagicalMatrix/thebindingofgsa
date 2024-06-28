local Hikkof = require("scripts.characters.hikkof")
local Janek = require("scripts.characters.janek")

local function POST_PLAYER_UPDATE(mod)
	mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Hikkof.PostPlayerUpdate)
	mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, Janek.PostPlayerUpdate)
end

return POST_PLAYER_UPDATE