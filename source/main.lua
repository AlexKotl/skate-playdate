import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "skater"

local pd <const> = playdate
local gfx <const> = pd.graphics

Skater()

function playdate.update()
	gfx.sprite.update()
    pd.timer.updateTimers()
end