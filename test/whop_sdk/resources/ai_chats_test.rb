# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::AIChatsTest < WhopSDK::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @whop.ai_chats.create

    assert_pattern do
      response => WhopSDK::Models::AIChatCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        blended_token_usage: String,
        created_at: Time,
        last_message_at: Time | nil,
        message_count: Integer,
        title: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::AIChatCreateResponse::User
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.ai_chats.retrieve("aich_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AIChatRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        blended_token_usage: String,
        created_at: Time,
        last_message_at: Time | nil,
        message_count: Integer,
        title: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::AIChatRetrieveResponse::User
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.ai_chats.update("aich_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::AIChatUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        blended_token_usage: String,
        created_at: Time,
        last_message_at: Time | nil,
        message_count: Integer,
        title: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::AIChatUpdateResponse::User
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @whop.ai_chats.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::AIChatListResponse
    end

    assert_pattern do
      row => {
        id: String,
        blended_token_usage: String,
        created_at: Time,
        last_message_at: Time | nil,
        message_count: Integer,
        title: String | nil,
        updated_at: Time,
        user: WhopSDK::Models::AIChatListResponse::User
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whop.ai_chats.delete("aich_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
