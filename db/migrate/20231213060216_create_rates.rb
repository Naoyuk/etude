class CreateRates < ActiveRecord::Migration[7.0]
  def change
    create_table :rates do |t|
      t.float :usd
      t.float :cad
      t.float :jpy
      t.float :eur

      t.timestamps
    end
  end
end
