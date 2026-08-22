# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class RetrieveStatusPaymentsRequest < Internal::Types::Model
        field :payment_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
