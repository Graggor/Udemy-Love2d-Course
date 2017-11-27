function love.load()
  button = {}
  button.x = 200
  button.y = 200
  button.size = 50

  score = 0
  timer = 0
end

function love.update(dt)

end

function love.draw()
  love.graphics.setColor(255, 0, 255, 255)
  love.graphics.circle("fill", button.x, button.y, button.size)
end
