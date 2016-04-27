# ONE
User.secret_key = ENV['the_secret_key']

# TWO
#Rails.application.config.to_prepare do
  #User.secret_key = ENV['the_secret_key']
#end

# THREE
#ActiveSupport.on_load(:market_config) do
  #User.secret_key = ENV['the_secret_key']
#end
