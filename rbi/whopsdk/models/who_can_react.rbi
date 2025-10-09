# typed: strong

module Whopsdk
  module Models
    # Who can react on a chat feed
    module WhoCanReact
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::WhoCanReact) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EVERYONE = T.let(:everyone, Whopsdk::WhoCanReact::TaggedSymbol)
      NO_ONE = T.let(:no_one, Whopsdk::WhoCanReact::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::WhoCanReact::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
