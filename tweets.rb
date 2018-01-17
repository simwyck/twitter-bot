require 'twitter'

client.update("Good morning Vietnam!!!")

=begin
Tweet (as the authenticated user)

client.update("I'm tweeting with @gem!")

Follow a user (by screen name or user ID)

client.follow("gem")
client.follow(213747670)

Fetch a user (by screen name or user ID)

client.user("gem")
client.user(213747670)

Fetch a cursored list of followers with profile details (by screen name or user ID, or by implicit authenticated user)

client.followers("gem")
client.followers(213747670)
client.followers

Fetch a cursored list of friends with profile details (by screen name or user ID, or by implicit authenticated user)

client.friends("gem")
client.friends(213747670)
client.friends

Fetch the timeline of Tweets by a user

client.user_timeline("gem")
client.user_timeline(213747670)

Fetch the timeline of Tweets from the authenticated user's home page

client.home_timeline

Fetch the timeline of Tweets mentioning the authenticated user

client.mentions_timeline

Fetch a particular Tweet by ID

client.status(27558893223)

Collect the three most recent marriage proposals to @justinbieber

client.search("to:justinbieber marry me", result_type: "recent").take(3).collect do |tweet|
  "#{tweet.user.screen_name}: #{tweet.text}"
end

Find a Japanese-language Tweet tagged #ruby (excluding retweets)

client.search("#ruby -rt", lang: "ja").first.text
=end