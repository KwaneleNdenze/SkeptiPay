FactoryBot.define do
  factory :account do
   user_id { Faker::Number.number(1) }        
  end
end