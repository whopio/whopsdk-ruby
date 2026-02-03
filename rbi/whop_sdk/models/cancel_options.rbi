# typed: strong

module WhopSDK
  module Models
    # The different reasons a user can choose for why they are canceling their
    # membership.
    module CancelOptions
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::CancelOptions) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TOO_EXPENSIVE =
        T.let(:too_expensive, WhopSDK::CancelOptions::TaggedSymbol)
      SWITCHING = T.let(:switching, WhopSDK::CancelOptions::TaggedSymbol)
      MISSING_FEATURES =
        T.let(:missing_features, WhopSDK::CancelOptions::TaggedSymbol)
      TECHNICAL_ISSUES =
        T.let(:technical_issues, WhopSDK::CancelOptions::TaggedSymbol)
      BAD_EXPERIENCE =
        T.let(:bad_experience, WhopSDK::CancelOptions::TaggedSymbol)
      OTHER = T.let(:other, WhopSDK::CancelOptions::TaggedSymbol)
      TESTING = T.let(:testing, WhopSDK::CancelOptions::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::CancelOptions::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
