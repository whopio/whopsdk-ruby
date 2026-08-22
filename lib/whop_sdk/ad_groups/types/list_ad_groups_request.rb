# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class ListAdGroupsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :ad_campaign_id, -> { String }, optional: true, nullable: false

        field :ad_campaign_ids, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::AdGroups::Types::ListAdGroupsRequestStatus }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::AdGroups::Types::ListAdGroupsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::AdGroups::Types::ListAdGroupsRequestDirection }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :stats_from, -> { String }, optional: true, nullable: false

        field :stats_to, -> { String }, optional: true, nullable: false

        field :time_zone, -> { String }, optional: true, nullable: false

        field :attribution_model, -> { Whop_sdk::AdGroups::Types::ListAdGroupsRequestAttributionModel }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
