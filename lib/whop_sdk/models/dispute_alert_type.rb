# frozen_string_literal: true

module WhopSDK
  module Models
    # The type of dispute alert.
    module DisputeAlertType
      extend WhopSDK::Internal::Type::Enum

      DISPUTE = :dispute
      DISPUTE_RDR = :dispute_rdr
      FRAUD = :fraud

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
