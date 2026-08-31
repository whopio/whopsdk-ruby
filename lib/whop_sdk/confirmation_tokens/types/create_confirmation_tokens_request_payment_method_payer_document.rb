# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      # The buyer's identity document when the charge currency has a payer_document_requirements entry for this method,
      # such as ARS card, MODO, or Rapipago. This is independent of the method category.
      class CreateConfirmationTokensRequestPaymentMethodPayerDocument < Internal::Types::Model
        field :token, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::ConfirmationTokens::Types::CreateConfirmationTokensRequestPaymentMethodPayerDocumentType }, optional: false, nullable: false
      end
    end
  end
end
