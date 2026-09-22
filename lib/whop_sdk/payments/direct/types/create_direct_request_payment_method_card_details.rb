# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Direct
      module Types
        # The card's raw fields. Sent to the vault host and tokenized before it reaches Whop; Whop's servers never
        # receive the number.
        class CreateDirectRequestPaymentMethodCardDetails < Internal::Types::Model
          field :cvc, -> { String }, optional: true, nullable: false

          field :exp_month, -> { Integer }, optional: false, nullable: false

          field :exp_year, -> { Integer }, optional: false, nullable: false

          field :number, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
