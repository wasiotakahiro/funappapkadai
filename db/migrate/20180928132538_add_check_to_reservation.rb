class AddCheckToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :check, :boolean, default: false, null: false
  end
end
