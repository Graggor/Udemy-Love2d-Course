message = 0

-- Lua tables are associative arrays (key/value pairs) works just like php ([1] = value) Index starts at 1, not 0
testScores = {94, 40, 98}

-- tables can have variables assigned to them (tablename.variablename) it is not in the table itself
testScores.subject = "History"

-- For loop for each item in array testScores (i is the key, s is value) do whatever is inside
for i,s in ipairs(testScores) do
  message = message + s
end

function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  love.graphics.print(testScores.subject)
end
