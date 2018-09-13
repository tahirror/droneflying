require './drone'

command = 0
drone = Drone.new
while command < 11 || command > 0
  p '1 --> Take off'
  p '2 --> Move forward'
  p '3 --> Move backward'
  p '4 --> Move left'
  p '5 --> Move right'
  p '6 --> Move up'
  p '7 --> Move down'
  p '8 --> Stabilizing'
  p '9 --> Land'
  p '10 --> Exit'

  command = gets.to_i
  case command
    when 1
      drone.take_off
    when 2
      drone.move_forward
    when 3
      drone.move_backward
    when 4
      drone.move_left
    when 5
      drone.move_right
    when 6
      drone.move_up
    when 7
      drone.move_down
    when 8
      drone.stabilize
    when 9
      drone.land
    when 10
      exit
  end

end
