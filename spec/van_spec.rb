require_relative './spec_helper'
require_relative '../lib/bike'
require_relative '../lib/docking_station'
require_relative '../lib/van'
# we're describing the functionality of the specific class, Bike
describe Van do
  
    let(:van) { Van.new({capacity: 10}) }
  let(:bike) { Bike.new }

    def fill_van van
    10.times { van.transport(Van.new) }
    end

    it 'should be empty after we build it' do
    expect(van.bike_count).to eq 0
     end

   it 'should know when it has reached capacity' do
    fill_van van

    expect(van.full?).to be true
   end

# it 'should be able to move broken bikes to the garage' do
#   expect(van.move_broken_bikes).to be true
# end

# it 'should be able to move fixed bikes to the docking station' do
#   expect(van.move_fixed_bikes).to be true
# end


# it 'should not accept a bike if it\'s full' do
#   fill_van van

#   expect{van.transport(bike)}.to raise_error 'Station is full'
# end




end