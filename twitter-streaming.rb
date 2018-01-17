require 'twitter'

# Config pour pouvoir streamer
client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "TACLÉTROPBIEN"
  config.consumer_secret     = "TACLÉTROPBIEN"
  config.access_token        = "TACLÉTROPBIEN"
  config.access_token_secret = "TACLÉTROPBIEN"
end

# Stream mentions of coffee or tea
topics = ["france", "french"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
