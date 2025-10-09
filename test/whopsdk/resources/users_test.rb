# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::UsersTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.users.retrieve("user_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Models::UserRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        bio: String | nil,
        created_at: Integer,
        name: String | nil,
        username: String
      }
    end
  end
end
