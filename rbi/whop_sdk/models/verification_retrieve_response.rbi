# typed: strong

module WhopSDK
  module Models
    class VerificationRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::VerificationRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique identifier for the verification.
      sig { returns(String) }
      attr_accessor :id

      # An error code for a verification attempt.
      sig { returns(T.nilable(WhopSDK::VerificationErrorCode::TaggedSymbol)) }
      attr_accessor :last_error_code

      # The last error reason that occurred during the verification.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_error_reason

      # The status of the verification.
      sig { returns(WhopSDK::VerificationStatus::TaggedSymbol) }
      attr_accessor :status

      # An object representing an identity verification session
      sig do
        params(
          id: String,
          last_error_code: T.nilable(WhopSDK::VerificationErrorCode::OrSymbol),
          last_error_reason: T.nilable(String),
          status: WhopSDK::VerificationStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for the verification.
        id:,
        # An error code for a verification attempt.
        last_error_code:,
        # The last error reason that occurred during the verification.
        last_error_reason:,
        # The status of the verification.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            last_error_code:
              T.nilable(WhopSDK::VerificationErrorCode::TaggedSymbol),
            last_error_reason: T.nilable(String),
            status: WhopSDK::VerificationStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
