# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::MembersTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @whop.members.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::MemberRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        access_level: WhopSDK::AccessLevel,
        company: WhopSDK::Models::MemberRetrieveResponse::Company,
        company_token_balance: Float,
        created_at: Time,
        joined_at: Time,
        most_recent_action: WhopSDK::MemberMostRecentActions | nil,
        most_recent_action_at: Time | nil,
        phone: String | nil,
        status: WhopSDK::MemberStatuses,
        updated_at: Time,
        usd_total_spent: Float,
        user: WhopSDK::Models::MemberRetrieveResponse::User | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.members.list(company_id: "biz_xxxxxxxxxxxxxx")

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
        access_level: WhopSDK::AccessLevel,
        company_token_balance: Float,
        created_at: Time,
        joined_at: Time,
        most_recent_action: WhopSDK::MemberMostRecentActions | nil,
        most_recent_action_at: Time | nil,
        phone: String | nil,
        status: WhopSDK::MemberStatuses,
        updated_at: Time,
        usd_total_spent: Float,
        user: WhopSDK::Models::MemberListResponse::User | nil
      }
    end
  end
end
