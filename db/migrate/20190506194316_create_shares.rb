class CreateShares < ActiveRecord::Migration[5.2]
  def change
    create_table :shares do |t|
      t.integer :user_id
      t.string :stock_symbol
      t.float :purchase_value

      t.timestamps
    end
  end
end
