# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::DmMembersTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @whop.dm_members.create(channel_id: "channel_id", user_id: "user_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::DmMemberCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        channel_id: String,
        last_viewed_at: String | nil,
        notification_preference: WhopSDK::Models::DmMemberCreateResponse::NotificationPreference,
        status: WhopSDK::Models::DmMemberCreateResponse::Status,
        user_id: String
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.dm_members.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::DmMemberRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        channel_id: String,
        last_viewed_at: String | nil,
        notification_preference: WhopSDK::Models::DmMemberRetrieveResponse::NotificationPreference,
        status: WhopSDK::Models::DmMemberRetrieveResponse::Status,
        user_id: String
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @whop.dm_members.update("id")

    assert_pattern do
      response => WhopSDK::Models::DmMemberUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        channel_id: String,
        last_viewed_at: String | nil,
        notification_preference: WhopSDK::Models::DmMemberUpdateResponse::NotificationPreference,
        status: WhopSDK::Models::DmMemberUpdateResponse::Status,
        user_id: String
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.dm_members.list(channel_id: "channel_id")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::DmMemberListResponse
    end

    assert_pattern do
      row => {
        id: String,
        channel_id: String,
        last_viewed_at: String | nil,
        status: WhopSDK::Models::DmMemberListResponse::Status,
        user_id: String
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @whop.dm_members.delete("id")

    assert_pattern do
      response => WhopSDK::Internal::Type::Boolean
    end
  end
end
