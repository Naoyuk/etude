require 'rails_helper'

RSpec.describe "Rates", type: :request do
  describe "GET /index" do
    it "returns a 200 response" do
      get rates_path
      expect(response).to have_http_status '200'
    end
  end
end
