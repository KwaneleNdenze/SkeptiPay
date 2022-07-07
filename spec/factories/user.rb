FactoryBot.define do
  factory :user do
    username { Faker::Internet.user_name }
    email { Faker::Internet.email }
    phone_number {'0987654321'}
    password {Faker::Internet.password}
    role {'merchant'}
    type {'merchant'}
  end
end