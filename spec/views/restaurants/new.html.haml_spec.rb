require 'spec_helper'

describe "restaurants/new" do
  before(:each) do
    assign(:restaurant, stub_model(Restaurant,
      :name => "MyString",
      :beer_lunch => false,
      :walkable => false
    ).as_new_record)
  end

  it "renders new restaurant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", restaurants_path, "post" do
      assert_select "input#restaurant_name[name=?]", "restaurant[name]"
      assert_select "input#restaurant_beer_lunch[name=?]", "restaurant[beer_lunch]"
      assert_select "input#restaurant_walkable[name=?]", "restaurant[walkable]"
    end
  end
end
