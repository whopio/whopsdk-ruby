# frozen_string_literal: true

module WhopSDK
  module Resources
    class Webhooks
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::WebhookCreateParams} for more details.
      #
      # Creates a new webhook
      #
      # Required permissions:
      #
      # - `developer:manage_webhook`
      #
      # @overload create(url:, api_version: nil, child_resource_events: nil, enabled: nil, events: nil, resource_id: nil, request_options: {})
      #
      # @param url [String] The URL to send the webhook to.
      #
      # @param api_version [Symbol, WhopSDK::Models::WebhookCreateParams::APIVersion, nil] The different API versions
      #
      # @param child_resource_events [Boolean, nil] Whether or not to send events for child resources. For example, if the webhook i
      #
      # @param enabled [Boolean, nil] Whether or not the webhook is enabled.
      #
      # @param events [Array<Symbol, WhopSDK::Models::WebhookCreateParams::Event>, nil] The events to send the webhook for.
      #
      # @param resource_id [String, nil] The resource to create the webhook for. By default this will use current company
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WebhookCreateResponse]
      #
      # @see WhopSDK::Models::WebhookCreateParams
      def create(params)
        parsed, options = WhopSDK::WebhookCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks",
          body: parsed,
          model: WhopSDK::Models::WebhookCreateResponse,
          options: options
        )
      end

      # Retrieves a webhook by ID
      #
      # Required permissions:
      #
      # - `developer:manage_webhook`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the webhook
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WebhookRetrieveResponse]
      #
      # @see WhopSDK::Models::WebhookRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks/%1$s", id],
          model: WhopSDK::Models::WebhookRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Updates a webhook
      #
      # Required permissions:
      #
      # - `developer:manage_webhook`
      #
      # @overload update(id, api_version: nil, child_resource_events: nil, enabled: nil, events: nil, url: nil, request_options: {})
      #
      # @param id [String] The ID of the Webhook to update
      #
      # @param api_version [Symbol, WhopSDK::Models::WebhookUpdateParams::APIVersion, nil] The different API versions
      #
      # @param child_resource_events [Boolean, nil] Whether or not to send events for child resources.
      #
      # @param enabled [Boolean, nil] Whether or not the webhook is enabled.
      #
      # @param events [Array<Symbol, WhopSDK::Models::WebhookUpdateParams::Event>, nil] The events to send the webhook for.
      #
      # @param url [String, nil] The URL to send the webhook to.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WebhookUpdateResponse]
      #
      # @see WhopSDK::Models::WebhookUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::WebhookUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["webhooks/%1$s", id],
          body: parsed,
          model: WhopSDK::Models::WebhookUpdateResponse,
          options: options
        )
      end

      # Lists webhooks for a company
      #
      # Required permissions:
      #
      # - `developer:manage_webhook`
      #
      # @overload list(company_id:, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list webhooks for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::WebhookListResponse>]
      #
      # @see WhopSDK::Models::WebhookListParams
      def list(params)
        parsed, options = WhopSDK::WebhookListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "webhooks",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::WebhookListResponse,
          options: options
        )
      end

      # Deletes a webhook
      #
      # Required permissions:
      #
      # - `developer:manage_webhook`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the webhook to delete.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::WebhookDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["webhooks/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # @param payload [String] The raw webhook payload as a string
      #
      # @return [WhopSDK::Models::InvoiceCreatedWebhookEvent, WhopSDK::Models::InvoicePaidWebhookEvent, WhopSDK::Models::InvoicePastDueWebhookEvent, WhopSDK::Models::InvoiceVoidedWebhookEvent, WhopSDK::Models::MembershipActivatedWebhookEvent, WhopSDK::Models::MembershipDeactivatedWebhookEvent, WhopSDK::Models::EntryCreatedWebhookEvent, WhopSDK::Models::EntryApprovedWebhookEvent, WhopSDK::Models::EntryDeniedWebhookEvent, WhopSDK::Models::EntryDeletedWebhookEvent, WhopSDK::Models::SetupIntentRequiresActionWebhookEvent, WhopSDK::Models::SetupIntentSucceededWebhookEvent, WhopSDK::Models::SetupIntentCanceledWebhookEvent, WhopSDK::Models::WithdrawalCreatedWebhookEvent, WhopSDK::Models::WithdrawalUpdatedWebhookEvent, WhopSDK::Models::CourseLessonInteractionCompletedWebhookEvent, WhopSDK::Models::PayoutMethodCreatedWebhookEvent, WhopSDK::Models::VerificationSucceededWebhookEvent, WhopSDK::Models::PaymentCreatedWebhookEvent, WhopSDK::Models::PaymentSucceededWebhookEvent, WhopSDK::Models::PaymentFailedWebhookEvent, WhopSDK::Models::PaymentPendingWebhookEvent, WhopSDK::Models::DisputeCreatedWebhookEvent, WhopSDK::Models::DisputeUpdatedWebhookEvent, WhopSDK::Models::RefundCreatedWebhookEvent, WhopSDK::Models::RefundUpdatedWebhookEvent, WhopSDK::Models::MembershipCancelAtPeriodEndChangedWebhookEvent]
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
