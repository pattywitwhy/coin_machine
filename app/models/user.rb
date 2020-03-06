class User < ApplicationRecord
  # has_secure_password

  has_many :transactions
  has_many :withdrawals, through: :transactions
  has_many :coins, through: :transactions

  ALGORITHM = 'HS256'

  def self.encode(payload)
    JWT.encode(
      payload,
      auth_secret,
      ALGORITHM)
  end

  def self.decode(token)
    JWT.decode(
      token,
      auth_secret,
      true, { algorithm: ALGORITHM }).first
  end
  
  def self.auth_secret
    ENV["MY_SECRET_KEY"]
  end
  
  # before_create do |user|
  #   user.api_key = user.generate_api_key
  # end

  # def generate_api_key

  #   api_key = ""

  #   loop do
  #     token = SecureRandom.hex(10)
  #     break token unless User.exists?(api_key: token)
  #   end
  # end

  # def store_api_keys
  #   @api_keys = []
  # end
end
