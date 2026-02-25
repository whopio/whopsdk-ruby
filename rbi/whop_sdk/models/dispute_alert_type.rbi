# typed: strong

module WhopSDK
  module Models
    # The type of dispute alert.
    module DisputeAlertType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::DisputeAlertType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DISPUTE = T.let(:dispute, WhopSDK::DisputeAlertType::TaggedSymbol)
      DISPUTE_RDR = T.let(:dispute_rdr, WhopSDK::DisputeAlertType::TaggedSymbol)
      FRAUD = T.let(:fraud, WhopSDK::DisputeAlertType::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::DisputeAlertType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
