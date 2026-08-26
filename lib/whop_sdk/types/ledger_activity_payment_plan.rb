# frozen_string_literal: true

module Whop_sdk
  module Types
    # Plan associated with the payment, when applicable.
    class LedgerActivityPaymentPlan < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true
    end
  end
end
