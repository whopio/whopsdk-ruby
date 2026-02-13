# frozen_string_literal: true

module WhopSDK
  module Models
    class VerificationSucceededWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute data
      #   An identity verification session used to confirm a person or entity's identity
      #   for payout account eligibility.
      #
      #   @return [WhopSDK::Models::VerificationSucceededWebhookEvent::Data]
      required :data, -> { WhopSDK::VerificationSucceededWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"verification.succeeded"]
      required :type, const: :"verification.succeeded"

      # @!attribute company_id
      #   The company ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"verification.succeeded")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::VerificationSucceededWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::VerificationSucceededWebhookEvent::Data] An identity verification session used to confirm a person or entity's identity f
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The company ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"verification.succeeded"] The webhook event type

      # @see WhopSDK::Models::VerificationSucceededWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
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
        #   {WhopSDK::Models::VerificationSucceededWebhookEvent::Data} for more details.
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
end
