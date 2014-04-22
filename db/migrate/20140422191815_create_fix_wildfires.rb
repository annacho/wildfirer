class CreateFixWildfires < ActiveRecord::Migration
  def change
  	drop_table :wildfires

    create_table :fix_wildfires do |t|
    	t.integer :year
    	t.string :geographic_area
    	t.integer :acres
      t.timestamps
    end
  end
end
