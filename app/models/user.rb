class User < ApplicationRecord
  has_many :transactions
  has_many :withdrawls through: :transactions
  has_many :coins, through: :transactions


  before_create do |user|
    user.api_key = user.generate_api_key
  end

  def generate_api_key

    api_key = ""

    loop do
      token = SecureRandom.hex(10)
      break token unless User.exists?(api_key: token)
    end
  end

  # def store_api_keys
  #   @api_keys = []
  # end

  def w
    
  end
end
