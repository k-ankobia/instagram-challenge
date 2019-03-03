require 'rails_helper'

RSpec.describe "pics/edit", type: :view do
  before(:each) do
    @pic = assign(:pic, Pic.create!(
      :title => "MyString",
      :caption => "MyText"
    ))
  end

  it "renders the edit pic form" do
    render

    assert_select "form[action=?][method=?]", pic_path(@pic), "post" do

      assert_select "input[name=?]", "pic[title]"

      assert_select "textarea[name=?]", "pic[caption]"
    end
  end
end
