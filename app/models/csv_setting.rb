class CsvSetting
  include Dynamoid::Document

  table name: :csv_settings, key: :id

  field :name, :string
  field :csv_setting_id, :integer
  field :yahoo_setting_id, :integer
  field :yahoo_store_name, :string
  field :rakuten_setting, :string
  field :created_at, :datetime, {default: ->(){Time.now}}
  field :updated_at, :datetime, {default: ->(){Time.now}}
end
