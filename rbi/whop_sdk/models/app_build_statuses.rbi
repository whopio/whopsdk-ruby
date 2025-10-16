# typed: strong

module WhopSDK
  module Models
    # The different statuses an AppBuild can be in.
    module AppBuildStatuses
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AppBuildStatuses) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DRAFT = T.let(:draft, WhopSDK::AppBuildStatuses::TaggedSymbol)
      PENDING = T.let(:pending, WhopSDK::AppBuildStatuses::TaggedSymbol)
      APPROVED = T.let(:approved, WhopSDK::AppBuildStatuses::TaggedSymbol)
      REJECTED = T.let(:rejected, WhopSDK::AppBuildStatuses::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::AppBuildStatuses::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
