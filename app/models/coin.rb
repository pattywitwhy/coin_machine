class Coin < ApplicationRecord
  # belongs_to :transaction

  has_one :deposit, foreign_key: "coin_id", class_name: "Transaction"
  


  def calculate_total
    Coin.sum(:value)
  end

end
