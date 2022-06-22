require 'rails_helper'

RSpec.describe Withdrawal, type: :model do

  context "Validations" do
    before { build_stubbed(:account) }

    context "presence" do
      it { should validate_presence_of :amount }
      it { should validate_presence_of :verification_code }
      it { should validate_presence_of :status}
      it { should belong_to :account }        
    end
  end
end