class Transaction < ApplicationRecord
  has_many :coins
  has_many :withdrawals
  # belongs_to :user


  def deposit
    # @coin = Coin.create(value:params[:value], name:params[:name], transaction_id:transaction.id)
    Coin.create
  end

  def withdrawal
    @withdrawal = Withdrawal.new(coin_id: self.coin_id, transaction_id: self.transaction.id)
    Coin.destroy
  end
end
