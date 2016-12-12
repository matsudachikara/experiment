class Api::V1::CsvSettingsController < ApplicationController

  def list
    @csv_settings = CsvSetting.all
    @csv_settings = @csv_settings.map do |csv_setting|
      {
          csv_setting_id: csv_setting.try(:csv_setting_id),
          created_at: csv_setting.created_at,
          rakuten_setiing: csv_setting.rakuten_setting,
          yahoo_setting_id: csv_setting.try(:yahoo_setting_id),
          store: {
              name: csv_setting.try(:yahoo_score_name)
          }
      }
    end
    render json: @csv_settings
  end
end
