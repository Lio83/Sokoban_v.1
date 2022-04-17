-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

level = require("level")
hero = require("hero")

text_Title_Level = {x = 630, y = 550}

function love.load()
  -- Chargement de la police
  font = love.graphics.setNewFont("fonts/aAtmospheric.ttf", 15)

  love.window.setTitle("SOKOBAN_V.1")

  level.Load()
  hero.Load()

  -- Chargement des sons
  --[[
  sound = love.audio.newSource("sound/Sokoban_1.mp3", "static")
  love.audio.play(sound)
  sound:setLooping(true)
  ]]

  lignes = 13
  colonnes = 10
end

function love.update(dt)
  level.update()
  hero.update()
end

function love.draw()
  
  love.graphics.setColor(0, 0.6, 0)
  love.graphics.print("Level 1/1", text_Title_Level.x, text_Title_Level.y, 0, 1.5, 1.5)
  love.graphics.setColor(1, 1, 1)

  level.Draw()
  hero.Draw()
end

function love.keypressed(key)
  if key == "escape" then
      love.event.quit()
  end    
end