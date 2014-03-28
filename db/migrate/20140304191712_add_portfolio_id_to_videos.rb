class AddPortfolioIdToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :portfolio_id, :integer
    add_index :video, :portfolio_id
  end
end
