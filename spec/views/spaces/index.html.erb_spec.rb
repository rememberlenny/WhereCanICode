require 'spec_helper'

describe "spaces/index" do
  before(:each) do
    assign(:spaces, [
      stub_model(Space,
        :title => "Title",
        :description => "Description",
        :intro => "MyText",
        :extended => "MyText"
      ),
      stub_model(Space,
        :title => "Title",
        :description => "Description",
        :intro => "MyText",
        :extended => "MyText"
      )
    ])
  end

  it "renders a list of spaces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
