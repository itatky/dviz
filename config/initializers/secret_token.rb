# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Dviz::Application.config.secret_token = ENV['SECRET_TOKEN']
# Dviz::Application.config.secret_key_base = 'd1559c1125c05032fab50d2d07353545d52c646cdf67d2cfdfe2d263aed190292d40ad1897e807c9208d395d53af5e50c2e956d355744e1faa3451532a5acc54'
