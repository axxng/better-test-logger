RSpec.configure do |config|
  config.before(:each) do
    Rails.logger.clear
    [:debug, :info, :warn, :error, :fatal, :unknown].each do |log_level|
      allow(Rails.logger).to receive(log_level).and_call_original
    end
  end
end
