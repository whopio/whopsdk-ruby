# typed: strong

module Whopsdk
  module Models
    # The types of post
    module DmsPostTypes
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::DmsPostTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REGULAR = T.let(:regular, Whopsdk::DmsPostTypes::TaggedSymbol)
      SYSTEM = T.let(:system, Whopsdk::DmsPostTypes::TaggedSymbol)
      AUTOMATED = T.let(:automated, Whopsdk::DmsPostTypes::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::DmsPostTypes::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
