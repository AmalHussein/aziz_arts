class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :kind
      t.text :description
      t.text :name
      t.text :artist
      t.decimal :price
      t.integer :quantity
      t.text :tagline
      t.text :image

      t.timestamps
    end
  end
end
