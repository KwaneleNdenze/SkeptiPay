require 'rails_helper'

RSpec.describe User, type: :model do

  context "valid user" do
    it "has a valid user" do
      expect(build(:user, :merchant)).to be_valid
    end
  end

  context "Validations" do
    before { build_stubbed(:user) }

    context "presence" do
      it { should validate_presence_of :username }
      it { should validate_presence_of :phone_number }
      it { should validate_presence_of :email }
      it { should validate_presence_of :role }
      it { should validate_presence_of :encrypted_password }
      it { should validate_presence_of :type }

      it { should have_one :account} 
    end
  end

  describe '#merchant?' do
    it 'returns true if user type is Merchant' do
      user = create(:user, :merchant)
      expect(user.merchant?).to be_truthy
    end
  end

  describe '#client?' do
    it 'returns true if user type is Client' do
      user = create(:user, :client)
      expect(user.client?).to be_truthy
    end
  end

  describe '#admin?' do
    it 'returns true if user type is Admin' do
      user = create(:user, :admin)
      expect(user.admin?).to be_truthy
    end
  end
  
end