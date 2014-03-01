require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :space_id => 1,
      :address => "MyString",
      :longitude => 1.5,
      :latitude => 1.5
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", location_path(@location), "post" do
      assert_select "input#location_space_id[name=?]", "location[space_id]"
      assert_select "input#location_address[name=?]", "location[address]"
      assert_select "input#location_longitude[name=?]", "location[longitude]"
      assert_select "input#location_latitude[name=?]", "location[latitude]"
    end
  end
end
