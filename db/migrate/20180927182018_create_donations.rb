class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :region
      t.date :pickup_date
      t.time :pickup_time
      t.string :donation
      t.string :pickup_location
      t.string :runner
      t.string :distributor

      t.timestamps
    end
    add_index :donations, :email, unique: true
  end
end
