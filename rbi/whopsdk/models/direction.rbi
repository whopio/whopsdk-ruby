# typed: strong

module Whopsdk
  module Models
    # The direction of the sort.
    module Direction
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::Direction) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ASC = T.let(:asc, Whopsdk::Direction::TaggedSymbol)
      DESC = T.let(:desc, Whopsdk::Direction::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::Direction::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
