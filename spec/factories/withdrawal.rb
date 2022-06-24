FactoryBot.define do
  factory :withdrawal do
    account_id {Faker::Number.number(1)}
    amount { Faker::Number.number(5) }
    verification_code { "123456" }
    status { Faker::Number.number(1) }   
  end
end