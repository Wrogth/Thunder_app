class AddAnyToAll < ActiveRecord::Migration
  def change
  	add_column :portfolios, :originally_from, :string
  	add_column :portfolios, :website, :string
  	add_column :portfolios, :phone_number, :string
  	add_column :portfolios, :video_reel_name, :string
  	add_column :portfolios, :video_reel_url, :string
  	add_column :portfolios, :fav_director, :string
  	add_column :portfolios, :fav_movie, :string
  	add_column :portfolios, :fav_book, :string
  	add_column :portfolios, :fav_quote, :string
  	add_column :portfolios, :fav_video_name, :string
  	add_column :portfolios, :fav_video_url, :string
  	add_column :portfolios, :position, :string
  	add_column :portfolios, :prev_clients, :string
  	add_column :portfolios, :skills, :string
  	add_column :portfolios, :short_goals, :text
  	add_column :portfolios, :long_goals, :text
  end
end
