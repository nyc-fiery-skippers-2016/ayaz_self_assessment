class User < ActiveRecord::Base
  # Remember to create a migration!
  has_secure_password

  has_many :subscriptions
  has_many :channels, through: :subscriptions

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true


  def total_cost(channels)
  	sum = 0
  	channels.each do |channel|
  		sum += channel.price_per_password
  	end
  	return sum
  end




end
