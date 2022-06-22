require 'rails_helper'

RSpec.describe Notification, type: :model do

  context "Validations" do
    before { build_stubbed(:user) }

    context "presence" do
      it { should validate_presence_of :recipient }
      it { should validate_presence_of :subject }
      it { should validate_presence_of :text }
      it { should validate_presence_of :status}
      it { should belong_to :user }        
    end
  end
end