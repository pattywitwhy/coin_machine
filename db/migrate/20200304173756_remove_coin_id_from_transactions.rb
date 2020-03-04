class RemoveCoinIdFromTransactions < ActiveRecord::Migration[6.0]
  def change

    remove_column :transactions, :coin_id, :integer
  end
end
