require 'rails_helper'

RSpec.describe User, type: :model do

  context "valid user" do
    it "has a valid user" do
      expect(build(:user)).to be_valid
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

      it { should have_many :withdrawals} 
      it { should have_many :invoices} 
      it { should have_many :notifications} 
      it { should have_many :payments} 
       

    end
  end
end