class Location < ActiveRecord::Base
	has_many :wildfires

	## SCOPES ##
	scope :human_caused, -> { where(cause: "Human") }
	scope :incidence, -> { where('incidence > ?', 1000) }
	scope :large_fire, -> { where('acres > ?', 100000) }

	def self.human_caused(cause)
			where('cause = ?', cause)
	end	

	def self.search(params)
		area = params[:area]
		incidence = params[:incidence]
		year = params[:year]
		cause = params[:cause]

		search = Location.all

		if area.present?
			search = search.where('area LIKE ?', "%#{area}")
		end

		if incidence.present?
			search = search.where('incidence LIKE ?', "%#{incidence}")
		end

		if year.present?
			search = search.where('year LIKE ?', "%#{year}")
		end

		if cause.present?
			search = search.human_caused(cause)
		end

		search
	end
	
end
