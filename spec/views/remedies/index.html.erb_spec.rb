require 'rails_helper'

RSpec.describe "remedies/index", type: :view do
  before(:each) do
    assign(:remedies, [
      Remedy.create!(
        :description => "MyText",
        :twitter_handle => "Twitter Handle"
      ),
      Remedy.create!(
        :description => "MyText",
        :twitter_handle => "Twitter Handle"
      )
    ])
  end

  it "renders a list of remedies" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter Handle".to_s, :count => 2
  end
end
