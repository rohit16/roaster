require 'rails_helper'

RSpec.describe 'shidt_details/edit', type: :view do
  before(:each) do
    @shidt_detail = assign(:shidt_detail, ShidtDetail.create!(
                                            name: 'MyString',
                                            description: 'MyText',
                                            user: nil
    ))
  end

  it 'renders the edit shidt_detail form' do
    render

    assert_select 'form[action=?][method=?]', shidt_detail_path(@shidt_detail), 'post' do
      assert_select 'input#shidt_detail_name[name=?]', 'shidt_detail[name]'

      assert_select 'textarea#shidt_detail_description[name=?]', 'shidt_detail[description]'

      assert_select 'input#shidt_detail_user_id[name=?]', 'shidt_detail[user_id]'
    end
  end
end
