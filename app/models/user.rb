class User < ApplicationRecord
  has_many :shares
  has_many :transactions
end
