class WildfiresController < ApplicationController
	def index
		@wildfires = Wildfire.all
	end

	def search
  	@wildfires = Wildfires.search params[:search]
	end

	def new 
		@new_wildfire = Wildfire.new
	end

	def create
		@new_wildfire = Wildfire.new(wildfire_params)
		if @new_wildfire.save
			redirect_to wildfires_path(@new_wildfire)
		else
			render new_wildfire_path
		end
	end

	def show
		@wildfire = Wildfire.find(params[:id])
	end

	def destroy
		@deleted_wildfire = Wildfire.find(params[:id])

		if @deleted_wildfire.delete
			redirect_to wildfires_path
		end
	end


	# def update
	# @wildfire = Wildfire.find(params[:id])
	# if @wildfire.update_attributes(wildfire_params)
	# 	redirect_to wildfires_path
	# else
	# 	redirect_to edit_wildfire_path
	# end
	# end 

	def download_file
		@wildfire = Wildfire.find(params[:id])
		upload_file = @wildfire.file
		send_file upload_file.path
	end

	private 

	def wildfire_params
		params.require(:wildfire).permit!
	end

end
