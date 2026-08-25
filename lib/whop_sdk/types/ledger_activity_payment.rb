# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivityPayment < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :card_brand, -> { String }, optional: false, nullable: true

      field :card_last4, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::LedgerActivityPaymentObject }, optional: false, nullable: false

      field :payment_method_type, -> { String }, optional: false, nullable: true

      field :payment_processor, -> { String }, optional: false, nullable: true
    end
  end
end
