class Account < ActiveRecord::Base
	has_secure_password
	has_many :reviews
	has_many :restaurants, :through => :reservations
    has_many :restaurants, :through => :reviews

    validates_presence_of :profile_name, :address1, :address2, :city, :postal_code, :email, :presence => true
end
