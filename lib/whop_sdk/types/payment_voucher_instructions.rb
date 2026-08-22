# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentVoucherInstructions < Internal::Types::Model
      field :voucher, -> { Whop_sdk::Types::PaymentVoucher }, optional: false, nullable: false
    end
  end
end
