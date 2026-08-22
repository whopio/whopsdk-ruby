# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class RefundPaymentsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :partial_amount, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
