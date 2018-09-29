class AddCheckColumnToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :check, :boolean, default: false, null: false
  end
end
