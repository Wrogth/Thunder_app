class AddSocialToPortfolios < ActiveRecord::Migration
  def change
  	add_column :portfolios, :twitter, :string
  	add_column :portfolios, :youtube, :string
  	add_column :portfolios, :vimeo, :string
  end
end
