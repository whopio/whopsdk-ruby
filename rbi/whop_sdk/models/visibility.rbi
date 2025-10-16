# typed: strong

module WhopSDK
  module Models
    # Visibility of a resource
    module Visibility
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Visibility) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      VISIBLE = T.let(:visible, WhopSDK::Visibility::TaggedSymbol)
      HIDDEN = T.let(:hidden, WhopSDK::Visibility::TaggedSymbol)
      ARCHIVED = T.let(:archived, WhopSDK::Visibility::TaggedSymbol)
      QUICK_LINK = T.let(:quick_link, WhopSDK::Visibility::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::Visibility::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
