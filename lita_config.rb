require 'dotenv'

Dotenv.tap do |de|
  # load contents of file at LITA_ENV, useful for production
  de.load(ENV['LITA_ENV']) if ENV['LITA_ENV']
  # load contents of .env from current directory, useful for development
  de.load
end

Lita.configure do |config|
  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  config.robot.log_level = ENV['LOG_LEVEL'].intern

  # Slack
  config.robot.adapter = ENV['LITA_ADAPTER'].intern
  config.adapters.slack.token = ENV['SLACK_TOKEN']

  # Redis
  config.redis.host = ENV['REDIS_HOST']
  config.redis.port = ENV['REDIS_PORT']
end

