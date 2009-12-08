# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dice_session',
  :secret      => '6792b783b4b2f53941782fbae63391c63b0898793c9ca4e6721884ee54eb533056c201ab527daa6486d42dcb5a5fd633d4a7f0509df3d8cc07ad1158529e5e67'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
