require 'docking_station'

describe DockingStation do
		
	it 'should accept a bike' do
		bike = Bike.new
		station = DockingStation.new
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it 'should release a bike when it\'s not broken' do
		bike = Bike.new
		station = DockingStation.new
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)
	end
end

