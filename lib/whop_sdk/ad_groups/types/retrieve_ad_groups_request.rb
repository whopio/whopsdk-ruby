# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class RetrieveAdGroupsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :stats_from, -> { String }, optional: true, nullable: false

        field :stats_to, -> { String }, optional: true, nullable: false

        field :time_zone, -> { String }, optional: true, nullable: false

        field :attribution_model, -> { Whop_sdk::AdGroups::Types::RetrieveAdGroupsRequestAttributionModel }, optional: true, nullable: false
      end
    end
  end
end
