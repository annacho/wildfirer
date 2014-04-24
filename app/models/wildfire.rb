class Wildfire < ActiveRecord::Base
	belongs_to :location

	mount_uploader :file, FileUploader

	# def self.search(query)
	# 	where('year LIKE? OR area LIKE? OR acres LIKE ? OR cause LIKE ?', "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%")
	# 	# if search
	# 	# where(‘wildfires.acres > ?’, "#{search}") 
	# 	# else
	# 	# find(:all)
	# 	# end
	# end

	# def self.search2(query)
	# 	Location.joins(:wildfires).where(‘wildfires.acres > ?’, "%#{query}")
	# end

end
