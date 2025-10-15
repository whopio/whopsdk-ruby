# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::UsersTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.users.retrieve("user_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Models::UserRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        bio: String | nil,
        created_at: Time,
        name: String | nil,
        username: String
      }
    end
  end

  def test_check_access_required_params
    skip("Prism tests are disabled")

    response = @whop.users.check_access("resource_id", id: "user_xxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Models::UserCheckAccessResponse
    end

    assert_pattern do
      response => {
        access_level: Whopsdk::Models::UserCheckAccessResponse::AccessLevel,
        has_access: Whopsdk::Internal::Type::Boolean
      }
    end
  end
end
