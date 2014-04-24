class AddFileToWildfires < ActiveRecord::Migration
  def change
  	add_column :wildfires, :file, :string
  end
end
