# typed: strong

module WhopSDK
  module Models
    # The different API versions
    module APIVersion
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::APIVersion) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      V1 = T.let(:v1, WhopSDK::APIVersion::TaggedSymbol)
      V2 = T.let(:v2, WhopSDK::APIVersion::TaggedSymbol)
      V5 = T.let(:v5, WhopSDK::APIVersion::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::APIVersion::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
