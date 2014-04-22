class CreateUpdate2Wildfires < ActiveRecord::Migration
  def change
  	drop_table :wildfires

    create_table :wildfires do |t|
    	t.integer :year
    	t.string :area
    	t.integer :acres
    	t.string :cause
      t.timestamps
    end
  end
end
