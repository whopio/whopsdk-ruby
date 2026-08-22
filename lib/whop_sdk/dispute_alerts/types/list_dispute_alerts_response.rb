# frozen_string_literal: true

module Whop_sdk
  module DisputeAlerts
    module Types
      class ListDisputeAlertsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::DisputeAlert] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::DisputeAlerts::Types::ListDisputeAlertsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
