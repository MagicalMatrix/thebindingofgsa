local Enums = require("scripts.enums")
local Functions = require("scripts.functions")

local Patryk = {}
local game = Game()

--[[
function Adam.UseItem(_, collectibleID, rngObj, playerUsing, useFlags, activeSlot, varData)
	if playerUsing == Enums.Characters.ADAM and collectibleID == Enums.items.MATRIX_MANDELBROT then
		Isaac.ConsoleOutput("usedSpecialItem")
		playerUsing.UseActiveItem(CollectibleType.COLLECTIBLE_SPRINKLER, false, false, true, false, activeSlot, varData)
	end
end
]]--

function Patryk.PostTearUpdate(_, tear)
	if Functions.IsSpawnedByCharacter(Enums.Characters.PATRYK, tear) ~= true then return end
	
	player = Functions.GetSpawnerPlayer(tear)

	if player.Position:Distance(tear.Position) > player.TearRange * Enums.SpecialStats.PATRYK_AURA_MULT then
		tear:Remove()
	end
end

function Patryk.PostPlayerInit(_, player)
	player:GetData().eliminated = {}
end

function Patryk.PostProjectileInit(_, projectile)
	for playerNum = 1, game:GetNumPlayers() do
		player = game:GetPlayer(playerNum)
		data = player:GetData()
		if player:GetPlayerType() == Enums.Characters.PATRYK then
			if player.Position:Distance(projectile.Position) > player.TearRange * Enums.SpecialStats.PATRYK_AURA_MULT then
				--player:GetData().eliminate[#eliminate+1] = 
				--projectile.Color = __mul(projectile.Color)
				--Functions.AppendTable(data.eliminate, projectile)
				projectile:Remove()
			end

		end
	end
end

return Patryk