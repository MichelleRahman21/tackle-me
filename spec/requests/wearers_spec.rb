require 'rails_helper'

RSpec.describe "Wearers", type: :request do
  describe "GET /wearers" do
    it "works! (now write some real specs)" do
      get wearers_path
      expect(response).to have_http_status(200)
    end
  end
end
