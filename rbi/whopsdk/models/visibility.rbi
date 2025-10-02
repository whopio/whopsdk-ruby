# typed: strong

module Whopsdk
  module Models
    # Visibility of a resource
    module Visibility
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::Visibility) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      VISIBLE = T.let(:visible, Whopsdk::Visibility::TaggedSymbol)
      HIDDEN = T.let(:hidden, Whopsdk::Visibility::TaggedSymbol)
      ARCHIVED = T.let(:archived, Whopsdk::Visibility::TaggedSymbol)
      QUICK_LINK = T.let(:quick_link, Whopsdk::Visibility::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::Visibility::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
