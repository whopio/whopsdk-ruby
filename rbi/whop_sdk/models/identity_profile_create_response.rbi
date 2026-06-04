# typed: strong

module WhopSDK
  module Models
    class IdentityProfileCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::IdentityProfileCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The numeric id of the verification record.
      sig { returns(String) }
      attr_accessor :id

      # When the verification record was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # An error code for a verification attempt.
      sig { returns(T.nilable(WhopSDK::VerificationErrorCode::TaggedSymbol)) }
      attr_accessor :last_error_code

      # A human-readable explanation of the most recent verification error. Null if no
      # error has occurred.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_error_reason

      # A URL the user can visit to complete the verification process. Null if the
      # session does not require user interaction.
      sig { returns(T.nilable(String)) }
      attr_accessor :session_url

      # The current status of this verification session.
      sig { returns(WhopSDK::VerificationStatus::TaggedSymbol) }
      attr_accessor :status

      # An identity verification session used to confirm a person or entity's identity
      # for payout account eligibility.
      sig do
        params(
          id: String,
          created_at: Time,
          last_error_code: T.nilable(WhopSDK::VerificationErrorCode::OrSymbol),
          last_error_reason: T.nilable(String),
          session_url: T.nilable(String),
          status: WhopSDK::VerificationStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The numeric id of the verification record.
        id:,
        # When the verification record was created.
        created_at:,
        # An error code for a verification attempt.
        last_error_code:,
        # A human-readable explanation of the most recent verification error. Null if no
        # error has occurred.
        last_error_reason:,
        # A URL the user can visit to complete the verification process. Null if the
        # session does not require user interaction.
        session_url:,
        # The current status of this verification session.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            last_error_code:
              T.nilable(WhopSDK::VerificationErrorCode::TaggedSymbol),
            last_error_reason: T.nilable(String),
            session_url: T.nilable(String),
            status: WhopSDK::VerificationStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
