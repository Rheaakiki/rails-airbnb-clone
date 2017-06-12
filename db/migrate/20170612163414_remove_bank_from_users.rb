class RemoveBankFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :bank_details, :string
  end
end
