# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    module Types
      class ListAdCampaignsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestStatus }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestDirection }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :stats_from, -> { String }, optional: true, nullable: false

        field :stats_to, -> { String }, optional: true, nullable: false

        field :time_zone, -> { String }, optional: true, nullable: false

        field :attribution_model, -> { Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestAttributionModel }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
