# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    module Types
      class RetrieveAdCampaignsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :stats_from, -> { String }, optional: true, nullable: false

        field :stats_to, -> { String }, optional: true, nullable: false

        field :time_zone, -> { String }, optional: true, nullable: false

        field :attribution_model, -> { Whop_sdk::AdCampaigns::Types::RetrieveAdCampaignsRequestAttributionModel }, optional: true, nullable: false
      end
    end
  end
end
