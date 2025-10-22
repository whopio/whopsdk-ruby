# frozen_string_literal: true

module WhopSDK
  module Resources
    class Webhooks
      # @param payload [String] The raw webhook payload as a string
      #
      # @return [WhopSDK::Models::InvoiceCreatedWebhookEvent, WhopSDK::Models::InvoicePaidWebhookEvent, WhopSDK::Models::InvoicePastDueWebhookEvent, WhopSDK::Models::InvoiceVoidedWebhookEvent, WhopSDK::Models::MembershipActivatedWebhookEvent, WhopSDK::Models::MembershipDeactivatedWebhookEvent, WhopSDK::Models::PaymentSucceededWebhookEvent, WhopSDK::Models::PaymentFailedWebhookEvent, WhopSDK::Models::PaymentPendingWebhookEvent]
      def unwrap(payload)
        parsed = JSON.parse(payload, symbolize_names: true)
        WhopSDK::Internal::Type::Converter.coerce(WhopSDK::Models::UnwrapWebhookEvent, parsed)
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
