# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class RetrievePaymentsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
