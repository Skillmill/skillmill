require 'rails_helper'

RSpec.describe "designs/new", type: :view do
  before(:each) do
    assign(:design, Design.new(
      :description => "MyText",
      :image => "MyString",
      :3partycontent => false,
      :project_id => 1
    ))
  end

  it "renders new design form" do
    render

    assert_select "form[action=?][method=?]", designs_path, "post" do

      assert_select "textarea#design_description[name=?]", "design[description]"

      assert_select "input#design_image[name=?]", "design[image]"

      assert_select "input#design_3partycontent[name=?]", "design[3partycontent]"

      assert_select "input#design_project_id[name=?]", "design[project_id]"
    end
  end
end
