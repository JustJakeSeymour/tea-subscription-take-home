class Api::V1::Customers::SubscriptionsController < ApplicationController
  def create
    customer_sub = CustomerSubscription.create!(customer_id: params[:id], subscription_id: params[:subscription_id])

    render json: CustomerSubcriptionSerializer.format(customer_sub)
  end
end