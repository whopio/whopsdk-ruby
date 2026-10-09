# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentPdf < Internal::Types::Model
      field :expires_at, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
