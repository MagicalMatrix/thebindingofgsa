local Hikkof = require("scripts.characters.hikkof")
local Patryk = require("scripts.characters.janek")

local function POST_PLAYER_INIT(mod)
	mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, Patryk.PostPlayerInit)
end

return POST_PLAYER_INIT