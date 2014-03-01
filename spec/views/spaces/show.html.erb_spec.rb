require 'spec_helper'

describe "spaces/show" do
  before(:each) do
    @space = assign(:space, stub_model(Space,
      :title => "Title",
      :description => "Description",
      :intro => "MyText",
      :extended => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
