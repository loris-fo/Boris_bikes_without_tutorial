require 'bike'



describe Bike do
	
	it 'should be created without being broken' do
		bike = Bike.new
		expect(bike).not_to be_broken
	end

	it 'should break' do
		bike = Bike.new
		bike.break!
		expect(bike).to be_broken
	end
end
