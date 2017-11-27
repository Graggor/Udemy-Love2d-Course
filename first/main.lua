message = 0
param = 500

-- This function squares a value
function increaseMessage(i)
  local var = i
  var = var * var
  return var
end

message = increaseMessage(param)

function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  love.graphics.print(message)
end
