class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :reserve_date
      t.time :start_time
      t.time :end_time
      t.integer :party_count
      t.string :status
      t.integer :account_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
