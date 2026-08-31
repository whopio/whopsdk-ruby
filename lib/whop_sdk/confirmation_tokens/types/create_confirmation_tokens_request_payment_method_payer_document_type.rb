# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      module CreateConfirmationTokensRequestPaymentMethodPayerDocumentType
        extend Whop_sdk::Internal::Types::Enum

        DNI = "dni"
        CUIL = "cuil"
        CUIT = "cuit"
        PASSPORT = "passport"
        CC = "cc"
        CI = "ci"
        RUT = "rut"
        CURP = "curp"
        RFC = "rfc"
      end
    end
  end
end
