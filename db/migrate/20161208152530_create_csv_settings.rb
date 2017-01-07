class CreateCsvSettings < ActiveRecord::Migration[5.0]
  def up
    unless exists? 'cm_csv_settings'
      table = dynamo_db.tables.create('cm_csv_settings',
                                      1, 1, :hash_key => { :id => :string })
      while table.status == :creating
        puts "Waiting for table create to complete.."
        sleep 2
      end
    end
  end

  def down
    if exists? 'cm_csv_settings'
      table = dynamo_db.tables['cm_csv_settings']
      table.delete

      while exists? 'cm_csv_settings'
        puts "Waiting for table delete to complete.."
        sleep 2
      end
    end
  end

  private

  def exists?(name)
    dynamo_db.tables['cm_csv_settings'].exists?
  end

  def dynamo_db
    @dynamo_db ||= AWS::DynamoDB.new
  end
end
