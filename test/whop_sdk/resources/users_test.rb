# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::UsersTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.users.retrieve("id")

    assert_pattern do
      response => WhopSDK::User
    end

    assert_pattern do
      response => {
        id: String,
        balance: WhopSDK::User::Balance | nil,
        balance_history: WhopSDK::User::BalanceHistory | nil,
        banner: WhopSDK::User::Banner | nil,
        bio: String | nil,
        created_at: String,
        earnings_usd: WhopSDK::User::EarningsUsd | nil,
        email: String | nil,
        name: String | nil,
        profile_picture: WhopSDK::User::ProfilePicture,
        social_accounts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::User::SocialAccount]),
        staff: WhopSDK::User::Staff | nil,
        username: String,
        verification: WhopSDK::Internal::Type::Unknown,
        whop_partner_enabled_at: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @whop.users.update("id")

    assert_pattern do
      response => WhopSDK::User
    end

    assert_pattern do
      response => {
        id: String,
        balance: WhopSDK::User::Balance | nil,
        balance_history: WhopSDK::User::BalanceHistory | nil,
        banner: WhopSDK::User::Banner | nil,
        bio: String | nil,
        created_at: String,
        earnings_usd: WhopSDK::User::EarningsUsd | nil,
        email: String | nil,
        name: String | nil,
        profile_picture: WhopSDK::User::ProfilePicture,
        social_accounts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::User::SocialAccount]),
        staff: WhopSDK::User::Staff | nil,
        username: String,
        verification: WhopSDK::Internal::Type::Unknown,
        whop_partner_enabled_at: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.users.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::User
    end

    assert_pattern do
      row => {
        id: String,
        balance: WhopSDK::User::Balance | nil,
        balance_history: WhopSDK::User::BalanceHistory | nil,
        banner: WhopSDK::User::Banner | nil,
        bio: String | nil,
        created_at: String,
        earnings_usd: WhopSDK::User::EarningsUsd | nil,
        email: String | nil,
        name: String | nil,
        profile_picture: WhopSDK::User::ProfilePicture,
        social_accounts: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::User::SocialAccount]),
        staff: WhopSDK::User::Staff | nil,
        username: String,
        verification: WhopSDK::Internal::Type::Unknown,
        whop_partner_enabled_at: String | nil
      }
    end
  end

  def test_check_access_required_params
    skip("Mock server tests are disabled")

    response = @whop.users.check_access("resource_id", id: "id")

    assert_pattern do
      response => WhopSDK::Models::UserCheckAccessResponse
    end

    assert_pattern do
      response => {
        access_level: WhopSDK::Models::UserCheckAccessResponse::AccessLevel,
        has_access: WhopSDK::Internal::Type::Boolean
      }
    end
  end
end
