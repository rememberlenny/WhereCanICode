require 'spec_helper'

describe "spaces/edit" do
  before(:each) do
    @space = assign(:space, stub_model(Space,
      :title => "MyString",
      :description => "MyString",
      :intro => "MyText",
      :extended => "MyText"
    ))
  end

  it "renders the edit space form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", space_path(@space), "post" do
      assert_select "input#space_title[name=?]", "space[title]"
      assert_select "input#space_description[name=?]", "space[description]"
      assert_select "textarea#space_intro[name=?]", "space[intro]"
      assert_select "textarea#space_extended[name=?]", "space[extended]"
    end
  end
end
