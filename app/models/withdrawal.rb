class Withdrawal < ApplicationRecord
  belongs_to :transaction
  belongs_to :user
  has_many :coins
end
