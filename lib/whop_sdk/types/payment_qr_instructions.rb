# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentQrInstructions < Internal::Types::Model
      field :qr, -> { Whop_sdk::Types::PaymentQr }, optional: false, nullable: false
    end
  end
end
