# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::IdentityProfiles#list_verifications
    class IdentityProfileListVerificationsResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The numeric id of the verification record.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the verification record was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute last_error_code
      #   An error code for a verification attempt.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationErrorCode, nil]
      required :last_error_code, enum: -> { WhopSDK::VerificationErrorCode }, nil?: true

      # @!attribute last_error_reason
      #   A human-readable explanation of the most recent verification error. Null if no
      #   error has occurred.
      #
      #   @return [String, nil]
      required :last_error_reason, String, nil?: true

      # @!attribute session_url
      #   A URL the user can visit to complete the verification process. Null if the
      #   session does not require user interaction.
      #
      #   @return [String, nil]
      required :session_url, String, nil?: true

      # @!attribute status
      #   The current status of this verification session.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationStatus]
      required :status, enum: -> { WhopSDK::VerificationStatus }

      # @!method initialize(id:, created_at:, last_error_code:, last_error_reason:, session_url:, status:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::IdentityProfileListVerificationsResponse} for more details.
      #
      #   An identity verification session used to confirm a person or entity's identity
      #   for payout account eligibility.
      #
      #   @param id [String] The numeric id of the verification record.
      #
      #   @param created_at [Time] When the verification record was created.
      #
      #   @param last_error_code [Symbol, WhopSDK::Models::VerificationErrorCode, nil] An error code for a verification attempt.
      #
      #   @param last_error_reason [String, nil] A human-readable explanation of the most recent verification error. Null if no e
      #
      #   @param session_url [String, nil] A URL the user can visit to complete the verification process. Null if the sessi
      #
      #   @param status [Symbol, WhopSDK::Models::VerificationStatus] The current status of this verification session.
    end
  end
end
