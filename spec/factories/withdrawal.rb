FactoryBot.define do
  factory :withdrawal do
    account_id {Faker::Number.number(10)}
    amount { Faker::Number.number(1000) }
    verification_code { "123456" }
    status { Faker::Number.number(10) }   
  end
end