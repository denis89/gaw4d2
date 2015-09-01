class Van

  DEFAULT_CAPACITY = 5

  def initialize options = {}
    # @capacity = options[:capacity]
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def move_broken_bikes
    @bikes.select { |bike| bike.broken? }.garage_count
  end

  def garage_count
    @garage.count
  end

  def docking_station_count
    @docking_station.count
  end

  def move_fixed_bikes
    @bikes.select { |bike| bike.broken? }.docking_station_count
  end

  def van_count
    @van.count
  end

  def full?
    van_count == @capacity
  end
  
  def release bike
    @bikes.delete bike
  end

  def transport bike
    raise 'Station is full' if full?
    @bikes << bike
  end

  def broken?
    @broken
  end



end