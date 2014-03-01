require 'spec_helper'

describe "spaces/new" do
  before(:each) do
    assign(:space, stub_model(Space,
      :title => "MyString",
      :description => "MyString",
      :intro => "MyText",
      :extended => "MyText"
    ).as_new_record)
  end

  it "renders new space form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spaces_path, "post" do
      assert_select "input#space_title[name=?]", "space[title]"
      assert_select "input#space_description[name=?]", "space[description]"
      assert_select "textarea#space_intro[name=?]", "space[intro]"
      assert_select "textarea#space_extended[name=?]", "space[extended]"
    end
  end
end
