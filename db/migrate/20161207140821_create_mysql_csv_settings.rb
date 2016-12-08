class CreateMysqlCsvSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :mysql_csv_settings do |t|
      t.string :name
      t.integer :setting_id

      t.timestamps
    end
  end
end
