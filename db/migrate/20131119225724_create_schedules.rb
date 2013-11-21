class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :s_date
      t.integer :t12b
      t.integer :t1b
      t.integer :t2b
      t.integer :t6b
      t.integer :t7b
      t.integer :t8b

      t.timestamps
    end
  end
end
