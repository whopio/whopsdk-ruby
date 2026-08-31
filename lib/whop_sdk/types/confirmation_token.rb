# frozen_string_literal: true

module Whop_sdk
  module Types
    class ConfirmationToken < Internal::Types::Model
      field :billing_details, -> { Whop_sdk::Types::PaymentBillingDetailsPreview }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :expires_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { String }, optional: false, nullable: false

      field :payment_method_preview, -> { Whop_sdk::Types::PaymentMethodDisplay }, optional: false, nullable: false

      field :setup_future_usage, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::ConfirmationTokenStatus }, optional: false, nullable: false
    end
  end
end
