# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentFee < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :collected_at, -> { String }, optional: false, nullable: true

      field :description, -> { String }, optional: false, nullable: true

      field :label, -> { String }, optional: false, nullable: false

      field :origin, -> { Whop_sdk::Types::PaymentFeeOrigin }, optional: false, nullable: false

      field :settlement_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :type, -> { Whop_sdk::Types::PaymentFeeType }, optional: false, nullable: false
    end
  end
end
