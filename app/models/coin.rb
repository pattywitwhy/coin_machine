class Coin < ApplicationRecord
  belongs_to :transaction

  def calculate_total
    Coin.sum(:value)
  end

end
