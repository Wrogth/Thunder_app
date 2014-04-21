class AddHomepicToPortfolios < ActiveRecord::Migration
  def change
  	add_column :portfolios, :home_pic, :string
  end
end
