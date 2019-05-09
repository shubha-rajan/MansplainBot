require "test_helper"

describe Response do
  let(:response) { Response.new }

  it "must be valid" do
    value(response).must_be :valid?
  end
end
