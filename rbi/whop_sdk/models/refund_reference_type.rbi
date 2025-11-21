# typed: strong

module WhopSDK
  module Models
    # The type of refund reference that was made available by the payment provider.
    module RefundReferenceType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::RefundReferenceType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACQUIRER_REFERENCE_NUMBER =
        T.let(
          :acquirer_reference_number,
          WhopSDK::RefundReferenceType::TaggedSymbol
        )
      RETRIEVAL_REFERENCE_NUMBER =
        T.let(
          :retrieval_reference_number,
          WhopSDK::RefundReferenceType::TaggedSymbol
        )
      SYSTEM_TRACE_AUDIT_NUMBER =
        T.let(
          :system_trace_audit_number,
          WhopSDK::RefundReferenceType::TaggedSymbol
        )

      sig do
        override.returns(T::Array[WhopSDK::RefundReferenceType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
