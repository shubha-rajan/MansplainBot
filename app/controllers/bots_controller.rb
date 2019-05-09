class BotsController < ApplicationController
  after_action :automate_tweets

  def index
  end

  private

  def automate_tweets
    while true
      word = Bot.keywords.sample
      Bot.find_user(1, word)
      sleep(1800)
    end
  end
end
