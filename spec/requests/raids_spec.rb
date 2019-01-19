require 'rails_helper'

RSpec.describe "Raids", type: :request do
  describe "GET /raids" do
    it "works! (now write some real specs)" do
      get raids_path
      expect(response).to have_http_status(200)
    end
  end
end
