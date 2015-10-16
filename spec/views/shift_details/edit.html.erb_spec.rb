require 'rails_helper'

RSpec.describe 'shift_details/edit', type: :view do
  before(:each) do
    @shift_detail = assign(:shift_detail, ShiftDetail.create!(
                                            name: '',
                                            description: 'MyText',
                                            user: ''
    ))
  end

  it 'renders the edit shift_detail form' do
    render

    assert_select 'form[action=?][method=?]', shift_detail_path(@shift_detail), 'post' do
      assert_select 'input#shift_detail_name[name=?]', 'shift_detail[name]'

      assert_select 'textarea#shift_detail_description[name=?]', 'shift_detail[description]'

      assert_select 'input#shift_detail_user[name=?]', 'shift_detail[user]'
    end
  end
end
