class CreateUpdateLocations < ActiveRecord::Migration
  def change
  	drop_table :locations

    create_table :locations do |t|
    	t.string :area
    	t.integer :incidence
    	t.integer :year
      t.timestamps
    end
  end
end
