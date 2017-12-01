player = {}
player.body = love.physics.newBody(myWorld, 70, 280, "dynamic")
player.shape = love.physics.newRectangleShape(66, 92)
player.fixture = love.physics.newFixture(player.body, player.shape)
player.speed = 200
player.grounded = false
player.direction = 1
player.sprite = sprites.player_stand
player.body:setFixedRotation(true)

function playerUpdate(dt)
  if gameState == 2 then
    if love.keyboard.isDown("a") then
      player.body:setX(player.body:getX() - player.speed * dt)
      player.direction = -1
    end
    if love.keyboard.isDown("d") then
      player.body:setX(player.body:getX() + player.speed * dt)
      player.direction = 1
    end
  end

  if player.grounded == true then
    player.sprite = sprites.player_stand
  else
    player.sprite = sprites.player_jump
  end
end
