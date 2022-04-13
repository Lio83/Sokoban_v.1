-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

function love.load()
  local test = 10;
  local test2 = 23;
  largeur_ecran = love.graphics.getWidth()
  hauteur_ecran = love.graphics.getHeight()
  
end

function love.update(dt)
end

function love.draw()
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end   
end