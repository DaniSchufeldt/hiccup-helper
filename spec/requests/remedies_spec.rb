require 'rails_helper'

RSpec.describe "Remedies", type: :request do
  describe "GET /remedies" do
    it "works! (now write some real specs)" do
      get remedies_path
      expect(response).to have_http_status(200)
    end
  end
end
