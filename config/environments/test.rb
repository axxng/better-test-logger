require 'test_logger'

Rails.application.configure do
  config.logger = TestLogger.new
end
