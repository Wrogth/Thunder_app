require 'spec_helper'

describe "portfolios/index" do
  before(:each) do
    assign(:portfolios, [
      stub_model(Portfolio,
        :feed => "Feed",
        :cover_image => "Cover Image",
        :bio => "MyText"
      ),
      stub_model(Portfolio,
        :feed => "Feed",
        :cover_image => "Cover Image",
        :bio => "MyText"
      )
    ])
  end

  it "renders a list of portfolios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Feed".to_s, :count => 2
    assert_select "tr>td", :text => "Cover Image".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
