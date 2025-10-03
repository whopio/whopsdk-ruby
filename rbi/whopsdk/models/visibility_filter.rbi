# typed: strong

module Whopsdk
  module Models
    # The different levels of visibility for resources
    module VisibilityFilter
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::VisibilityFilter) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      VISIBLE = T.let(:visible, Whopsdk::VisibilityFilter::TaggedSymbol)
      HIDDEN = T.let(:hidden, Whopsdk::VisibilityFilter::TaggedSymbol)
      ARCHIVED = T.let(:archived, Whopsdk::VisibilityFilter::TaggedSymbol)
      QUICK_LINK = T.let(:quick_link, Whopsdk::VisibilityFilter::TaggedSymbol)
      ALL = T.let(:all, Whopsdk::VisibilityFilter::TaggedSymbol)
      NOT_QUICK_LINK =
        T.let(:not_quick_link, Whopsdk::VisibilityFilter::TaggedSymbol)
      NOT_ARCHIVED =
        T.let(:not_archived, Whopsdk::VisibilityFilter::TaggedSymbol)

      sig do
        override.returns(T::Array[Whopsdk::VisibilityFilter::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
