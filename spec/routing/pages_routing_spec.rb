RSpec.describe "Routes", :type => :routing do
  it 'routes to index page' do
    expect(:get => "/").to route_to(
      :controller => "pages",
      :action => "index"
    )
  end

  it 'routes to about page' do
    expect(:get => "/about").to route_to(
      :controller => "pages",
      :action => "about"
    )
  end

  it 'routes to blog page' do
    expect(:get => "/blog").to route_to(
      :controller => "pages",
      :action => "blog"
    )
  end

  it 'routes to contact page' do
    expect(:get => "/contact").to route_to(
      :controller => "pages",
      :action => "contact"
    )
  end
  
end