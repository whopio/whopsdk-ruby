# typed: strong

module WhopSDK
  module Models
    # The visibility types for forum posts
    module ForumPostVisibilityType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::ForumPostVisibilityType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MEMBERS_ONLY =
        T.let(:members_only, WhopSDK::ForumPostVisibilityType::TaggedSymbol)
      GLOBALLY_VISIBLE =
        T.let(:globally_visible, WhopSDK::ForumPostVisibilityType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[WhopSDK::ForumPostVisibilityType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
