local Enums = require("scripts.enums")
local Functions = require("scripts.functions")

local Adam = {}
local game = Game()

--[[
function Adam.PostPlayerInit(_)

end
]]--

function Adam.UseItem(_, collectibleID, rngObj, playerUsing, useFlags, activeSlot, varData)

	if playerUsing == Enums.Characters.ADAM and collectibleID == Enums.items.MATRIX_MANDELBROT then
		Isaac.ConsoleOutput("usedSpecialItem")
		playerUsing.UseActiveItem(CollectibleType.COLLECTIBLE_SPRINKLER, false, false, true, false, activeSlot, varData)
	end
end

return Adam