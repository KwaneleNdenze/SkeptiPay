FactoryBot.define do
  factory :notification do
    account_id {Faker::Number.number(1)}
    recipient { Faker::Lorem.word }
    subject { Faker::Lorem.word}
    text { Faker::Lorem.word }
    status { Faker::Number.number(1) }     
  end
end