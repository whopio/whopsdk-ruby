# typed: strong

module WhopSDK
  module Models
    # The types of responses the platform can make to a resolution.
    module ResolutionCenterCasePlatformResponse
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, WhopSDK::ResolutionCenterCasePlatformResponse)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REQUEST_BUYER_INFO =
        T.let(
          :request_buyer_info,
          WhopSDK::ResolutionCenterCasePlatformResponse::TaggedSymbol
        )
      REQUEST_MERCHANT_INFO =
        T.let(
          :request_merchant_info,
          WhopSDK::ResolutionCenterCasePlatformResponse::TaggedSymbol
        )
      MERCHANT_WINS =
        T.let(
          :merchant_wins,
          WhopSDK::ResolutionCenterCasePlatformResponse::TaggedSymbol
        )
      PLATFORM_REFUND =
        T.let(
          :platform_refund,
          WhopSDK::ResolutionCenterCasePlatformResponse::TaggedSymbol
        )
      MERCHANT_REFUND =
        T.let(
          :merchant_refund,
          WhopSDK::ResolutionCenterCasePlatformResponse::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[WhopSDK::ResolutionCenterCasePlatformResponse::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
