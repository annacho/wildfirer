class CreateWildfires < ActiveRecord::Migration
  def change
    create_table :wildfires do |t|
    	t.integer :area
    	t.integer :incidence
    	t.integer :year
      t.timestamps
    end
  end
end
