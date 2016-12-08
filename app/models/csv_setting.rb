class CsvSetting
  include Dynamoid::Document

  table name: :csv_settings, key: :id

  field :name, :string
  field :setting_id, :integer
  field :timestamps, :datetime
end