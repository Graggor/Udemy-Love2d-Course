message = 0
param = 500

function increaseMessage(i)
  i = i * 2
  return i
end

message = increaseMessage(param)

function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  love.graphics.print(message)
end
