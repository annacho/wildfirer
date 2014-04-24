class AddForeignKeyToWildfires < ActiveRecord::Migration
  def change
  	add_column :wildfires, :location_id, :integer
  end
end
