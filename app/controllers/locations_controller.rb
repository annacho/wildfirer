class LocationsController < ApplicationController
	def index
		@locations = Locations.all
	end

	def new 
		@new_location = Locations.new
	end

	def create
		@new_location = Locations.new(location_params)
		if @new_location.save
			redirect_to locations_path
		else
			redirect_to new_location_path
		end
	end

	private 

	def location_params
		params.require(:locations).permit!
	end

end
