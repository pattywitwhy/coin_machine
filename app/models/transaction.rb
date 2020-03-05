class Transaction < ApplicationRecord
  has_many :coins
  has_many :withdrawls
  belongs_to :user


  def deposit
    # @coin = Coin.create(value:params[:value], name:params[:name], transaction_id:transaction.id)
    Coin.create
  end

  # def withdrawal
  #   @coin.destroy
  # end
end
