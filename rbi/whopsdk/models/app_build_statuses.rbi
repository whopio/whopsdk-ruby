# typed: strong

module Whopsdk
  module Models
    # The different statuses an AppBuild can be in.
    module AppBuildStatuses
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::AppBuildStatuses) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DRAFT = T.let(:draft, Whopsdk::AppBuildStatuses::TaggedSymbol)
      PENDING = T.let(:pending, Whopsdk::AppBuildStatuses::TaggedSymbol)
      APPROVED = T.let(:approved, Whopsdk::AppBuildStatuses::TaggedSymbol)
      REJECTED = T.let(:rejected, Whopsdk::AppBuildStatuses::TaggedSymbol)

      sig do
        override.returns(T::Array[Whopsdk::AppBuildStatuses::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
