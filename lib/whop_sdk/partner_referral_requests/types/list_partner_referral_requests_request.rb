# frozen_string_literal: true

module Whop_sdk
  module PartnerReferralRequests
    module Types
      class ListPartnerReferralRequestsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :target_user_id, -> { String }, optional: true, nullable: false

        field :partner_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::PartnerReferralRequests::Types::ListPartnerReferralRequestsRequestStatus }, optional: true, nullable: false

        field :request_type, -> { Whop_sdk::PartnerReferralRequests::Types::ListPartnerReferralRequestsRequestRequestType }, optional: true, nullable: false

        field :order, -> { Whop_sdk::PartnerReferralRequests::Types::ListPartnerReferralRequestsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::PartnerReferralRequests::Types::ListPartnerReferralRequestsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
