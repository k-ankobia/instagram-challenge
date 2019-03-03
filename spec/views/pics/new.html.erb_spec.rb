require 'rails_helper'

RSpec.describe "pics/new", type: :view do
  before(:each) do
    assign(:pic, Pic.new(
      :title => "MyString",
      :caption => "MyText"
    ))
  end

  it "renders new pic form" do
    render

    assert_select "form[action=?][method=?]", pics_path, "post" do

      assert_select "input[name=?]", "pic[title]"

      assert_select "textarea[name=?]", "pic[caption]"
    end
  end
end
