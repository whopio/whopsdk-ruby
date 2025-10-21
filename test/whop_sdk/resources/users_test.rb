# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::UsersTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.users.retrieve("user_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::UserRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        bio: String | nil,
        created_at: Time,
        name: String | nil,
        profile_picture: WhopSDK::Models::UserRetrieveResponse::ProfilePicture | nil,
        username: String
      }
    end
  end

  def test_check_access_required_params
    skip("Prism tests are disabled")

    response = @whop.users.check_access("resource_id", id: "user_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::UserCheckAccessResponse
    end

    assert_pattern do
      response => {
        access_level: WhopSDK::AccessLevel,
        has_access: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
