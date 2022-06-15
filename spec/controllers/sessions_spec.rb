require 'rails_helper'

describe 'user_sign_up' do

  params = {
    'email': 'user@skeptipay.co.za',
    'password': 'password1234'
  }
  subject { post user_session_path, params: params }
 
  context 'with valid params' do
    let(:params) { attributes_for(:user) }
    it do
      expect{
        subject
      }.to change(User, :count).by(1)
    end
  end
  
  context 'with invalid params' do
   # make user params invalid
  end
end