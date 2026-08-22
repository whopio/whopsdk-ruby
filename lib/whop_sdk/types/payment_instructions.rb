# frozen_string_literal: true

module Whop_sdk
  module Types
    # What to show the buyer so they can pay. `kind` picks the shape and the details sit under the key named for it, so
    # switching on `kind` gives you exactly that kind's payload. Every detail field is optional — the rails behind these
    # methods publish them unevenly — but a kind that arrives with `document_url` can always fall back to sending the
    # buyer to that hosted copy of the instructions.
    class PaymentInstructions < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      discriminant :kind

      member -> { Whop_sdk::Types::PaymentBankTransferInstructions }, key: "BANK_TRANSFER"

      member -> { Whop_sdk::Types::PaymentQrInstructions }, key: "QR"

      member -> { Whop_sdk::Types::PaymentVoucherInstructions }, key: "VOUCHER"
    end
  end
end
