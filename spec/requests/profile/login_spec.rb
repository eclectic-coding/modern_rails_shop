require 'rails_helper'

RSpec.describe "Profile::Logins", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/profile/login/show"
      expect(response).to have_http_status(:success)
    end
  end

end
