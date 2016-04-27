class User
  def self.secret_key=(secret_key)
    @@secret_key = secret_key
  end

  # Two
  #ActiveSupport.run_load_hooks(:market_config)
end
