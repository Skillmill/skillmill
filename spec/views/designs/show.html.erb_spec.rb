require 'rails_helper'

RSpec.describe "designs/show", type: :view do
  before(:each) do
    @design = assign(:design, Design.create!(
      :description => "MyText",
      :image => "Image",
      :3partycontent => false,
      :project_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
