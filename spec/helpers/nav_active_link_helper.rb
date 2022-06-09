require "rails_helper"

RSpec.describe NavActiveLinkHelper, :type => :helper do
  describe "#active_link_css" do
    
    context "when current_page? is true" do
      it do
        path = helper.root_path
        allow(helper).to receive(:current_page?).with(path).and_return(true)
        expect(helper.active_link_css(path)).to eq("active")
      end
      context 'when current_page? is false' do
        it do
          path = helper.root_path
          allow(helper).to receive(:current_page?).with(helper.root_path).and_return(false)
          expect(helper.active_link_css(path)).to eq("")
        end
      end
    end
  end
end