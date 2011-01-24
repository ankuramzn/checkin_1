# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_checkin_1_session',
  :secret      => 'cfd577965169fa4f5c797db9d63b1232d82dc354fbd1b1018a310003a8941daf74a907b18d2ef383d986b644d4f1569c2474b8cfba5a922b1ae0a8191a8deb57'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
