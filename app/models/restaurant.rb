class Restaurant < ActiveRecord::Base
	belongs_to :category
	has_many :reservations
	has_many :reviews
	has_many :accounts, :through => :reviews	
end
