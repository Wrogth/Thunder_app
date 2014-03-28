class AddUserIdToPortfolios < ActiveRecord::Migration
  def change
    add_reference :portfolios, :user_id, index: true
  end
end
