class Subscription < ApplicationRecord
  has_many :customers
  has_many :customers, through: :customer_subscriptions
end
