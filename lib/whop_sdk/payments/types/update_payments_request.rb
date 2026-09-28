# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class UpdatePaymentsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :return_url, -> { String }, optional: true, nullable: false

        field :shipping_address, -> { Whop_sdk::Payments::Types::UpdatePaymentsRequestShippingAddress }, optional: true, nullable: false
      end
    end
  end
end
