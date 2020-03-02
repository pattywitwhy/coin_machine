class Coin < ApplicationRecord

  def calculate_total
    Coin.sum(:value)
  end
  
end
