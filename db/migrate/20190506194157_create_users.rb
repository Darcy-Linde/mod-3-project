class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.float :money, default: 5000
      t.float :net_gain, default: 0

      t.timestamps
    end
  end
end
