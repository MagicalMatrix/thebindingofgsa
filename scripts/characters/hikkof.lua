local Enums = require("scripts.enums")
local Functions = require("scripts.functions")

local Hikkof = {}
local sfx = SFXManager()
local game = Game()

local HikkofTimer = 0

function Hikkof.PostPlayerUpdate(_, player)
	if player:GetPlayerType() == Enums.Characters.HIKKOF then
		if HikkofTimer <= 0 then
			--do fake damage
			player:TakeDamage(0, DamageFlag.DAMAGE_FAKE, EntityRef(player), 0)
			--and play hikkof sound
			--Isaac.ConsoleOutput(tostring(Enums.Sounds.HikkofHurt))
			sfx:Play(Enums.Sounds.HIKKOF_HURT, 1, 2, false, 1, 0)
			--sfx:Play(Enums.Sounds.HikkofHurt)
			HikkofTimer = math.random(180, 300)
		end

		HikkofTimer = HikkofTimer - 1
	end

end

return Hikkof