# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_votekey_session',
  :secret      => '4324ebbcd58acb6b11c97d2b6bd66445b8adec794f6d3a27e1e68cbfe2653f63228311c54e63ddc2ba6220986370ca688e548ebeca9bdbc0ae8f11a2115cae71'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
