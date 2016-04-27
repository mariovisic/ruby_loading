################################################################################
# Example 07 - Rails autoloading gotchas in autoloaded environments (dev/test) #
################################################################################

# ONE - With bug

# app/models/user.rb

# config/initializers/user_setup.rb
User.secret_key = ENV['the_secret_key']

# Touching the User in the initializer autoloads it
# Now ActiveSupport::Dependencies.loaded == ['User']

# We refresh the page, the constants are cleared
# Now User.secret_key == nil

# Our initializer is not run against the new `User` constant

# TWO - use config.to_prepare

# We could wrap the init in to_prepare
Rails.application.config.to_prepare do
  User.secret_key = ENV['the_secret_key']
end

# This will run the to_prepare when the constant are all reloaded

# The issue with that is that we're autoloading User each time, we c an avoid
# this by running the config when user is autoloaded, we can use a hook for
# this.

# A solution (not THE solution)

# app/models/user.rb
class User
  def self.secret_key=(secret_key)
    @@secret_key = secret_key
  end

  ActiveSupport.run_load_hooks(:market_config)
end

# config/initializers/user_setup.rb
ActiveSupport.on_load(:market_config) do
  User.secret_key = ENV['the_secret_key']
end
