# frozen_string_literal: true

require_relative "../../test_helper"

class WhopSDK::Test::Resources::Referrals::PartnersTest < WhopSDK::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @whop.referrals.partners.create

    assert_pattern do
      response => WhopSDK::Models::Referrals::PartnerCreateResponse
    end

    assert_pattern do
      response => {
        referral_link: String,
        whop_partner_enabled_at: Time
      }
    end
  end
end
