class Transaction < ApplicationRecord
  belongs_to :user
  has_many :coins


  def deposit
    @coin = Coin.create(value:params[:value], name:params[:name], transaction_id:transaction.id)
  end

  def withdrawal
    # self.coin.update(value: params[:value])
  end
end
