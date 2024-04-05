HyperCircle = Object:extend()

function HyperCircle:new(x, y, radius, line_width, outer_radius)
   self.x = x
   self.y = y
   self.radius = radius
   self.line_width = line_width
   self.outer_radius = outer_radius
   self.creation_time = love.timer.getTime()

end

function HyperCircle:update()

end

function HyperCircle:draw()
    love.graphics.setLineWidth(self.line_width)
    love.graphics.circle("fill", self.x, self.y, self.radius)
    love.graphics.circle("line", self.x, self.y, self.outer_radius)
end

