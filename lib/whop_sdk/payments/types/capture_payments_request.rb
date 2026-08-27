# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class CapturePaymentsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
