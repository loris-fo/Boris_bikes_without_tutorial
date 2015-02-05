require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

 let(:bike){double :bike, is_a?: Bike}
 let(:working_bike){double :bike, broken?: false, is_a?: Bike}
 let(:broken_bike){double :bike, broken?: true, is_a?: Bike}
 let(:holder) { ContainerHolder.new }

 it 'should accept a bike' do
   expect(holder.bike_count).to eq(0)
   holder.dock(bike)
   expect(holder.bike_count).to eq(1)
 end

 it 'should release a bike when it\'s not broken' do
		holder.dock(bike)
		expect{holder.release(bike)}.to change{holder.bike_count}.by -1
	end

	it 'should know when the station is full' do
		20.times{holder.dock(bike)}
		expect(holder).to be_full
	end

	it 'should not accept a bike when the station is full' do
		20.times{holder.dock(bike)}
		expect{holder.dock(bike)}.to raise_error 'the station is full'
	end

	it 'should give a list of available bikes' do
		holder.dock(working_bike)
		holder.dock(broken_bike)
		expect(holder.available_bikes).to eq([working_bike])
	end
end