require 'rails_helper'

RSpec.describe Invoice, type: :model do

  context "Validations" do
    before { build_stubbed(:user) }

    context "presence" do
      it { should validate_presence_of :description }
      it { should validate_presence_of :debit }
      it { should validate_presence_of :credit }
      it { should belong_to :user}        

    end
  end
end