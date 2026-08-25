# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionBreakdownDisplayRow < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

      field :detail, -> { Whop_sdk::Types::CheckoutSessionBreakdownDisplayRowDetail }, optional: true, nullable: false

      field :kind, -> { Whop_sdk::Types::CheckoutSessionBreakdownDisplayRowKind }, optional: false, nullable: false

      field :label, -> { String }, optional: true, nullable: false

      field :status, -> { Whop_sdk::Types::CheckoutSessionBreakdownDisplayRowStatus }, optional: true, nullable: false

      field :text, -> { String }, optional: true, nullable: false
    end
  end
end
