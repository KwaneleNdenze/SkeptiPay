FactoryBot.define do
  factory :withdrawal do
    user_id {Faker::Number.number(10)}
    amount { Faker::Number.number(1000) }
    verification_code { "123456" }
    status { "pending" }   
  end
end