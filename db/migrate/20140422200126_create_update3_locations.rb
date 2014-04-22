class CreateUpdate3Locations < ActiveRecord::Migration
  def change
  	drop_table :locations

    create_table :locations do |t|
    	t.string :area
    	t.integer :incidence
    	t.integer :year
    	t.string :cause
      t.timestamps
    end
  end
end
