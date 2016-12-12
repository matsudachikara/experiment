class CreateCsvSettings < ActiveRecord::Migration[5.0]
  def up
    unless exists? 'csv_settings'
      table = dynamo_db.tables.create('csv_settings',
                                      1, 1, :hash_key => { :csv_setting_id => :number })
      while table.status == :creating
        puts "Waiting for table create to complete.."
        sleep 2
      end
    end
  end

  def down
    if exists? 'csv_settings'
      table = dynamo_db.tables['csv_settings']
      table.delete

      while exists? 'csv_settings'
        puts "Waiting for table delete to complete.."
        sleep 2
      end
    end
  end

  private

  def exists?(name)
    dynamo_db.tables['csv_settings'].exists?
  end

  def dynamo_db
    @dynamo_db ||= AWS::DynamoDB.new
  end
end
