class User < ActiveRecord::Base
  # Remember to create a migration!
  has_secure_password

  has_many :subscriptions
  has_many :channels, through: :subscriptions

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
