# frozen_string_literal: true

module Whop_sdk
  module Shipments
    module Types
      class LookupShipmentsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :email, -> { String }, optional: false, nullable: false

        field :order_number, -> { String }, optional: true, nullable: false

        field :tracking_number, -> { String }, optional: true, nullable: false
      end
    end
  end
end
