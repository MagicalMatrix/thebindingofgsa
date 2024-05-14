local Enums = require("scripts.enums")

local game = Game()
local Functions = {}

function Functions.IsAnyPlayerOfType(playerType)
	for playerNum = 1, game:GetNumPlayers() do
		if game:GetPlayer(playerNum):GetPlayerType() == playerType then
			return true
		end
	end
	return false
end

return Functions