class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 3..16 }
  validates :password, presence: true
end
