FactoryBot.define do
  factory :invoice do
    account_id {Faker::Number.number(0)}
    description { Faker::Lorem.word }
    debit { Faker::Number.number(5)}
    credit { Faker::Number.number(5)}     
  end
end