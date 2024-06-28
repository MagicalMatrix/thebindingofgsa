local Enums = require("scripts.enums")

local game = Game()
local Functions = {}

function Functions.AppendTable(tab, value)
	table.insert(tab, #tab + 1, value)
end

function Functions.IsAnyPlayerOfType(playerType)
	for playerNum = 1, game:GetNumPlayers() do
		if game:GetPlayer(playerNum):GetPlayerType() == playerType then
			return true
		end
	end
	return false
end

function Functions.IsSpawnedByCharacter(playerType, spawnedEntity)
	--Isaac.ConsoleOutput(tostring(spawnedEntity.SpawnerType))

	if spawnedEntity == nil or spawnedEntity.SpawnerEntity == nil then return false end

	local characterMatch = playerType

	local player = spawnedEntity.SpawnerEntity:ToPlayer()
	if player then
		if player:GetPlayerType() == characterMatch then
			return true
		end
	end
	local familiar = spawnedEntity.SpawnerEntity:ToFamiliar()
	if familiar then
		if spawnedEntity.SpawnerEntity:ToFamiliar().Player:GetPlayerType() == characterMatch then
			return true
		end
	end

	return false
end

function Functions.GetSpawnerPlayer(entity)
	if entity == nil or entity.SpawnerEntity == nil then return nil end --not spawned by a player

	local player = entity.SpawnerEntity:ToPlayer()
	if player then
		return player
	end
	local familiar = entity.SpawnerEntity:ToFamiliar()
	if familiar then
		return entity.SpawnerEntity:ToFamiliar().Player
	end
	return nil --not spawned by player
end

function Functions.GetClosestEnemy(source)
	local minDist = 10000
	local closestEntity
	local sourcePos = source.Position --just some simple computation save
	for i, roomEntity in pairs(Isaac.GetRoomEntities()) do
		if roomEntity:IsVulnerableEnemy() then
			local dist = sourcePos:Distance(roomEntity.Position)
			if dist < minDist then
				minDist = dist
				closestEntity = roomEntity
			end
		end
	end
	return closestEntity
end

return Functions