class LocationsController < ApplicationController

	def index
		@locations = Location.all
	end

	def new 
		@new_location = Location.new
	end

	def create
		@new_location = Location.new(location_params)
		if @new_location.save
			redirect_to locations_path
		else
			redirect_to new_location_path
		end
	end

	def destroy
		@deleted_location = Location.find(params[:id])

		if @deleted_location.delete
			redirect_to locations_path
		end
	end

	# GET "/locations/search"
	def search
		@locations = Location.search(params[:search])
	end

	private 

	def location_params
		params.require(:location).permit!
	end

end
