require 'spec_helper'

describe "restaurants/index" do
  before(:each) do
    assign(:restaurants, [
      stub_model(Restaurant,
        :name => "Name",
        :beer_lunch => false,
        :walkable => false
      ),
      stub_model(Restaurant,
        :name => "Name",
        :beer_lunch => false,
        :walkable => false
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end