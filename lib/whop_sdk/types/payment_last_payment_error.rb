# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentLastPaymentError < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: true

      field :decline_code, -> { Whop_sdk::Types::PaymentLastPaymentErrorDeclineCode }, optional: false, nullable: true

      field :message, -> { String }, optional: false, nullable: true
    end
  end
end
