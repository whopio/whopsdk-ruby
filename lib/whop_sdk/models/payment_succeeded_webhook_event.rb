# frozen_string_literal: true

module WhopSDK
  module Models
    class PaymentSucceededWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   A payment represents a completed or attempted charge for a membership. Payments
      #   track the amount, status, currency, and payment method used.
      #
      #   @return [WhopSDK::Models::Payment]
      required :data, -> { WhopSDK::Payment }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"payment.succeeded"]
      required :type, const: :"payment.succeeded"

      # @!attribute company_id
      #   The company ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"payment.succeeded")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentSucceededWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::Payment] A payment represents a completed or attempted charge for a membership. Payments
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The company ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"payment.succeeded"] The webhook event type
    end
  end
end
