FactoryBot.define do
  factory :subscription do
    name { Faker::Tea.variety }
    price { Faker::Number.within(range: 1.5, to: 5.0) }
    active { true }
  end
end
