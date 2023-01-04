import 'libs/AnimatedSprite.lua'

local pd <const> = playdate
local gfx <const> = playdate.graphics

class("Skater").extends(AnimatedSprite)

function Skater:init()
    local imagetable = gfx.imagetable.new("assets/skater")
    Skater.super.init(self, imagetable)

    self:addState("idle", 1, 13, {tickStep = 3}) 
    self:playAnimation() 
    self:moveTo(100, 100)
    self:setCollideRect(0, 0, self:getSize())
    
    self.speed = 0
end

function Skater:update()
    if pd.buttonIsPressed(pd.kButtonRight) then
        self.speed += 2
    elseif pd.buttonIsPressed(pd.kButtonLeft) then
        self.speed = 0
    end

    self.speed -= 0.5

    if self.speed < 0 then
        self.speed = 0
    end

    self:moveBy(self.speed, 0)
    self:updateAnimation()
end