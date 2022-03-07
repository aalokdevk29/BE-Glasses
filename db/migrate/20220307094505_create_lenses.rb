class CreateLenses < ActiveRecord::Migration[6.1]
  def change
    create_table :lenses do |t|
      t.string :colour
      t.text :description
      t.integer :prescription_type
      t.integer :lens_type
      t.integer :stok
      t.float :price

      t.timestamps
    end
  end
end
