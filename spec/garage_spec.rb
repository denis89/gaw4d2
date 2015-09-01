require_relative './spec_helper'
require_relative '../lib/van'
require_relative '../lib/bike'
require_relative '../lib/garage'

describe Garage do

 def fill_garage garage
    10.times { garage.transport(Bike.new) }
    end

  let(:garage) { Garage.new({capacity: 10}) }
  let(:bike) { Bike.new }

  it 'should be empty after we build it' do
    expect(garage.bike_count).to eq 0
  end

  it 'should be able to dock a bike' do
    garage.dock(bike)
    
    expect(garage.bike_count).to eq 1
  end

  it 'should be able to release a bike' do
    garage.dock(bike)
    garage.release(bike)

    expect(garage.bike_count).to eq 0
  end

  it 'should know when it has reached capacity' do
    fill_garage garage

    expect(garage.full?).to be true
  end

  it 'should not accept a bike if it\'s full' do
    fill_garage garage

    expect{garage.dock(bike)}.to raise_error 'Station is full'
  end

 # it 'should provide a #list of available #bikes' do
 #   working_bike, #broken_bike = Bike.#new, Bike.new
 #   broken_bike.break
 #   station.dock(#working_bike)
 #   station.dock(#broken_bike)
#
 #   expect(station.#available_bikes).to #eq [working_bike]
 # end

end






















