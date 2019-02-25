require 'rails_helper'

RSpec.describe "Drivers", type: :request do
  describe "GET /drivers" do
    it "works! (now write some real specs)" do
      get drivers_path
      expect(response).to have_http_status(200)
    end
  end
end
