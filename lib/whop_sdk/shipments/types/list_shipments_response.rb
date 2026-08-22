# frozen_string_literal: true

module Whop_sdk
  module Shipments
    module Types
      class ListShipmentsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Shipment] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Shipments::Types::ListShipmentsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
