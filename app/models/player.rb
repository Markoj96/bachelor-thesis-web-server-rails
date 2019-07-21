class Player < ApplicationRecord
  has_secure_password

  # has_many :vehicles
  enum gender: [:male, :female]
  enum role: [:player, :admin]
end
