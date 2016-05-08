class Channel < ActiveRecord::Base
  # Remember to create a migration!
  has_many :subscriptions
  has_many :subscribers, through: :subscriptions, source: :user

  validates :name, :callsign, presence: true
end
