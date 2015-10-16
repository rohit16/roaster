require 'rails_helper'

RSpec.describe 'shidt_details/new', type: :view do
  before(:each) do
    assign(:shidt_detail, ShidtDetail.new(
                            name: 'MyString',
                            description: 'MyText',
                            user: nil
    ))
  end

  it 'renders new shidt_detail form' do
    render

    assert_select 'form[action=?][method=?]', shidt_details_path, 'post' do
      assert_select 'input#shidt_detail_name[name=?]', 'shidt_detail[name]'

      assert_select 'textarea#shidt_detail_description[name=?]', 'shidt_detail[description]'

      assert_select 'input#shidt_detail_user_id[name=?]', 'shidt_detail[user_id]'
    end
  end
end
