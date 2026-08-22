# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentVoucher < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

      field :barcode, -> { String }, optional: true, nullable: false

      field :barcode_format, -> { String }, optional: true, nullable: false

      field :company_name, -> { String }, optional: true, nullable: false

      field :document_url, -> { String }, optional: true, nullable: false

      field :expires_at, -> { String }, optional: true, nullable: false

      field :provider_logo, -> { String }, optional: true, nullable: false

      field :provider_name, -> { String }, optional: true, nullable: false

      field :reference, -> { String }, optional: true, nullable: false
    end
  end
end
