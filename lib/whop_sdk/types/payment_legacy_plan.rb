# frozen_string_literal: true

module Whop_sdk
  module Types
    # The plan attached to this payment.
    class PaymentLegacyPlan < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :internal_notes, -> { String }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true
    end
  end
end
