# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentInstrument < Internal::Types::Model
      field :card, -> { Whop_sdk::Types::PaymentInstrumentCard }, optional: false, nullable: true

      field :display_name, -> { String }, optional: false, nullable: false

      field :icons, -> { Whop_sdk::Types::PaymentMethodIcons }, optional: false, nullable: false

      field :installment_count, -> { Integer }, optional: false, nullable: true

      field :payment_method_type, -> { String }, optional: false, nullable: false
    end
  end
end
