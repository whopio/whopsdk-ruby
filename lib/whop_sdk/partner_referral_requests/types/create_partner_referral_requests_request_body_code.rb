# frozen_string_literal: true

module Whop_sdk
  module PartnerReferralRequests
    module Types
      # Create your own referral link with an optional custom code and redemption limit. Without configuration, returns
      # your oldest saved link for the selected team membership, or your personal context when `authorized_user_id` is
      # omitted, creating a random code when none exists.
      class CreatePartnerReferralRequestsRequestBodyCode < Internal::Types::Model
        field :authorized_user_id, -> { String }, optional: true, nullable: false

        field :code, -> { String }, optional: true, nullable: false

        field :max_redemptions, -> { Integer }, optional: true, nullable: false

        field :partner_id, -> { String }, optional: true, nullable: false

        field :request_type, -> { Whop_sdk::PartnerReferralRequests::Types::CreatePartnerReferralRequestsRequestBodyCodeRequestType }, optional: false, nullable: false
      end
    end
  end
end
