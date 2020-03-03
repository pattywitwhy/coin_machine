class AddTransactionIdToCoins < ActiveRecord::Migration[6.0]
  def change
    add_column :coins, :transaction_id, :integer
  end
end
