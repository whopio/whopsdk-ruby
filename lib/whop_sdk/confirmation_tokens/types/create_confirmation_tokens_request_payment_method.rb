# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      # The collected method: `type` names the payment method, `category` names the payload shape, and the
      # category-keyed object carries the payload. Wallets are the exception: their payload rides the type key
      # (`apple_pay` / `google_pay`). Send exactly the one payload arm the category selects — extra arms are rejected.
      # Redirect-flow methods (category `redirect`, `bank_transfer`, `voucher`, and redirect wallets like `cashapp`)
      # collect nothing and send no payload arm.
      class CreateConfirmationTokensRequestPaymentMethod < Internal::Types::Model
        field :apple_pay, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestPaymentMethodApplePay }, optional: true, nullable: false

        field :balance, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestPaymentMethodBalance }, optional: true, nullable: false

        field :bank_debit, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestPaymentMethodBankDebit }, optional: true, nullable: false

        field :card, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestPaymentMethodCard }, optional: true, nullable: false

        field :category, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestPaymentMethodCategory }, optional: false, nullable: false

        field :google_pay, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestPaymentMethodGooglePay }, optional: true, nullable: false

        field :payer_document, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestPaymentMethodPayerDocument }, optional: true, nullable: false

        field :saved, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestPaymentMethodSaved }, optional: true, nullable: false

        field :type, -> { String }, optional: true, nullable: false
      end
    end
  end
end
