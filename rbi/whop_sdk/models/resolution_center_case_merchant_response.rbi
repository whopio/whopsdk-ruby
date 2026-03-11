# typed: strong

module WhopSDK
  module Models
    # The types of responses a merchant can make to a resolution.
    module ResolutionCenterCaseMerchantResponse
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, WhopSDK::ResolutionCenterCaseMerchantResponse)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACCEPT =
        T.let(
          :accept,
          WhopSDK::ResolutionCenterCaseMerchantResponse::TaggedSymbol
        )
      DENY =
        T.let(
          :deny,
          WhopSDK::ResolutionCenterCaseMerchantResponse::TaggedSymbol
        )
      REQUEST_MORE_INFO =
        T.let(
          :request_more_info,
          WhopSDK::ResolutionCenterCaseMerchantResponse::TaggedSymbol
        )
      APPEAL =
        T.let(
          :appeal,
          WhopSDK::ResolutionCenterCaseMerchantResponse::TaggedSymbol
        )
      RESPOND =
        T.let(
          :respond,
          WhopSDK::ResolutionCenterCaseMerchantResponse::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[WhopSDK::ResolutionCenterCaseMerchantResponse::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
