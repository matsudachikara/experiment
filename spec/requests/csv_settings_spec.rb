require 'rails_helper'

RSpec.describe "CsvSettings", type: :request do
  describe "GET /api/v1/csv_settings/list" do
    it "200を返す" do
      get api_v1_csv_settings_list_path
      expect(response).to have_http_status(200)
    end
  end
end
