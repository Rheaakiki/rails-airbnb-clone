class AddOwnerToFields < ActiveRecord::Migration[5.0]
  def change
    add_column :fields, :owner_id, :integer
  end


end
