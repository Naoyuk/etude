class AddColumnsToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :item_code, :string
    add_column :items, :upc, :string
    add_column :items, :brand, :string
    add_column :items, :size, :integer
    add_column :items, :pack, :integer
    add_column :items, :z_price, :float
    add_column :items, :stock, :integer
    add_column :items, :depertment, :string
    add_column :items, :availability_status, :integer
    add_column :items, :case_upc, :float
    add_column :items, :asin, :string
    add_column :items, :ean_upc, :string
    add_column :items, :model_number, :string
    add_column :items, :description, :text
    add_column :items, :replenishment_status, :integer
    add_column :items, :effective_date, :date
    add_column :items, :current_cost, :float
    add_column :items, :cost, :float
    add_column :items, :current_cost_currency, :string
    add_column :items, :cost_currency, :string
  end
end
