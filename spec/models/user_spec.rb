require 'rails_helper'

RSpec.describe User, type: :model do

  context "valid Factory" do
    it "has a valid factory" do
      expect(build(:user)).to be_valid
    end
  end

  context "Validations" do
    before { create(:user) }

    context "presence" do
      it { should validate_presence_of :username }
      it { should validate_presence_of :phone_number }
      it { should validate_presence_of :email }
      it { should validate_presence_of :role }
      it { should validate_presence_of :encrypted_password }
    end
  end
end