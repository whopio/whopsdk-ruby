# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentInstrumentCrypto < Internal::Types::Model
      field :transaction_hash, -> { String }, optional: false, nullable: true
    end
  end
end
