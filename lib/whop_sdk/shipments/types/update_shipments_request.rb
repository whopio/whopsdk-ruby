# frozen_string_literal: true

module Whop_sdk
  module Shipments
    module Types
      class UpdateShipmentsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :tracking_number, -> { String }, optional: false, nullable: false
      end
    end
  end
end
