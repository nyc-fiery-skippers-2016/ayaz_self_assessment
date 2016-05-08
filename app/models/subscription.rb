class Subscription < ActiveRecord::Base
  # Remember to create a migration!
  # belongs_to :subscribers, class_name: "User", : :user_id
  belongs_to :channel
  belongs_to :user
end
