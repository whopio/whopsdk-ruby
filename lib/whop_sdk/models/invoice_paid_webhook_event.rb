# frozen_string_literal: true

module WhopSDK
  module Models
    class InvoicePaidWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   An invoice represents an itemized bill sent by a company to a customer for a
      #   specific product and plan, tracking the amount owed, due date, and payment
      #   status.
      #
      #   @return [WhopSDK::Models::Invoice]
      required :data, -> { WhopSDK::Invoice }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"invoice.paid"]
      required :type, const: :"invoice.paid"

      # @!attribute company_id
      #   The company ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!method initialize(id:, data:, timestamp:, company_id: nil, api_version: :v1, type: :"invoice.paid")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::InvoicePaidWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [WhopSDK::Models::Invoice] An invoice represents an itemized bill sent by a company to a customer for a spe
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param company_id [String, nil] The company ID that this webhook event is associated with
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"invoice.paid"] The webhook event type
    end
  end
end
