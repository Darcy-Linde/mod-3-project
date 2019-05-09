class Transactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.boolean :bought
      t.string :stock_symbol
      t.float :stock_price
      t.integer :quantity
      t.float :transaction_total

      t.timestamps
    end
  end
end
