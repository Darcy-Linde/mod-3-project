class Stock < ApplicationRecord
  has_many :users
  has_many :users, through: :shares
end
