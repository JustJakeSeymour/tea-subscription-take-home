class Api::V1::Customers::SubscriptionsController < ApplicationController
  def create
    require 'pry'; binding.pry
    CustomerSubscription.create!()
  end
end