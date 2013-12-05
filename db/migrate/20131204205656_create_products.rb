class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :kind
      t.text :description
      t.text :name
      t.text :artist
      t.decimal :price,  precision: 8, scale: 2
      t.integer :quantity
      t.text :tagline
      t.text :image, array: true, default: []

      t.timestamps
    end
  end
end
