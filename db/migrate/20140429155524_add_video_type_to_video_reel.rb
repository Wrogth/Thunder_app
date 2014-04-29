class AddVideoTypeToVideoReel < ActiveRecord::Migration
  def change
  	add_column :portfolios, :video_reel_type, :string
  	add_column :portfolios, :fav_video_type, :string
  end
end
