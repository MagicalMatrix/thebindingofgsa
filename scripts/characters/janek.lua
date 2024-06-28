local Enums = require("scripts.enums")
local Functions = require("scripts.functions")

local Janek = {}
local game = Game()

function Janek.PostPlayerUpdate(_, player)
	if player:GetPlayerType() == Enums.Characters.JANEK ~= true then return end

	local target = Functions.GetClosestEnemy(player)
	if target then
		if player.Velocity:Length() < Enums.SpecialStats.JANEK_MOVE_THRESHOLD then
			player.Velocity = player.Velocity + (target.Position - player.Position):Normalized() * Enums.SpecialStats.JANEK_AFFINITY_MULT
		end
	end

end

return Janek