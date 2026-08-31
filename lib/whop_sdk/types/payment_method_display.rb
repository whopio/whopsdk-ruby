# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentMethodDisplay < Internal::Types::Model
      field :bank_debit, -> { Whop_sdk::Types::PaymentMethodDisplayPreview }, optional: true, nullable: false

      field :card, -> { Whop_sdk::Types::PaymentMethodDisplayPreview }, optional: true, nullable: false

      field :category, -> { Whop_sdk::Types::PaymentMethodDisplayCategory }, optional: false, nullable: false

      field :display_name, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: true

      field :saved, -> { Whop_sdk::Types::PaymentMethodDisplayPreview }, optional: true, nullable: false

      field :type, -> { String }, optional: false, nullable: false

      field :wallet, -> { Whop_sdk::Types::PaymentMethodDisplayPreview }, optional: true, nullable: false
    end
  end
end
