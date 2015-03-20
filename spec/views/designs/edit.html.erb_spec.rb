require 'rails_helper'

RSpec.describe "designs/edit", type: :view do
  before(:each) do
    @design = assign(:design, Design.create!(
      :description => "MyText",
      :image => "MyString",
      :3partycontent => false,
      :project_id => 1
    ))
  end

  it "renders the edit design form" do
    render

    assert_select "form[action=?][method=?]", design_path(@design), "post" do

      assert_select "textarea#design_description[name=?]", "design[description]"

      assert_select "input#design_image[name=?]", "design[image]"

      assert_select "input#design_3partycontent[name=?]", "design[3partycontent]"

      assert_select "input#design_project_id[name=?]", "design[project_id]"
    end
  end
end
