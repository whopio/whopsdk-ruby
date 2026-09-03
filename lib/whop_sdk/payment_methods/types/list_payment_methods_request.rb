# frozen_string_literal: true

module Whop_sdk
  module PaymentMethods
    module Types
      class ListPaymentMethodsRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Types::Direction }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :future_usage, -> { Whop_sdk::Types::FutureUsageTypes }, optional: true, nullable: false

        field :payment_method_types, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: true, nullable: false

        field :card_brands, -> { Whop_sdk::Types::CardBrands }, optional: true, nullable: false

        field :card_funding_types, -> { Whop_sdk::Types::CardFundingTypes }, optional: true, nullable: false

        field :has_payer_document, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :expired, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :broken, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
