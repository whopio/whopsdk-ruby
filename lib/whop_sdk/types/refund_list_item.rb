# frozen_string_literal: true

module Whop_sdk
  module Types
    # A refund represents a full or partial reversal of a payment, including the amount, status, and payment provider.
    class RefundListItem < Internal::Types::Model
      field :amount, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :payment, -> { Whop_sdk::Types::RefundListItemPayment }, optional: false, nullable: true

      field :provider, -> { Whop_sdk::Types::PaymentProviders }, optional: false, nullable: false

      field :provider_created_at, -> { String }, optional: false, nullable: true

      field :reference_status, -> { Whop_sdk::Types::RefundReferenceStatuses }, optional: false, nullable: true

      field :reference_type, -> { Whop_sdk::Types::RefundReferenceTypes }, optional: false, nullable: true

      field :reference_value, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::RefundStatuses }, optional: false, nullable: false
    end
  end
end
