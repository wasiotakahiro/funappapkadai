class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :admin_id
      t.integer :customer_id
      t.integer :reservation_id

      t.string :email
      t.string :content
      t.timestamps
    end
  end
end
