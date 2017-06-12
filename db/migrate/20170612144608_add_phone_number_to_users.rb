class AddPhoneNumberToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :bank_details, :string
  end
end
