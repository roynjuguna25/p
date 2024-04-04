local Object = require("classic")

-- An object class to create a circle -- 
local circles = Object:extend()

function circles:new()
    self.x = x
    self.y = y
    self.radius = radius
end

function circles:update(dt)

end

function circles:draw(x, y, radius)
    love.graphics.circle("fill", self.x, self.y, self.radius)
end 

return circles