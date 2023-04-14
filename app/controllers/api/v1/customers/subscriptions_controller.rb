class Api::V1::Customers::SubscriptionsController < ApplicationController
  def index
    customer = Customer.find(params[:id])
    render json: customer.customer_subscriptions
  end
  
  def create
    customer_sub = CustomerSubscription.create!(customer_id: params[:id], subscription_id: params[:subscription_id])

    render json: customer_sub
  end

  def update
    customer_sub = CustomerSubscription.find(params[:id])
    customer_sub.update(status: params[:status])

    render json: customer_sub
  end
end