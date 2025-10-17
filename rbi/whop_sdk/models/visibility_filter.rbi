# typed: strong

module WhopSDK
  module Models
    # The different levels of visibility for resources
    module VisibilityFilter
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::VisibilityFilter) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      VISIBLE = T.let(:visible, WhopSDK::VisibilityFilter::TaggedSymbol)
      HIDDEN = T.let(:hidden, WhopSDK::VisibilityFilter::TaggedSymbol)
      ARCHIVED = T.let(:archived, WhopSDK::VisibilityFilter::TaggedSymbol)
      QUICK_LINK = T.let(:quick_link, WhopSDK::VisibilityFilter::TaggedSymbol)
      ALL = T.let(:all, WhopSDK::VisibilityFilter::TaggedSymbol)
      NOT_QUICK_LINK =
        T.let(:not_quick_link, WhopSDK::VisibilityFilter::TaggedSymbol)
      NOT_ARCHIVED =
        T.let(:not_archived, WhopSDK::VisibilityFilter::TaggedSymbol)

      sig do
        override.returns(T::Array[WhopSDK::VisibilityFilter::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
