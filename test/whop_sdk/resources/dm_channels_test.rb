# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::DmChannelsTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.dm_channels.create(with_user_ids: ["string"])

    assert_pattern do
      response => WhopSDK::DmChannel
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        last_message_at: Time | nil,
        name: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.dm_channels.retrieve("id")

    assert_pattern do
      response => WhopSDK::DmChannel
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        last_message_at: Time | nil,
        name: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.dm_channels.update("id")

    assert_pattern do
      response => WhopSDK::DmChannel
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        last_message_at: Time | nil,
        name: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.dm_channels.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::DmChannelListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: String,
        last_message_at: Time | nil,
        name: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @whop.dm_channels.delete("id")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
