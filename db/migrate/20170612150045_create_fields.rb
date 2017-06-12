class CreateFields < ActiveRecord::Migration[5.0]
  def change
    create_table :fields do |t|
      t.string :title
      t.string :description
      t.integer :size
      t.string :location
      t.date :availability
      t.string :floor_type
      t.integer :price

      t.timestamps
    end
  end
end
