require 'rails_helper'

RSpec.describe "remedies/show", type: :view do
  before(:each) do
    @remedy = assign(:remedy, Remedy.create!(
      :description => "MyText",
      :twitter_handle => "Twitter Handle"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Twitter Handle/)
  end
end
