class WildfiresController < ApplicationController
	def index
		if params[:search]
			@wildfires = Wildfires.search(params[:search])
		else
			@wildfires = Wildfires.all
		end
	end

	def search
  	@wildfires = Wildfires.search params[:search]
	end

	def new 
		@new_wildfire = Wildfires.new
	end

	def create
		@new_wildfire = Wildfires.new(wildfire_params)
		if @new_wildfire.save
			redirect_to wildfires_path
		else
			redirect_to new_wildfire_path
		end
	end

	private 

	def wildfire_params
		params.require(:wildfires).permit!
	end

end
