# typed: strong

module Whopsdk
  module Models
    # The different types an access pass can be.
    module AccessPassType
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::AccessPassType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REGULAR = T.let(:regular, Whopsdk::AccessPassType::TaggedSymbol)
      APP = T.let(:app, Whopsdk::AccessPassType::TaggedSymbol)
      EXPERIENCE_UPSELL =
        T.let(:experience_upsell, Whopsdk::AccessPassType::TaggedSymbol)
      API_ONLY = T.let(:api_only, Whopsdk::AccessPassType::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::AccessPassType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
