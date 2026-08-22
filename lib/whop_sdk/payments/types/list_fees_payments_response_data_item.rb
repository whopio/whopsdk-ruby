# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # Represents a fee related to a payment
      class ListFeesPaymentsResponseDataItem < Internal::Types::Model
        field :amount, -> { Integer }, optional: false, nullable: false

        field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Types::SpecificFeeOrigins }, optional: false, nullable: false
      end
    end
  end
end
