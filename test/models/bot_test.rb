require "test_helper"

describe Bot do
  let(:bot) { Bot.new }

  it "must be valid" do
    value(bot).must_be :valid?
  end
end
