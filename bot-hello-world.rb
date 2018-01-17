# Faire appel à la gem Twitter.
require 'twitter'

#Script de config depuis https://github.com/sferik/twitter
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "TACLÉTROPBIEN"
  config.consumer_secret     = "TACLÉTROPBIEN"
  config.access_token        = "TACLÉTROPBIEN"
  config.access_token_secret = "TACLÉTROPBIEN"
end

# On twitte un hello world
client.update("Bonjour monde !")
