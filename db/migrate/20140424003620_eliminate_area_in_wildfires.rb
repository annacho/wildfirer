class EliminateAreaInWildfires < ActiveRecord::Migration
  def change
  	remove_column :wildfires, :area, :string
  end
end
