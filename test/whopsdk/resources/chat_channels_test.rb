# frozen_string_literal: true

require_relative "../test_helper"

class Whopsdk::Test::Resources::ChatChannelsTest < Whopsdk::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whopsdk.chat_channels.retrieve("id")

    assert_pattern do
      response => Whopsdk::Models::ChatChannelRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        ban_media: Whopsdk::Internal::Type::Boolean,
        ban_urls: Whopsdk::Internal::Type::Boolean,
        experience: Whopsdk::Models::ChatChannelRetrieveResponse::Experience,
        user_posts_cooldown_seconds: Integer | nil,
        who_can_post: Whopsdk::WhoCanPost,
        who_can_react: Whopsdk::WhoCanReact
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whopsdk.chat_channels.list(company_id: "biz_xxxxxxxxxxxxxx")

    assert_pattern do
      response => Whopsdk::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Whopsdk::Models::ChatChannelListResponse
    end

    assert_pattern do
      row => {
        id: String,
        ban_media: Whopsdk::Internal::Type::Boolean,
        ban_urls: Whopsdk::Internal::Type::Boolean,
        experience: Whopsdk::Models::ChatChannelListResponse::Experience,
        user_posts_cooldown_seconds: Integer | nil,
        who_can_post: Whopsdk::WhoCanPost,
        who_can_react: Whopsdk::WhoCanReact
      }
    end
  end
end
