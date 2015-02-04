require 'docking_station'
require 'bike'

describe DockingStation do
		
		let(:bike){Bike.new}
		let(:station){DockingStation.new}
	
	it 'should accept a bike' do
		expect{station.dock(bike)}.to change{station.bike_count}.by 1
	end

	it 'should release a bike when it\'s not broken' do
		station.dock(bike)
		expect{station.release(bike)}.to change{station.bike_count}.by -1
	end

	it 'should know when the station is full' do
		20.times{station.dock(bike)}
		expect(station).to be_full
	end

	it 'should not accept a bike when the station is full' do
		20.times{station.dock(bike)}
		expect{station.dock(bike)}.to raise_error 'the station is full'
	end

	it 'should give a list of available bikes' do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		station.dock(working_bike)
		station.dock(broken_bike)
		expect(station.available_bikes).to eq([working_bike])
	end

end



