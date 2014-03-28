class RemoveUserIdIdFromPortfolios < ActiveRecord::Migration
  def change
     remove_reference :portfolios, :user_id
  end
end