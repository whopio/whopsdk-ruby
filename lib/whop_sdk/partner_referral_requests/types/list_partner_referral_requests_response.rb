# frozen_string_literal: true

module Whop_sdk
  module PartnerReferralRequests
    module Types
      class ListPartnerReferralRequestsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::PartnerReferralRequest] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::PartnerReferralRequests::Types::ListPartnerReferralRequestsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
