class AddRestaurantIdToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :restaurant_id, :integer
  end
end
