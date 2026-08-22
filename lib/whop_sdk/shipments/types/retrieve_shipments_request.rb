# frozen_string_literal: true

module Whop_sdk
  module Shipments
    module Types
      class RetrieveShipmentsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
