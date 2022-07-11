require 'rails_helper'

RSpec.describe Users::SessionsController, type: :request do
 
  context 'with valid params' do
    let(:user) { FactoryBot.create(:user, :merchant, password: 'password1234', password_confirmation: 'password1234') }
    subject { post user_session_path, params: {user: {email: user.email, password: 'password1234'}} }
    let(:params) { attributes_for(:user) }
    xit do
      expect{
        subject
        user.reload
      }.to change(user, :updated_at)
    end
  end
  
  context 'with invalid params' do
    let(:user) { FactoryBot.create(:user, password: 'password1234', password_confirmation: 'password1234') }
    subject { post user_session_path, params: {user: {email: '', password: ''}}  }
    
    let(:params) { attributes_for(:user) }
    xit do
      expect{
        subject
        user.reload
      }.not_to change(user, :updated_at)
    end
  end
end