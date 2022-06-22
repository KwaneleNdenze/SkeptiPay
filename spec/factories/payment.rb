FactoryBot.define do
  factory :payment do
    user_id {Faker::Number.number(10)}
    amount { Faker::Number.number(1000) }
    description { Faker::Lorem.word}
    status { "pending" }
    verification_code { "123456" }     
  end
end