FactoryBot.define do
  factory :invoice do
    user_id {Faker::Number.number(10)}
    description { Faker::Lorem.word }
    debit { Faker::Number.number(1000)}
    credit { Faker::Number.number(1000)}     
  end
end