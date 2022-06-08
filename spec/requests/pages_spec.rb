require "rails_helper"

RSpec.describe "Pages", :type => :request do

  it "goes to the index page" do
    get "/"
    expect(response).to render_template(:index)
  end

  it "redirects to the about page" do
    get "/about"
    expect(response).to render_template(:about)
  end

  it "redirects to the blog page" do
    get "/blog"
    expect(response).to render_template(:blog)
  end

  it "redirects to the contact page" do
    get "/contact"
    expect(response).to render_template(:contact)
  end


  it "does not render a different template" do
    get "/"
    expect(response).to_not render_template(:about)
    expect(response).to_not render_template(:blog)
    expect(response).to_not render_template(:contact)
  end
  it "does not render a different template" do
    get "/about"
    expect(response).to_not render_template(:index)
    expect(response).to_not render_template(:blog)
    expect(response).to_not render_template(:contact)
  end
  it "does not render a different template" do
    get "/blog"
    expect(response).to_not render_template(:about)
    expect(response).to_not render_template(:index)
    expect(response).to_not render_template(:contact)
  end
  it "does not render a different template" do
    get "/contact"
    expect(response).to_not render_template(:blog)
    expect(response).to_not render_template(:about)
    expect(response).to_not render_template(:index)
  end
end

