class Review < ActiveRecord::Base
	belongs_to :account
	belongs_to :restaurant
end
