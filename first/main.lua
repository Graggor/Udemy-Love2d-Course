message = 0

-- Lua tables are associative arrays (key/value pairs) works just like php ([1] = value) Index starts at 1, not 0
testScores = {}

-- table.insert inserts the value at the end of the already excisting array
table.insert(testScores, 94)
table.insert(testScores, 40)
table.insert(testScores, 98)

message = testScores[2]

function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  love.graphics.print(message)
end
