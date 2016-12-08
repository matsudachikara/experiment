class Api::V1::CsvSettingsController < ApplicationController

  def list
    @csv_settings = CsvSetting.all
    render json: @csv_settings
  end
end
