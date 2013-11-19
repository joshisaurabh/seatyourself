class Restaurant < ActiveRecord::Base
	belongs_to :category
	has_many :reservations
	has_many :reviews
	has_many :accounts, :through => :reviews	

  def available_times(date)
    [6, 7, 8, 9]
  end

  has_attached_file :photo, styles: {
    thumb: '200x200#',
    large: '400x600>'
  }
end
