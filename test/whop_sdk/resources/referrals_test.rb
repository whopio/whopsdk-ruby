# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::ReferralsTest < WhopSDK::Test::ResourceTest
  def test_referred_users
    skip("Mock server tests are disabled")

    response = @whop.referrals.referred_users

    assert_pattern do
      response => WhopSDK::Models::ReferralReferredUsersResponse
    end

    assert_pattern do
      response => {
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::ReferralReferredUsersResponse::Data]),
        page_info: WhopSDK::Models::ReferralReferredUsersResponse::PageInfo
      }
    end
  end
end
