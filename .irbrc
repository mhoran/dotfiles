if defined?(Rails) && !Rails.env.nil?
  Rails.logger = Logger.new(STDOUT)
  ActiveRecord::Base.logger = Rails.logger if defined? ActiveRecord
end
