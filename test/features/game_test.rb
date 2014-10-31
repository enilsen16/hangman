require "test_helper"

describe "Server" do
  it "will properly connect to the api" do
    server = Hangman::Server.new
    response = server.get
    response.wont_be_empty
  end

  it "objects are stored correctly" do
    server = Hangman::Server.new
    response = server.set_variables
    response.size.must_equal 4
  end

  it "posts to the correct url" do
    server = Hangman::Server.new
    server.set_variables
    request = server.post
    request.status.must_equal 200
  end
end
