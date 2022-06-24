require 'rails_helper'

RSpec.describe Account, type: :model do

  context "valid account" do
    it "has a valid account" do
      expect(build(:account)).to be_valid
    end
  end

  context "Validations" do
    before { build_stubbed(:account) }

    context "presence" do
      it { should belong_to :user }  
      it { should have_many :invoices } 
      it { should have_many :withdrawals } 
      it { should have_many :notifications } 
      it { should have_many :payments }      
    end
  end
end