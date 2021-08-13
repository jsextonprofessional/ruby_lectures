require 'rails_helper'

RSpec.describe "User2s", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/user2s/new"
      expect(response).to have_http_status(:success)
    end
  end

end
