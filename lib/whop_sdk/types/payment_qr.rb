# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentQr < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

      field :document_url, -> { String }, optional: true, nullable: false

      field :expires_at, -> { String }, optional: true, nullable: false

      field :key, -> { String }, optional: true, nullable: false

      field :qr_code, -> { String }, optional: true, nullable: false

      field :qr_format, -> { String }, optional: true, nullable: false
    end
  end
end
