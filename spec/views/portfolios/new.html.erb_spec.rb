require 'spec_helper'

describe "portfolios/new" do
  before(:each) do
    assign(:portfolio, stub_model(Portfolio,
      :feed => "MyString",
      :cover_image => "MyString",
      :bio => "MyText"
    ).as_new_record)
  end

  it "renders new portfolio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", portfolios_path, "post" do
      assert_select "input#portfolio_feed[name=?]", "portfolio[feed]"
      assert_select "input#portfolio_cover_image[name=?]", "portfolio[cover_image]"
      assert_select "textarea#portfolio_bio[name=?]", "portfolio[bio]"
    end
  end
end
