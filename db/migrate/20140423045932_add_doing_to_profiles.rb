class AddDoingToProfiles < ActiveRecord::Migration
  def change
  	add_column :portfolios, :doing_now, :string
  	add_column :portfolios, :currently, :string
  end
end
