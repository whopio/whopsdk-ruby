# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionTransfer < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :origin_expires_at, -> { String }, optional: false, nullable: true

      field :origin_renewal_period_end, -> { String }, optional: false, nullable: true
    end
  end
end
