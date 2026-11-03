# frozen_string_literal: true

module Whop_sdk
  module Ads
    module Types
      class ReportIssuesAdsRequest < Internal::Types::Model
        field :ad_group_id, -> { String }, optional: true, nullable: false

        field :ad_id, -> { String }, optional: true, nullable: false

        field :issues, -> { Internal::Types::Array[Whop_sdk::Ads::Types::ReportIssuesAdsRequestIssuesItem] }, optional: false, nullable: false
      end
    end
  end
end
