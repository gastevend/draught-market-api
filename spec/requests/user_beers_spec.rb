require 'rails_helper'

RSpec.describe "UserBeers", type: :request do
  describe "GET /user_beers" do
    it "works! (now write some real specs)" do
      get user_beers_path
      expect(response).to have_http_status(200)
    end
  end
end
