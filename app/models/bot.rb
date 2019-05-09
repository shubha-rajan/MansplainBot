class Bot < ApplicationRecord
  def self.keywords
    return ["Trump", "Science", "politics", "liberal", "left", "Obama", "Biden", "bro", "socialist", "athiesm", "post-", "science", "women", "Women", "women's health", "feminism"]
  end

  def self.search_words(words)
    following_names = CLIENT.freinds.map { |user| user.name }
    CLIENT.search("from:#{following_names.sample} #{words}").first.text
  end

  #tweet
  def self.tweet(status)
    CLIENT.update(status)
  end

  #follow another user
  def self.follow_user(name)
    CLIENT.follow(name)
  end

  #find a tweet by ID
  def self.find_tweet(id)
    CLIENT.status(id)
  end

  def self.respond(name, id)
    tweet_text = self.find_tweet(id).text
    if tweet_text.start_with?("RT")
      tweet_text = tweet_text.dup
      tweet_text.slice!(0..1)
    end
    "@" + name + " " + Response.order_by_rand.first.message + tweet_text
  end

  def self.find_user(number, words)
    self.search_words(words).take(number).each { |t|
      User.create(name: t.user.screen_name, tweet_id: t.id.to_s)

      CLIENT.update(Bot.respond(t.user.screen_name, t.id), in_reply_to_status_id: t.id)
    }
  end
end
