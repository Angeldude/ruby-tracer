require './utils/factories'
include Factories

starting_point = point(0,1,0)
velocity_vector = normalize(vector(1,1,0))

gravity_vector = vector(0, -0.1, 0)
wind_vector = vector(-0.01, 0, 0)

projectile = {
  position: starting_point,
  velocity: velocity_vector
}

environment = {
  gravity: gravity_vector,
  wind: wind_vector
}

def tick(env, proj)
  {
    position: proj[:position] + proj[:velocity],
    velocity: (proj[:velocity] + env[:gravity]) + env[:wind]
  }
end

while projectile[:position].y > 0
  puts "#{projectile[:position].x}, #{projectile[:position].y}"
  projectile = tick(environment, projectile)
  sleep 0.1
end