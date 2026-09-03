# frozen_string_literal: true

module Whop_sdk
  module Types
    # The payment record that is the subject of this resolution case.
    class ResolutionCenterCaseLegacyPayment < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :paid_at, -> { String }, optional: false, nullable: true

      field :subtotal, -> { Integer }, optional: false, nullable: true

      field :total, -> { Integer }, optional: false, nullable: false
    end
  end
end
