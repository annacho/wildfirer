class CreateUpdateWildfires < ActiveRecord::Migration
  def change
  	drop_table :fix_wildfires

    create_table :wildfires do |t|
    	t.integer :year
    	t.string :geographic_area
    	t.integer :acres
      t.timestamps
    end
  end
end
