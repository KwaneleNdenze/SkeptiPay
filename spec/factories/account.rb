FactoryBot.define do
  factory :account do
   user { build(:user) }       
  end
end