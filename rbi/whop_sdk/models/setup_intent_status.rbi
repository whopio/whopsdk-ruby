# typed: strong

module WhopSDK
  module Models
    # The status of the setup intent.
    module SetupIntentStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::SetupIntentStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PROCESSING = T.let(:processing, WhopSDK::SetupIntentStatus::TaggedSymbol)
      SUCCEEDED = T.let(:succeeded, WhopSDK::SetupIntentStatus::TaggedSymbol)
      CANCELED = T.let(:canceled, WhopSDK::SetupIntentStatus::TaggedSymbol)
      REQUIRES_ACTION =
        T.let(:requires_action, WhopSDK::SetupIntentStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::SetupIntentStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
