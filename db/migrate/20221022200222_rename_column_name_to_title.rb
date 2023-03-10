class RenameColumnNameToTitle < ActiveRecord::Migration[7.0]
  def change
    rename_column :items, :name, :title
  end
end
