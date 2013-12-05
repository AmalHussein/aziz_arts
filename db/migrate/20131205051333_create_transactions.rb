class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.text :confirmation
      t.datetime :purchase_date
      t.decimal :price

      t.timestamps
    end
  end
end
