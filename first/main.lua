message = 0
condition = -42

if condition > 0 then
  message = 1
elseif condition < -100 then
  message = -1
elseif condition == -42 then
  message = "Condition is -42!"
else
  message = "No conditions met!"
end

function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  love.graphics.print(message)
end
