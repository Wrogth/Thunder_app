class AddPortfolioIdToVideos < ActiveRecord::Migration
  def change
    add_reference :videos, :portfolio, index: true
  end
end
