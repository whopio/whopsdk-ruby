# typed: strong

module WhopSDK
  module Models
    # The different types of issues a resolution can be
    module ResolutionCenterCaseIssueType
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::ResolutionCenterCaseIssueType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      FORGOT_TO_CANCEL =
        T.let(
          :forgot_to_cancel,
          WhopSDK::ResolutionCenterCaseIssueType::TaggedSymbol
        )
      ITEM_NOT_RECEIVED =
        T.let(
          :item_not_received,
          WhopSDK::ResolutionCenterCaseIssueType::TaggedSymbol
        )
      SIGNIFICANTLY_NOT_AS_DESCRIBED =
        T.let(
          :significantly_not_as_described,
          WhopSDK::ResolutionCenterCaseIssueType::TaggedSymbol
        )
      UNAUTHORIZED_TRANSACTION =
        T.let(
          :unauthorized_transaction,
          WhopSDK::ResolutionCenterCaseIssueType::TaggedSymbol
        )
      PRODUCT_UNACCEPTABLE =
        T.let(
          :product_unacceptable,
          WhopSDK::ResolutionCenterCaseIssueType::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[WhopSDK::ResolutionCenterCaseIssueType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
