# typed: strong

module WhopSDK
  module Models
    # The type of embed for a lesson
    module EmbedType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::EmbedType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      YOUTUBE = T.let(:youtube, WhopSDK::EmbedType::TaggedSymbol)
      LOOM = T.let(:loom, WhopSDK::EmbedType::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::EmbedType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
