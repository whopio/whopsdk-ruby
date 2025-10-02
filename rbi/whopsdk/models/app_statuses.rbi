# typed: strong

module Whopsdk
  module Models
    # The status of an experience interface
    module AppStatuses
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::AppStatuses) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      LIVE = T.let(:live, Whopsdk::AppStatuses::TaggedSymbol)
      UNLISTED = T.let(:unlisted, Whopsdk::AppStatuses::TaggedSymbol)
      HIDDEN = T.let(:hidden, Whopsdk::AppStatuses::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::AppStatuses::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
