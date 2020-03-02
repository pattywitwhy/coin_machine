class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.datetime :time
      t.integer :coin_id

      t.timestamps
    end
  end
end
