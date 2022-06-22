FactoryBot.define do
  factory :notification do
    user_id {Faker::Number.number(10)}
    recipient { Faker::Lorem.word }
    subject { Faker::Lorem.word}
    text { Faker::Lorem.word }
    status { "read" }     
  end
end