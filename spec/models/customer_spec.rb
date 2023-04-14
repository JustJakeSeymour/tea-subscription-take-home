require 'rails_helper'

RSpec.describe Customer, type: :model do
  context 'relations' do
    it { should have_many(:customer_subscriptions) }
    it { should have_many(:subscriptions).through(:customer_subscriptions) }
  end
end
