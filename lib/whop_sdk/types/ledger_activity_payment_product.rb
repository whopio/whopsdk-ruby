# frozen_string_literal: true

module Whop_sdk
  module Types
    # Product associated with the payment, when applicable.
    class LedgerActivityPaymentProduct < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
