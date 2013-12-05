class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.text :confirmation
      t.datetime :purchase_date
      t.decimal :total_price

      t.timestamps
    end
  end
end
