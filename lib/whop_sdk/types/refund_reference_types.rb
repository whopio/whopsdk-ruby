# frozen_string_literal: true

module Whop_sdk
  module Types
    module RefundReferenceTypes
      extend Whop_sdk::Internal::Types::Enum

      ACQUIRER_REFERENCE_NUMBER = "acquirer_reference_number"
      RETRIEVAL_REFERENCE_NUMBER = "retrieval_reference_number"
      SYSTEM_TRACE_AUDIT_NUMBER = "system_trace_audit_number"
    end
  end
end
