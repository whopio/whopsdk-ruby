# frozen_string_literal: true

module Whop_sdk
  module Types
    # The saved payment method created by this setup intent. Null if the setup has not completed successfully.
    class SetupIntentListItemPaymentMethod < Internal::Types::Model
      field :card, -> { Whop_sdk::Types::SetupIntentListItemPaymentMethodCard }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :mailing_address, -> { Whop_sdk::Types::SetupIntentListItemPaymentMethodMailingAddress }, optional: false, nullable: true

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: false
    end
  end
end
