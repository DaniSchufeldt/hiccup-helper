require 'rails_helper'

RSpec.describe "remedies/new", type: :view do
  before(:each) do
    assign(:remedy, Remedy.new(
      :description => "MyText",
      :twitter_handle => "MyString"
    ))
  end

  it "renders new remedy form" do
    render

    assert_select "form[action=?][method=?]", remedies_path, "post" do

      assert_select "textarea#remedy_description[name=?]", "remedy[description]"

      assert_select "input#remedy_twitter_handle[name=?]", "remedy[twitter_handle]"
    end
  end
end
