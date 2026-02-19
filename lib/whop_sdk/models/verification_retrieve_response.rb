# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#retrieve
    class VerificationRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the verification.
      #
      #   @return [String]
      required :id, String

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

      # @!attribute status
      #   The current status of this verification session.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationStatus]
      required :status, enum: -> { WhopSDK::VerificationStatus }

      # @!method initialize(id:, last_error_code:, last_error_reason:, status:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::VerificationRetrieveResponse} for more details.
      #
      #   An identity verification session used to confirm a person or entity's identity
      #   for payout account eligibility.
      #
      #   @param id [String] The unique identifier for the verification.
      #
      #   @param last_error_code [Symbol, WhopSDK::Models::VerificationErrorCode, nil] An error code for a verification attempt.
      #
      #   @param last_error_reason [String, nil] A human-readable explanation of the most recent verification error. Null if no e
      #
      #   @param status [Symbol, WhopSDK::Models::VerificationStatus] The current status of this verification session.
    end
  end
end
