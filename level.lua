local level = {}

walls = {x = 0, y = 0}

function level.Load()
    Walls = love.graphics.newImage ("images/walls.png")
end

function level.Update(dt)
end

function level.Draw()
    love.graphics.draw(Walls, walls.x, walls.y)
end

return level