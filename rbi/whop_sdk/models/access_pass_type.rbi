# typed: strong

module WhopSDK
  module Models
    # The different types an product can be. Only use 'regular'. The rest are for
    # internal use
    module AccessPassType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AccessPassType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REGULAR = T.let(:regular, WhopSDK::AccessPassType::TaggedSymbol)
      APP = T.let(:app, WhopSDK::AccessPassType::TaggedSymbol)
      EXPERIENCE_UPSELL =
        T.let(:experience_upsell, WhopSDK::AccessPassType::TaggedSymbol)
      API_ONLY = T.let(:api_only, WhopSDK::AccessPassType::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::AccessPassType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
