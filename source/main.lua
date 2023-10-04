import "CoreLibs/graphics"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

import "player"

local pd <const> = playdate
local gfx <const> = pd.graphics

local function initialize()
	local knightImage = gfx.image.new("images/knight")
	local playerInstance = Player(200, 200, knightImage)
	playerInstance:add()
end

initialize()

function pd.update()
	gfx.sprite.update()
	pd.timer.updateTimers()
end
