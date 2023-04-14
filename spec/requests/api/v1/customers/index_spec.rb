require 'rails_helper'

RSpec.describe 'customer subscriptions' do
  let!(:headers) { { 'CONTENT_TYPE' => 'application/json' } }
  let!(:customer) { create(:customer) }
  let!(:subscription) { create(:subscription) }
  context 'create customer_subscription' do
    it 'creates a customer_subscription from supplied request' do

      # post api_v1_customers_subscriptions_path(customer.id)
      post "/api/v1/customers/#{customer.id}/subscriptions?subscription_id=#{subscription.id}"
      
      expect(response).to be_successful
      
      created_customer_sub = CustomerSubscription.last
      
      expect(created_customer_sub.customer_id).to eq(customer.id)
      expect(created_customer_sub.subscription_id).to eq(subscription.id)
      expect(created_customer_sub.status).to eq(0)
    end
    
    it 'sends customer_subscription info back as json response' do
      
      # post api_v1_customers_subscriptions_path(customer.id)
      post "/api/v1/customers/#{customer.id}/subscriptions?subscription_id=#{subscription.id}"
      
      expect(response).to be_successful
      
      created_customer_sub = JSON.parse(response.body, symbolize_names: true)
      expect(created_customer_sub[:customer_id]).to eq(customer.id)
      expect(created_customer_sub[:subscription_id]).to eq(subscription.id)
      expect(created_customer_sub[:status]).to eq(0)
      expect(created_customer_sub[:id]).to eq(CustomerSubscription.last.id)
    end
  end
  
  context 'update customer subscription' do
    it 'changes status from 0 to 1 (active to cancelled)' do
      customer_subscription = create(:customer_subscription, customer_id: customer.id, subscription_id: subscription.id)
      expect(customer_subscription.status).to eq(0)
      
      patch "/api/v1/customers/#{customer.id}/subscriptions/#{customer_subscription.id}?status=1"
      
      expect(response).to be_successful
      
      customer_subscription.reload

      expect(customer_subscription.status).to eq(1)
    end

    it 'changes status from 0 to 1 (active to cancelled)' do
      customer_subscription = create(:customer_subscription, customer_id: customer.id, subscription_id: subscription.id)
      expect(customer_subscription.status).to eq(0)
      
      patch "/api/v1/customers/#{customer.id}/subscriptions/#{customer_subscription.id}?status=1"
      
      expect(response).to be_successful
      
      customer_subscription_response = JSON.parse(response.body, symbolize_names: true)

      expect(customer_subscription_response[:status]).to eq(1)
    end
  end
end