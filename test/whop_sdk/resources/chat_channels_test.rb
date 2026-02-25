# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ChatChannelsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.chat_channels.retrieve("id")

    assert_pattern do
      response => WhopSDK::ChatChannel
    end

    assert_pattern do
      response => {
        id: String,
        ban_media: WhopSDK::Internal::Type::Boolean,
        ban_urls: WhopSDK::Internal::Type::Boolean,
        banned_words: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        experience: WhopSDK::ChatChannel::Experience,
        user_posts_cooldown_seconds: Integer | nil,
        who_can_post: WhopSDK::WhoCanPost,
        who_can_react: WhopSDK::WhoCanReact
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.chat_channels.update("id")

    assert_pattern do
      response => WhopSDK::ChatChannel
    end

    assert_pattern do
      response => {
        id: String,
        ban_media: WhopSDK::Internal::Type::Boolean,
        ban_urls: WhopSDK::Internal::Type::Boolean,
        banned_words: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        experience: WhopSDK::ChatChannel::Experience,
        user_posts_cooldown_seconds: Integer | nil,
        who_can_post: WhopSDK::WhoCanPost,
        who_can_react: WhopSDK::WhoCanReact
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @whop.chat_channels.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::ChatChannelListResponse
    end

    assert_pattern do
      row => {
        id: String,
        ban_media: WhopSDK::Internal::Type::Boolean,
        ban_urls: WhopSDK::Internal::Type::Boolean,
        banned_words: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        experience: WhopSDK::Models::ChatChannelListResponse::Experience,
        user_posts_cooldown_seconds: Integer | nil,
        who_can_post: WhopSDK::WhoCanPost,
        who_can_react: WhopSDK::WhoCanReact
      }
    end
  end
end
