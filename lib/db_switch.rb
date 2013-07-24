module DbSwitch
  def connect_to db
    puts "below is the db"
    puts get_config_for db
    ActiveRecord::Base.establish_connection(get_config_for db)
  end
  
  def get_config_for db
    Rails.configuration.database_configuration[db]
  end
  
  def reset_db
    ActiveRecord::Base.establish_connection(get_config_for "development")
  end
end

