# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionEntry < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::CheckoutSessionEntryStatus }, optional: false, nullable: false
    end
  end
end
