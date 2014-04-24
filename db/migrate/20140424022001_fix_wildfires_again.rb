class FixWildfiresAgain < ActiveRecord::Migration
  def change
  	drop_table :wildfires

  	create_table	:wildfires do |t|
  		t.integer	:year
    	t.integer	:acres
    	t.string 	:cause
    	t.datetime	:created_at
    	t.datetime :updated_at
    	t.string	:file
    	t.integer	:location_id
    end
  end
end
