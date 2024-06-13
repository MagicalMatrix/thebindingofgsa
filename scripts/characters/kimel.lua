local Enums = require("scripts.enums")
local Functions = require("scripts.functions")

local Kimel = {}
local game = Game()

--prevents from "glithing" item several times
local alreadyGlitched = false

function IsAnyPlayerOfType(playerType)
	for playerNum = 1, game:GetNumPlayers() do
		if game:GetPlayer(playerNum):GetPlayerType() == playerType then
			return true
		end
	end
	return false
end

function Kimel.PostPickupInit(_, pickup)
	
--does not matter which player gets tmtrainer
	local player = game:GetPlayer(0);
	--schould check if is Kimel
	if IsAnyPlayerOfType(Enums.Characters.KIMEL) then


	if pickup.Variant == PickupVariant.PICKUP_COLLECTIBLE then
		if alreadyGlitched == true then
			alreadyGlitched = false
		else
		--change item into it's corresponding glithed item
		alreadyGlitched = true
		--even fiend folio does it this way
		--player:AddCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)
		--have to remove item and spawn new one
		--pickup:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, pickup.SubType, true, true, true)
		--player:RemoveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)
		--ProceduralItemManager.CreateProceduralItem(0, 0)
		Isaac.ConsoleOutput(tostring(pickup.SubType))
		end
	end

	end
end

local noTmTrainer = false;

function Kimel.PrePickupMorph(_, pickup)
	
	--schould take all Kimels insted of random dude
	local player = game:GetPlayer(0);

	if IsAnyPlayerOfType(Enums.Characters.KIMEL) then
		if pickup.Variant == PickupVariant.PICKUP_COLLECTIBLE then
			player:RemoveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)
			noTmTrainer = true;
		end
	end
end

--upgrade this to check if is kimel
function Kimel.PostPickupMorph(_, pickup)
	local player = game:GetPlayer(0);
	if noTmTrainer == true then
		player:AddCollectible(CollectibleType.COLLECTIBLE_TMTRAINER)
	end
end
--MC_PRE_PICKUP_MORPH

return Kimel