# typed: strong

module WhopSDK
  module Models
    # The status of an experience interface
    module AppStatuses
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AppStatuses) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      LIVE = T.let(:live, WhopSDK::AppStatuses::TaggedSymbol)
      UNLISTED = T.let(:unlisted, WhopSDK::AppStatuses::TaggedSymbol)
      HIDDEN = T.let(:hidden, WhopSDK::AppStatuses::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::AppStatuses::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
