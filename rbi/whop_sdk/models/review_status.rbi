# typed: strong

module WhopSDK
  module Models
    # The statuses a review can have
    module ReviewStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::ReviewStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, WhopSDK::ReviewStatus::TaggedSymbol)
      PUBLISHED = T.let(:published, WhopSDK::ReviewStatus::TaggedSymbol)
      REMOVED = T.let(:removed, WhopSDK::ReviewStatus::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::ReviewStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
