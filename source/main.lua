import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import 'libs/AnimatedSprite.lua'

-- import "skater"

local pd <const> = playdate
local gfx <const> = pd.graphics

local imagetable = gfx.imagetable.new("assets/skater")

sprite = AnimatedSprite.new(imagetable) 
sprite:addState("idle", 1, 13, {tickStep = 3}) 
sprite:playAnimation() 
sprite:moveTo(50, 50)


-- Skater()

function playdate.update()
	gfx.sprite.update()
    pd.timer.updateTimers()
end