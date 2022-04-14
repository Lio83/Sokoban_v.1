-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

function love.load()

  largeur_ecran = love.graphics.getWidth()
  hauteur_ecran = love.graphics.getHeight()

  love.window.setTitle("Sokoban_V.1 by Lio_83")
  
  font = love.graphics.setNewFont("fonts/aAtmospheric.ttf", 15)

  Level.Draw()
end

function love.update(dt)
end

function love.draw()

  love.graphics.setColor(0, 0.6, 0)
  love.graphics.print("Level 1/1", 630, 550, 0, 1.5, 1.5)
  love.graphics.setColor(1, 1, 1)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end   
end