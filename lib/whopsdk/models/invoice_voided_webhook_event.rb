# frozen_string_literal: true

module Whopsdk
  module Models
    class InvoiceVoidedWebhookEvent < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceVoidedWebhookEvent::APIVersion, nil]
      optional :api_version, enum: -> { Whopsdk::InvoiceVoidedWebhookEvent::APIVersion }

      # @!attribute created_at
      #   The timestamp in seconds since the Unix epoch that the webhook was sent at on
      #   the server
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute data
      #   A statement that defines an amount due by a customer.
      #
      #   @return [Whopsdk::Models::Invoice, nil]
      optional :data, -> { Whopsdk::Invoice }

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceVoidedWebhookEvent::Type, nil]
      optional :type, enum: -> { Whopsdk::InvoiceVoidedWebhookEvent::Type }

      # @!method initialize(id: nil, api_version: nil, created_at: nil, data: nil, type: nil)
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::InvoiceVoidedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version [Symbol, Whopsdk::Models::InvoiceVoidedWebhookEvent::APIVersion] The API version for this webhook
      #
      #   @param created_at [String] The timestamp in seconds since the Unix epoch that the webhook was sent at on th
      #
      #   @param data [Whopsdk::Models::Invoice] A statement that defines an amount due by a customer.
      #
      #   @param type [Symbol, Whopsdk::Models::InvoiceVoidedWebhookEvent::Type] The webhook event type

      # The API version for this webhook
      #
      # @see Whopsdk::Models::InvoiceVoidedWebhookEvent#api_version
      module APIVersion
        extend Whopsdk::Internal::Type::Enum

        V1 = :v1

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The webhook event type
      #
      # @see Whopsdk::Models::InvoiceVoidedWebhookEvent#type
      module Type
        extend Whopsdk::Internal::Type::Enum

        INVOICE_VOIDED = :"invoice.voided"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
