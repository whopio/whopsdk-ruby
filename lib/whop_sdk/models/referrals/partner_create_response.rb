# frozen_string_literal: true

module WhopSDK
  module Models
    module Referrals
      # @see WhopSDK::Resources::Referrals::Partners#create
      class PartnerCreateResponse < WhopSDK::Internal::Type::BaseModel
        # @!attribute referral_link
        #   The caller's referral link — businesses that sign up through it are attributed
        #   to the caller.
        #
        #   @return [String]
        required :referral_link, String

        # @!attribute whop_partner_enabled_at
        #   When the caller became a Whop partner.
        #
        #   @return [Time]
        required :whop_partner_enabled_at, Time

        # @!method initialize(referral_link:, whop_partner_enabled_at:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Referrals::PartnerCreateResponse} for more details.
        #
        #   @param referral_link [String] The caller's referral link — businesses that sign up through it are attributed t
        #
        #   @param whop_partner_enabled_at [Time] When the caller became a Whop partner.
      end
    end
  end
end
