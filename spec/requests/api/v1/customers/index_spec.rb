require 'rails_helper'

RSpec.describe 'customer subscriptions' do
  let!(:headers) { { 'CONTENT_TYPE' => 'application/json' } }
  let!(:customer) { create(:customer) }
  let!(:subscription) { create(:subscription) }
  context 'create customer_subscription' do
    it 'creates a customer_subscription from supplied request' do

      post api_v1_customers_subscriptions_path(customer.id), headers: headers, params: { subscription_id: subscription.id }

      expect(response).to be_successful

      created_customer_sub = CustomerSubscription.last

      expect(created_customer_sub.customer_id).to eq(customer.id)
      expect(created_customer_sub.subscription_id).to eq(subscription.id)
      expect(created_customer_sub.status).to eq(0)
    end
  end
end