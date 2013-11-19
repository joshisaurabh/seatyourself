class AddPhotoToRestaurants < ActiveRecord::Migration
  def change
    add_attachment :restaurants, :photo
  end
end
