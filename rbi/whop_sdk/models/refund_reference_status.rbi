# typed: strong

module WhopSDK
  module Models
    # The status of the refund reference.
    module RefundReferenceStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::RefundReferenceStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AVAILABLE =
        T.let(:available, WhopSDK::RefundReferenceStatus::TaggedSymbol)
      PENDING = T.let(:pending, WhopSDK::RefundReferenceStatus::TaggedSymbol)
      UNAVAILABLE =
        T.let(:unavailable, WhopSDK::RefundReferenceStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::RefundReferenceStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
