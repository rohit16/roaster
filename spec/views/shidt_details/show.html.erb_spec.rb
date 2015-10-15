require 'rails_helper'

RSpec.describe "shidt_details/show", type: :view do
  before(:each) do
    @shidt_detail = assign(:shidt_detail, ShidtDetail.create!(
      :name => "Name",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
