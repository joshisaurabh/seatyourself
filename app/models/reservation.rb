class Reservation < ActiveRecord::Base
	belongs_to :account
	belongs_to :restaurant
	belongs_to :cuisine
end
