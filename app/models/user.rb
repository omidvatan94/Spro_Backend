class User < ApplicationRecord
  has_many :favorites
  has_many :beans, through: :favorites
  validates :name, :username, presence: true
  validates :username, uniqueness: true
  has_secure_password
end
