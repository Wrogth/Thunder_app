require 'spec_helper'

describe "portfolios/show" do
  before(:each) do
    @portfolio = assign(:portfolio, stub_model(Portfolio,
      :feed => "Feed",
      :cover_image => "Cover Image",
      :bio => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Feed/)
    rendered.should match(/Cover Image/)
    rendered.should match(/MyText/)
  end
end
