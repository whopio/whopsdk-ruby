# frozen_string_literal: true

require_relative "../../test_helper"

class WhopSDK::Test::Resources::Partners::BusinessesTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.partners.businesses.retrieve("id")

    assert_pattern do
      response => WhopSDK::Models::Partners::BusinessRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        account: WhopSDK::Models::Partners::BusinessRetrieveResponse::Account | nil,
        created_at: Time,
        earnings_usd: WhopSDK::Models::Partners::BusinessRetrieveResponse::EarningsUsd,
        first_tier_partner: WhopSDK::Models::Partners::BusinessRetrieveResponse::FirstTierPartner | nil,
        my_partner_tier: WhopSDK::Models::Partners::BusinessRetrieveResponse::MyPartnerTier,
        object: WhopSDK::Models::Partners::BusinessRetrieveResponse::Object,
        owner: WhopSDK::Models::Partners::BusinessRetrieveResponse::Owner | nil,
        payout_percentage: Float,
        referral_expires_at: Time | nil,
        referral_started_at: Time | nil,
        status: WhopSDK::Models::Partners::BusinessRetrieveResponse::Status,
        volume_usd: WhopSDK::Models::Partners::BusinessRetrieveResponse::VolumeUsd
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.partners.businesses.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::Partners::BusinessListResponse
    end

    assert_pattern do
      row => {
        id: String,
        account: WhopSDK::Models::Partners::BusinessListResponse::Account | nil,
        created_at: Time,
        earnings_usd: WhopSDK::Models::Partners::BusinessListResponse::EarningsUsd,
        first_tier_partner: WhopSDK::Models::Partners::BusinessListResponse::FirstTierPartner | nil,
        my_partner_tier: WhopSDK::Models::Partners::BusinessListResponse::MyPartnerTier,
        object: WhopSDK::Models::Partners::BusinessListResponse::Object,
        owner: WhopSDK::Models::Partners::BusinessListResponse::Owner | nil,
        payout_percentage: Float,
        referral_expires_at: Time | nil,
        referral_started_at: Time | nil,
        status: WhopSDK::Models::Partners::BusinessListResponse::Status,
        volume_usd: WhopSDK::Models::Partners::BusinessListResponse::VolumeUsd
      }
    end
  end
end
