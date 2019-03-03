require 'rails_helper'

RSpec.describe "pics/index", type: :view do
  before(:each) do
    assign(:pics, [
      Pic.create!(
        :title => "Title",
        :caption => "MyText"
      ),
      Pic.create!(
        :title => "Title",
        :caption => "MyText"
      )
    ])
  end

  it "renders a list of pics" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
