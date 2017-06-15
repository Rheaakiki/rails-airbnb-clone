class ChangeLocationToAddress < ActiveRecord::Migration[5.0]
  def change
    rename_column :fields, :location, :address
  end
end
