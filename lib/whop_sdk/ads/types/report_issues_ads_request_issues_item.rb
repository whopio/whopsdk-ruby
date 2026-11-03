# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class ReportIssuesAdsRequestIssuesItem < Internal::Types::Model
        field :policy, -> { Whop_sdk::Ads::Types::ReportIssuesAdsRequestIssuesItemPolicy }, optional: true, nullable: false

        field :reason, -> { Whop_sdk::Ads::Types::ReportIssuesAdsRequestIssuesItemReason }, optional: false, nullable: false
      end
    end
  end
end
