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

      # The unique identifier for the verification.
      sig { returns(String) }
      attr_accessor :id

      # An error code for a verification attempt.
      sig { returns(T.nilable(WhopSDK::VerificationErrorCode::TaggedSymbol)) }
      attr_accessor :last_error_code

      # A human-readable explanation of the most recent verification error. Null if no
      # error has occurred.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_error_reason

      # The current status of this verification session.
      sig { returns(WhopSDK::VerificationStatus::TaggedSymbol) }
      attr_accessor :status

      # An identity verification session used to confirm a person or entity's identity
      # for payout account eligibility.
      sig do
        params(
          id: String,
          last_error_code: T.nilable(WhopSDK::VerificationErrorCode::OrSymbol),
          last_error_reason: T.nilable(String),
          status: WhopSDK::VerificationStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the verification.
        id:,
        # An error code for a verification attempt.
        last_error_code:,
        # A human-readable explanation of the most recent verification error. Null if no
        # error has occurred.
        last_error_reason:,
        # The current status of this verification session.
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
