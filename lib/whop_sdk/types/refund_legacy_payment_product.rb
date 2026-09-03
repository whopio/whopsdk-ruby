# frozen_string_literal: true

module Whop_sdk
  module Types
    # The product this payment was made for
    class RefundLegacyPaymentProduct < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true
    end
  end
end
