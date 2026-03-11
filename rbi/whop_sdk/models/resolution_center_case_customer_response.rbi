# typed: strong

module WhopSDK
  module Models
    # The types of responses a customer can make to a resolution.
    module ResolutionCenterCaseCustomerResponse
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, WhopSDK::ResolutionCenterCaseCustomerResponse)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      RESPOND =
        T.let(
          :respond,
          WhopSDK::ResolutionCenterCaseCustomerResponse::TaggedSymbol
        )
      APPEAL =
        T.let(
          :appeal,
          WhopSDK::ResolutionCenterCaseCustomerResponse::TaggedSymbol
        )
      WITHDRAW =
        T.let(
          :withdraw,
          WhopSDK::ResolutionCenterCaseCustomerResponse::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[WhopSDK::ResolutionCenterCaseCustomerResponse::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
