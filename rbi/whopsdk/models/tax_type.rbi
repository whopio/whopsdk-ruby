# typed: strong

module Whopsdk
  module Models
    # Whether or not the tax is included in a plan's price (or if it hasn't been set
    # up)
    module TaxType
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::TaxType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INCLUSIVE = T.let(:inclusive, Whopsdk::TaxType::TaggedSymbol)
      EXCLUSIVE = T.let(:exclusive, Whopsdk::TaxType::TaggedSymbol)
      UNSPECIFIED = T.let(:unspecified, Whopsdk::TaxType::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::TaxType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
