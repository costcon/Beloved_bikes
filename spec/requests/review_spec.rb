require 'rails_helper'

RSpec.describe "Reviews", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/review/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/review/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/review/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/review/update"
      expect(response).to have_http_status(:success)
    end
  end

end
