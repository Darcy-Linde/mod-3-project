class User < ApplicationRecord
  has_many :shares
  has_many :stocks, through: :shares
end
