class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.integer :area
    	t.integer :incidence
    	t.integer :year
      t.timestamps
    end
  end
end
