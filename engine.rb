class Engine

  def initialize
    @engines = []
    @status = false
    @power = 0
  end

  def start_engines
    @engines << Thread.new { 4.times { |eng|
        Thread.current[:power] = 10
        puts "engine #{eng} power set to 10"
      }
    }
  end

  def stop_engines
    @engines.each do |engine|
      Thread.kill(engine)
    end
    p 'turned off all engines'
  end

end