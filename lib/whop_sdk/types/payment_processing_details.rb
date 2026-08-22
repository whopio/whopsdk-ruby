# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentProcessingDetails < Internal::Types::Model
      field :expected_by, -> { String }, optional: false, nullable: true
    end
  end
end
