FactoryBot.define do
  factory :payment do
    account_id {Faker::Number.number(1)}
    amount { Faker::Number.number(5) }
    description { Faker::Lorem.word}
    status { Faker::Number.number(1) } 
    verification_code { "123456" }     
  end
end