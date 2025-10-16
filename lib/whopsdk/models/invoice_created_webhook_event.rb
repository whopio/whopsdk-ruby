# frozen_string_literal: true

module Whopsdk
  module Models
    class InvoiceCreatedWebhookEvent < Whopsdk::Internal::Type::BaseModel
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
      #   A statement that defines an amount due by a customer.
      #
      #   @return [Whopsdk::Models::Invoice]
      required :data, -> { Whopsdk::Invoice }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"invoice.created"]
      required :type, const: :"invoice.created"

      # @!method initialize(id:, data:, timestamp:, api_version: :v1, type: :"invoice.created")
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param data [Whopsdk::Models::Invoice] A statement that defines an amount due by a customer.
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"invoice.created"] The webhook event type
    end
  end
end
