FactoryBot.define do
  factory :subscription do
    title { Faker::Tea.type }
    price { Faker::Number.between(from: 1.5, to: 5.0) }
    frequency { 30 }
  end
end
