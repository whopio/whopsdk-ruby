# typed: strong

module Whopsdk
  module Models
    # The different types of an app view
    module AppViewType
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::AppViewType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      HUB = T.let(:hub, Whopsdk::AppViewType::TaggedSymbol)
      DISCOVER = T.let(:discover, Whopsdk::AppViewType::TaggedSymbol)
      DASH = T.let(:dash, Whopsdk::AppViewType::TaggedSymbol)
      DASHBOARD = T.let(:dashboard, Whopsdk::AppViewType::TaggedSymbol)
      ANALYTICS = T.let(:analytics, Whopsdk::AppViewType::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::AppViewType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
