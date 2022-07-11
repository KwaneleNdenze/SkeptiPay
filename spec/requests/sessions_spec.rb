require 'rails_helper'

RSpec.describe "Sessions" do
  it "signs user in and out" do
    user = create(:user, :merchant)

    sign_in user
    get root_path
    expect(response).to render_template(:index) 
    
    sign_out user
    get root_path
    expect(response).not_to render_template(:about)
    expect(response).not_to render_template(:blog)
    expect(response).not_to render_template(:contact) 
  end
end