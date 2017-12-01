player = {}
player.body = love.physics.newBody(myWorld, 100, 100, "dynamic")
player.shape = love.physics.newRectangleShape(66, 92)
player.fixture = love.physics.newFixture(player.body, player.shape)
player.speed = 200
player.grounded = false

function playerUpdate(dt)
  if love.keyboard.isDown("a") then
    player.body:setX(player.body:getX() - player.speed * dt)
  end
  if love.keyboard.isDown("d") then
    player.body:setX(player.body:getX() + player.speed * dt)
  end
end
