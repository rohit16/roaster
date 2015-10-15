require 'rails_helper'

RSpec.describe "shift_details/show", type: :view do
  before(:each) do
    @shift_detail = assign(:shift_detail, ShiftDetail.create!(
      :name => "",
      :description => "MyText",
      :user => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
