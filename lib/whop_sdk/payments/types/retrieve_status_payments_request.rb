# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class RetrieveStatusPaymentsRequest < Internal::Types::Model
        field :payment_id, -> { String }, optional: false, nullable: false

        field :client_secret, -> { String }, optional: true, nullable: false
      end
    end
  end
end
