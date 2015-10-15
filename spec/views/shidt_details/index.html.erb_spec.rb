require 'rails_helper'

RSpec.describe "shidt_details/index", type: :view do
  before(:each) do
    assign(:shidt_details, [
      ShidtDetail.create!(
        :name => "Name",
        :description => "MyText",
        :user => nil
      ),
      ShidtDetail.create!(
        :name => "Name",
        :description => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of shidt_details" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
