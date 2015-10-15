require 'rails_helper'

RSpec.describe "shift_details/new", type: :view do
  before(:each) do
    assign(:shift_detail, ShiftDetail.new(
      :name => "",
      :description => "MyText",
      :user => ""
    ))
  end

  it "renders new shift_detail form" do
    render

    assert_select "form[action=?][method=?]", shift_details_path, "post" do

      assert_select "input#shift_detail_name[name=?]", "shift_detail[name]"

      assert_select "textarea#shift_detail_description[name=?]", "shift_detail[description]"

      assert_select "input#shift_detail_user[name=?]", "shift_detail[user]"
    end
  end
end
