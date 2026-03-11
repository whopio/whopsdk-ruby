# typed: strong

module WhopSDK
  module Models
    # The statuses a resolution object can have
    module ResolutionCenterCaseStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, WhopSDK::ResolutionCenterCaseStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MERCHANT_RESPONSE_NEEDED =
        T.let(
          :merchant_response_needed,
          WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol
        )
      CUSTOMER_RESPONSE_NEEDED =
        T.let(
          :customer_response_needed,
          WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol
        )
      MERCHANT_INFO_NEEDED =
        T.let(
          :merchant_info_needed,
          WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol
        )
      CUSTOMER_INFO_NEEDED =
        T.let(
          :customer_info_needed,
          WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol
        )
      UNDER_PLATFORM_REVIEW =
        T.let(
          :under_platform_review,
          WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol
        )
      CUSTOMER_WON =
        T.let(:customer_won, WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol)
      MERCHANT_WON =
        T.let(:merchant_won, WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol)
      CUSTOMER_WITHDREW =
        T.let(
          :customer_withdrew,
          WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[WhopSDK::ResolutionCenterCaseStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
