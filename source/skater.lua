local gfx <const> = playdate.graphics

class("Skater").extends(gfx.sprite)

function Skater:init()
    self:setImage(gfx.image.new("images/skater"))
    self:moveTo(100, 100)
    self:add()

    self:setCollideRect(0, 0, self:getSize())
end

function Skater:update()

end