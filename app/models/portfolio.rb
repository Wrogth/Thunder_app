class Portfolio < ActiveRecord::Base
	belongs_to :user
	has_many :videos
end
