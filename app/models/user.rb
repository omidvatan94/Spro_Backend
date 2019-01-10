class User < ApplicationRecord
  has_many :favorites
  has_many :beans, through: :favorites
  validates :name, :user_name, presence: true
  validates :user_name, uniqueness: true
  has_secure_password
end
