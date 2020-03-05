class Withdrawal < ApplicationRecord
  # belongs_to :transaction
  has_one :deposit, foreign_key: "withdrawal_id", class_name: "Transaction"
  # belongs_to :user
  has_many :coins


  # def remove_coin
  #   self.
  # end
end
