# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::MembersTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.members.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::MemberRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        access_level: WhopSDK::Models::MemberRetrieveResponse::AccessLevel,
        account_id: String,
        created_at: String,
        joined_at: String,
        last_accessed_at: String | nil,
        phone_number: String | nil,
        status: WhopSDK::Models::MemberRetrieveResponse::Status,
        token_balance: Float,
        user: WhopSDK::Models::MemberRetrieveResponse::User | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.members.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::MemberListResponse
    end

    assert_pattern do
      row => {
        id: String,
        access_level: WhopSDK::Models::MemberListResponse::AccessLevel,
        account_id: String,
        created_at: String,
        joined_at: String,
        last_accessed_at: String | nil,
        phone_number: String | nil,
        status: WhopSDK::Models::MemberListResponse::Status,
        token_balance: Float,
        user: WhopSDK::Models::MemberListResponse::User | nil
      }
    end
  end
end
