class AddTransactionIdToWithdrawals < ActiveRecord::Migration[6.0]
  def change
    add_column :withdrawals, :transaction_id, :integer
  end
end
