local Object = require("libraries/classic")

-- An object class to create a circle -- 
circles = Object:extend()

function circles:new(x, y, radius)
    self.x = x
    self.y = y
    self.radius = radius
    self.creation_time = love.timer.getTime()
end

function circles:update(dt)

end

function circles:draw()
    love.graphics.circle("fill", self.x, self.y, self.radius)
end 

return circles