local Level = {}

walls = {x = 0, y = 0}

function Level.Load()
    -- CHargement des images
     walls_img = love.graphics.newImage("images/walls.png")
end

function Level.Draw()
    love.graphics.draw(walls_img, walls.x, walls.y)
end

return Level