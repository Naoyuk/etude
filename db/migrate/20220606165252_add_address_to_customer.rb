class AddAddressToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :address1, :string
    add_column :customers, :address2, :string
  end
end
