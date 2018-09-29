class RemoveCheckFromCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :check, :boolean
  end
end
