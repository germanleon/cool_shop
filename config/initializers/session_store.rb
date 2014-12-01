# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cool_shop_session',
  :secret      => 'ad9ef453147eac1fa7cb9469372f66408e5138f5577a17fdd5d9ebb7c9b8c201911ca219bedbe04fc03469d2cde71c6177df552f41b1312eb8ccc6b5b00bb374'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
