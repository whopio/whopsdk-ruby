# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PartnersTest < WhopSDK::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @whop.partners.create

    assert_pattern do
      response => WhopSDK::Models::PartnerCreateResponse
    end

    assert_pattern do
      response => {
        referral_link: String,
        whop_partner_enabled_at: Time
      }
    end
  end

  def test_leaderboard
    skip("Mock server tests are disabled")

    response = @whop.partners.leaderboard

    assert_pattern do
      response => WhopSDK::Models::PartnerLeaderboardResponse
    end

    assert_pattern do
      response => {
        leaders: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PartnerLeaderboardResponse::Leader]),
        me: WhopSDK::Models::PartnerLeaderboardResponse::Me | nil
      }
    end
  end

  def test_referred_users
    skip("Mock server tests are disabled")

    response = @whop.partners.referred_users

    assert_pattern do
      response => WhopSDK::Models::PartnerReferredUsersResponse
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PartnerReferredUsersResponse::Data]),
        page_info: WhopSDK::Models::PartnerReferredUsersResponse::PageInfo
      }
    end
  end
end
