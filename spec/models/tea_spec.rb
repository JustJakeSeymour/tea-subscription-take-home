require 'rails_helper'

RSpec.describe Tea, type: :model do
  context 'relations' do
    it { should belong_to(:subscription) }
  end
end
