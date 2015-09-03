require 'rails_helper'

RSpec.describe "remedies/edit", type: :view do
  before(:each) do
    @remedy = assign(:remedy, Remedy.create!(
      :description => "MyText",
      :twitter_handle => "MyString"
    ))
  end

  it "renders the edit remedy form" do
    render

    assert_select "form[action=?][method=?]", remedy_path(@remedy), "post" do

      assert_select "textarea#remedy_description[name=?]", "remedy[description]"

      assert_select "input#remedy_twitter_handle[name=?]", "remedy[twitter_handle]"
    end
  end
end
