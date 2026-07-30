# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::SocialAccountsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.social_accounts.create(platform: :facebook)

    assert_pattern do
      response => WhopSDK::SocialAccount
    end

    assert_pattern do
      response => {
        id: String,
        error: String | nil,
        external_id: String | nil,
        name: String | nil,
        platform: WhopSDK::SocialAccount::Platform,
        profile_picture_url: String | nil,
        scopes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        url: String | nil,
        username: String | nil,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.social_accounts.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::SocialAccount
    end

    assert_pattern do
      row => {
        id: String,
        error: String | nil,
        external_id: String | nil,
        name: String | nil,
        platform: WhopSDK::SocialAccount::Platform,
        profile_picture_url: String | nil,
        scopes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        url: String | nil,
        username: String | nil,
        verified: WhopSDK::Internal::Type::Boolean
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.social_accounts.delete("id")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end

  def test_connect_required_params
    skip("Mock server tests are disabled")

    response = @whop.social_accounts.connect(platform: :meta_business)

    assert_pattern do
      response => WhopSDK::Models::SocialAccountConnectResponse
    end

    assert_pattern do
      response => {
        authorize_url: String
      }
    end
  end

  def test_posts_required_params
    skip("Mock server tests are disabled")

    response = @whop.social_accounts.posts("id", account_id: "account_id")

    assert_pattern do
      response => WhopSDK::Models::SocialAccountPostsResponse
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::SocialAccountPost]),
        page_info: WhopSDK::Models::SocialAccountPostsResponse::PageInfo
      }
    end
  end
end
