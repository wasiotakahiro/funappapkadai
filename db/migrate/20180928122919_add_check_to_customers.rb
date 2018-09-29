class AddCheckToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :check, :boolean
  end
end
