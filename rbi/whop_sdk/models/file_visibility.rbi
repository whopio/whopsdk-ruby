# typed: strong

module WhopSDK
  module Models
    # Controls whether an uploaded file is publicly accessible or requires
    # authentication to access.
    module FileVisibility
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::FileVisibility) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PUBLIC = T.let(:public, WhopSDK::FileVisibility::TaggedSymbol)
      PRIVATE = T.let(:private, WhopSDK::FileVisibility::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::FileVisibility::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
