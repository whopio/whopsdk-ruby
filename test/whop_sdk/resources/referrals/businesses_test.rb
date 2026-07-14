# frozen_string_literal: true

require_relative "../../test_helper"

class WhopSDK::Test::Resources::Referrals::BusinessesTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.referrals.businesses.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::Referrals::BusinessRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Models::Referrals::BusinessRetrieveResponse::Account | nil,
        created_at: Time,
        earnings_usd: WhopSDK::Models::Referrals::BusinessRetrieveResponse::EarningsUsd,
        first_tier_partner: WhopSDK::Models::Referrals::BusinessRetrieveResponse::FirstTierPartner | nil,
        my_partner_tier: WhopSDK::Models::Referrals::BusinessRetrieveResponse::MyPartnerTier,
        object: WhopSDK::Models::Referrals::BusinessRetrieveResponse::Object,
        owner: WhopSDK::Models::Referrals::BusinessRetrieveResponse::Owner | nil,
        payout_percentage: Float,
        referral_expires_at: Time | nil,
        referral_started_at: Time | nil,
        status: WhopSDK::Models::Referrals::BusinessRetrieveResponse::Status,
        volume_usd: WhopSDK::Models::Referrals::BusinessRetrieveResponse::VolumeUsd
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.referrals.businesses.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::Referrals::BusinessListResponse
    end

    assert_pattern do
      row => {
        id: String,
        account: WhopSDK::Models::Referrals::BusinessListResponse::Account | nil,
        created_at: Time,
        earnings_usd: WhopSDK::Models::Referrals::BusinessListResponse::EarningsUsd,
        first_tier_partner: WhopSDK::Models::Referrals::BusinessListResponse::FirstTierPartner | nil,
        my_partner_tier: WhopSDK::Models::Referrals::BusinessListResponse::MyPartnerTier,
        object: WhopSDK::Models::Referrals::BusinessListResponse::Object,
        owner: WhopSDK::Models::Referrals::BusinessListResponse::Owner | nil,
        payout_percentage: Float,
        referral_expires_at: Time | nil,
        referral_started_at: Time | nil,
        status: WhopSDK::Models::Referrals::BusinessListResponse::Status,
        volume_usd: WhopSDK::Models::Referrals::BusinessListResponse::VolumeUsd
      }
    end
  end

  def test_leaderboard
    skip("Mock server tests are disabled")

    response = @whop.referrals.businesses.leaderboard

    assert_pattern do
      response => WhopSDK::Models::Referrals::BusinessLeaderboardResponse
    end

    assert_pattern do
      response => {
        leaders: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Leader]),
        me: WhopSDK::Models::Referrals::BusinessLeaderboardResponse::Me | nil
      }
    end
  end
end
