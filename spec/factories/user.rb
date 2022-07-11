FactoryBot.define do
  factory :user do
    username { Faker::Internet.user_name }
    email { Faker::Internet.email }
    phone_number {'0987654321'}
    password {Faker::Internet.password}
    role {'merchant'}

    trait :merchant do
      type { 'User::Merchant' }
    end
    trait :client do
      type { 'User::Client' }
    end
    trait :admin do
      type { 'User::Admin' }
    end
    
  end
end