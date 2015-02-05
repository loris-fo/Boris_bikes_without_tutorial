require_relative 'bike_container'

class Van
	include BikeContainer

	def initialize(options ={})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def transport(bike)
		
	end
end