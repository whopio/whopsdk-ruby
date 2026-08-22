# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentBankTransferInstructions < Internal::Types::Model
      field :bank_transfer, -> { Whop_sdk::Types::PaymentBankTransfer }, optional: false, nullable: false
    end
  end
end
