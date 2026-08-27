# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentStatus < Internal::Types::Model
      field :capture_expires_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :last_payment_error, -> { Whop_sdk::Types::PaymentLastPaymentError }, optional: false, nullable: true

      field :next_action, -> { Whop_sdk::Types::PaymentNextAction }, optional: false, nullable: true

      field :object, -> { String }, optional: false, nullable: false

      field :processing_details, -> { Whop_sdk::Types::PaymentProcessingDetails }, optional: false, nullable: true

      field :return_url, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::PaymentStatusStatus }, optional: false, nullable: false
    end
  end
end
