class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :feed
      t.string :cover_image
      t.text :bio

      t.timestamps
    end
  end
end
