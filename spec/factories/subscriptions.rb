FactoryBot.define do
  factory :subscription do
    title { Faker::Tea.type }
    price { Faker::Number.within(range: 1.5, to: 5.0) }
    status { 0 }
    frequency { 14 }
  end
end
