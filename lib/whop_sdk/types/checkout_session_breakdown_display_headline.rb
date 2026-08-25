# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionBreakdownDisplayHeadline < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :context, -> { Internal::Types::Array[Whop_sdk::Types::CheckoutSessionBreakdownDisplayRow] }, optional: false, nullable: false

      field :free_until, -> { String }, optional: false, nullable: true

      field :kind, -> { Whop_sdk::Types::CheckoutSessionBreakdownDisplayHeadlineKind }, optional: false, nullable: false

      field :original_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :text, -> { String }, optional: false, nullable: false

      field :trial_days, -> { Integer }, optional: false, nullable: true
    end
  end
end
