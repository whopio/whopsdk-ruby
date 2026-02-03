# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Verifications#retrieve
    class VerificationRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique identifier for the verification.
      #
      #   @return [String]
      required :id, String

      # @!attribute last_error_code
      #   An error code for a verification attempt.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationErrorCode, nil]
      required :last_error_code, enum: -> { WhopSDK::VerificationErrorCode }, nil?: true

      # @!attribute last_error_reason
      #   The last error reason that occurred during the verification.
      #
      #   @return [String, nil]
      required :last_error_reason, String, nil?: true

      # @!attribute status
      #   The status of the verification.
      #
      #   @return [Symbol, WhopSDK::Models::VerificationStatus]
      required :status, enum: -> { WhopSDK::VerificationStatus }

      # @!method initialize(id:, last_error_code:, last_error_reason:, status:)
      #   An object representing an identity verification session
      #
      #   @param id [String] A unique identifier for the verification.
      #
      #   @param last_error_code [Symbol, WhopSDK::Models::VerificationErrorCode, nil] An error code for a verification attempt.
      #
      #   @param last_error_reason [String, nil] The last error reason that occurred during the verification.
      #
      #   @param status [Symbol, WhopSDK::Models::VerificationStatus] The status of the verification.
    end
  end
end
