# frozen_string_literal: true

module WhopSDK
  module Models
    # The type of refund reference that was made available by the payment provider.
    module RefundReferenceType
      extend WhopSDK::Internal::Type::Enum

      ACQUIRER_REFERENCE_NUMBER = :acquirer_reference_number
      RETRIEVAL_REFERENCE_NUMBER = :retrieval_reference_number
      SYSTEM_TRACE_AUDIT_NUMBER = :system_trace_audit_number

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
