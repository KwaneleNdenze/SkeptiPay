require 'rails_helper'

RSpec.describe Payment, type: :model do

  context "Validations" do
    before { build_stubbed(:user) }

    context "presence" do
      it { should validate_presence_of :amount }
      it { should validate_presence_of :description }
      it { should validate_presence_of :verification_code }
      it { should validate_presence_of :status}
      it { should belong_to :user }        
    end
  end
end