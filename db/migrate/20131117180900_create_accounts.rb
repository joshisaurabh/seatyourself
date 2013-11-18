class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_type
      t.string :profile_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :postal_code
      t.integer :telephone
      t.integer :mobile
      t.string :email
      t.date :date_opened
      t.integer :account_number
      t.string :password_digest

      t.timestamps
    end
  end
end
