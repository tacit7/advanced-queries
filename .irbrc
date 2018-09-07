

def sql_log_toggle
  if ActiveRecord::Base.logger.level == 0
    ActiveRecord::Base.logger.level = 4
  else
    ActiveRecord::Base.logger.level = 0
  end
end
