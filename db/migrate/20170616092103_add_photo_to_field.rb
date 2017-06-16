class AddPhotoToField < ActiveRecord::Migration[5.0]
  def change
    add_column :fields, :photo, :string
  end
end
