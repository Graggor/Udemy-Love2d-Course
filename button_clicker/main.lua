function love.load()
  button = {}
  button.x = 200
  button.y = 200
  button.size = 50

  score = 0
  timer = 10
  gameState = 1
  newGameTimer = 0

  myFont = love.graphics.newFont(40)
  fsImage = love.graphics.newImage("img/pic.png")
end

function love.update(dt)
  if gameState == 2 then
    if timer > 0 then
      timer = timer - dt
    end

    if timer < 0 then
      timer = 0
      newGameTimer = 4
      gameState = 1
    end
  end
  if gameState == 1 then
    if newGameTimer > 0 then
      newGameTimer = newGameTimer - dt
    end

    if newGameTimer < 0 then
      newGameTimer = 0
    end
  end
end

function love.draw()
  if gameState == 2 then
    --love.graphics.setColor(255, 0, 0, 255)
    --love.graphics.circle("line", button.x, button.y, button.size)
    love.graphics.draw(fsImage, button.x - button.size, button.y - button.size, 0)
  end

  love.graphics.setFont(myFont)

  love.graphics.setColor(200, 200, 200, 255)
  love.graphics.print("Score: " .. score)
  love.graphics.print("Time: " .. math.ceil(timer), 220, 0)

  if gameState == 1 and newGameTimer == 0 then
    love.graphics.printf("Click anywhere to begin!", 0, love.graphics.getHeight()/2, love.graphics.getWidth(), "center")
  elseif gameState == 1 and newGameTimer > 0 then
    love.graphics.printf("New game loading: " .. math.ceil(newGameTimer) .. "...", 0, love.graphics.getHeight()/2, love.graphics.getWidth(), "center")
  end
end

function love.mousepressed(x, y, b, isTouch)
  if b == 1 and gameState == 2 then
    if distanceBetween(button.x, button.y, x, y) < button.size then
      score = score + 1
      button.x = math.random(button.size, love.graphics.getWidth() - button.size)
      button.y = math.random(button.size, love.graphics.getHeight() - button.size)
    end
  end

  if gameState == 1 and newGameTimer == 0 then
    gameState = 2
    timer = 10
    score = 0
  end
end

function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2 - y1)^2 + (x2 - x1)^2)
end
