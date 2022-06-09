require "rails_helper"

RSpec.describe NavActiveLinkHelper, :type => :helper do
  describe "#active_link_css" do
    it "checks if current page is index and makes link active" do
      path = helper.root_path
      allow(helper).to receive(:current_page?).with(path).and_return(true)
      expect(helper.active_link_css(path)).to eq("active")

      allow(helper).to receive(:current_page?).with(path).and_return(false)
      expect(helper.active_link_css(path)).to eq("")
    end
  end
end