# frozen_string_literal: true

module Whop_sdk
  module Types
    class RetrieveStatsRequestSteps < Internal::Types::Model
      field :_1, -> { Whop_sdk::Types::FunnelStep }, optional: false, nullable: false, api_name: "1"

      field :_2, -> { Whop_sdk::Types::FunnelStep }, optional: false, nullable: false, api_name: "2"

      field :_3, -> { Whop_sdk::Types::FunnelStep }, optional: true, nullable: false, api_name: "3"

      field :_4, -> { Whop_sdk::Types::FunnelStep }, optional: true, nullable: false, api_name: "4"

      field :_5, -> { Whop_sdk::Types::FunnelStep }, optional: true, nullable: false, api_name: "5"

      field :_6, -> { Whop_sdk::Types::FunnelStep }, optional: true, nullable: false, api_name: "6"

      field :_7, -> { Whop_sdk::Types::FunnelStep }, optional: true, nullable: false, api_name: "7"

      field :_8, -> { Whop_sdk::Types::FunnelStep }, optional: true, nullable: false, api_name: "8"

      field :_9, -> { Whop_sdk::Types::FunnelStep }, optional: true, nullable: false, api_name: "9"

      field :_10, -> { Whop_sdk::Types::FunnelStep }, optional: true, nullable: false, api_name: "10"
    end
  end
end
