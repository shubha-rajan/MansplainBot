class Bot < ApplicationRecord
    def self.search_words words 
        CLIENT.search(words, lang: "en").first.text 
      end

    #tweet
def self.tweet status 
    CLIENT.update(status)
  end
  
  #follow another user
  def self.follow_user name
    CLIENT.follow(name)
  end
  
  #find a tweet by ID
  def self.find_tweet id
    CLIENT.status(id)
  end
end
