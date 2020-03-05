class CreateWithdrawals < ActiveRecord::Migration[6.0]
  def change
    create_table :withdrawals do |t|
      t.integer :coin_id

      t.timestamps
    end
  end
end
