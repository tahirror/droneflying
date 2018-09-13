require './orientation_sensor'
require './engine'

class Drone < OrientationSensor
  def initialize
    @flying_status = false
    @eng = Engine.new
  end

  def take_off
    if @flying_status == false
      @flying_status = true
      p 'Started all engines'
      @eng.start_engines
    else
      p 'Drone is flying and cant take_off ...'
    end
  end

  def land
    if @flying_status == false
      p 'This drone is not in the air and cant not land'
    else
      @flying_status = false
      p 'Drone has landed'
      @eng.stop_engines
    end
  end

  def move_forward
    if @flying_status == true
      p 'Moving forward'
    else
      p 'Drone is not in the air'
    end
  end

  def move_backward
    if @flying_status == true
      p 'Moving backward'
    else
      p 'Drone is not in the air'
    end
  end

  def move_left
    if @flying_status == true
      p 'Moving left'
    else
      p 'Drone is not in the air'
    end
  end

  def move_right
    if @flying_status == true
      p 'Moving right'
    else
      p 'Drone is not in the air'
    end
  end

  def move_up
    if @flying_status == true
      p 'Moving up'
    else
      p 'Drone is not in the air'
    end
  end

  def move_down
    if @flying_status == true
      p 'Moving down'
    else
      p 'Drone is not in the air'
    end
  end

  def stabilize
    if @flying_status == true
      p 'Stabilizing'
    else
      p 'Drone is not in the air'
    end
  end


end