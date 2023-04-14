FactoryBot.define do
  factory :customer do
    name { Faker::FunnyName.name }
    email { Faker::Internet.email }
  end
end
