require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise "no bikes available"
    else
      @bikes.pop
    end
  end 

  def dock(bike)
    @bikes.push(bike)
  end

end


