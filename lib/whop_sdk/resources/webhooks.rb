# frozen_string_literal: true

module WhopSDK
  module Resources
    class Webhooks
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::WebhookCreateParams} for more details.
      #
      # Creates a webhook endpoint that receives event notifications via HTTP POST.
      #
      # @overload create(url:, body_api_version_date: nil, child_resource_events: nil, enabled: nil, events: nil, resource_id: nil, header_api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param url [String] Body param: The URL to send the webhook to.
      #
      # @param body_api_version_date [String, nil] Body param: The dated API version (Api-Version-Date) to pin this webhook's paylo
      #
      # @param child_resource_events [Boolean] Body param: Whether to send events for child resources. For example, if the webh
      #
      # @param enabled [Boolean] Body param: Whether or not the webhook is enabled. Defaults to `true`.
      #
      # @param events [Array<Symbol, WhopSDK::Models::WebhookCreateParams::Event>] Body param: The events to send the webhook for, in dot form (for example `paymen
      #
      # @param resource_id [String, nil] Body param: The account or app to create the webhook for. Defaults to the curren
      #
      # @param header_api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Webhook]
      #
      # @see WhopSDK::Models::WebhookCreateParams
      def create(params)
        parsed, options = WhopSDK::WebhookCreateParams.dump_request(params)
        header_params = {header_api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "webhooks",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Webhook,
          options: options
        )
      end

      # Retrieves the details of an existing webhook.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] Webhook ID, prefixed `hook_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Webhook]
      #
      # @see WhopSDK::Models::WebhookRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::WebhookRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["webhooks/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Webhook,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::WebhookUpdateParams} for more details.
      #
      # Updates a webhook endpoint's URL, subscribed events, pinned payload version, or
      # enabled state.
      #
      # @overload update(id, body_api_version_date: nil, child_resource_events: nil, enabled: nil, events: nil, url: nil, header_api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: Webhook ID, prefixed `hook_`.
      #
      # @param body_api_version_date [String, nil] Body param: The dated API version (Api-Version-Date) to pin this webhook's paylo
      #
      # @param child_resource_events [Boolean] Body param: Whether or not to send events for child resources.
      #
      # @param enabled [Boolean] Body param: Whether or not the webhook is enabled.
      #
      # @param events [Array<Symbol, WhopSDK::Models::WebhookUpdateParams::Event>] Body param: The events to send the webhook for, in dot form (for example `paymen
      #
      # @param url [String] Body param: The URL to send the webhook to.
      #
      # @param header_api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Webhook]
      #
      # @see WhopSDK::Models::WebhookUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::WebhookUpdateParams.dump_request(params)
        header_params = {header_api_version_date: "api-version-date"}
        @client.request(
          method: :patch,
          path: ["webhooks/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Webhook,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::WebhookListParams} for more details.
      #
      # Returns a paginated list of webhook endpoints configured for an account, ordered
      # by most recently created.
      #
      # @overload list(account_id:, after: nil, app_id: nil, before: nil, first: nil, has_failures: nil, include_app_webhooks: nil, last: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: The unique identifier of the account to list webhooks for.
      #
      # @param after [String] Query param: A cursor; returns webhooks after this position.
      #
      # @param app_id [String] Query param: Only return webhooks attached to this app. Omit to list the account
      #
      # @param before [String] Query param: A cursor; returns webhooks before this position.
      #
      # @param first [Integer] Query param: The number of webhooks to return (default 20, max 100).
      #
      # @param has_failures [Boolean] Query param: Only return webhooks whose endpoint is currently failing — every de
      #
      # @param include_app_webhooks [Boolean] Query param: Also return webhooks attached to the account's apps, not just the a
      #
      # @param last [Integer] Query param: The number of webhooks to return from the end of the range.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::WebhookListResponse>]
      #
      # @see WhopSDK::Models::WebhookListParams
      def list(params)
        query_params =
          [:account_id, :after, :app_id, :before, :first, :has_failures, :include_app_webhooks, :last]
        parsed, options = WhopSDK::WebhookListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "webhooks",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::WebhookListResponse,
          options: options
        )
      end

      # Permanently deletes a webhook endpoint. Returns `true` on success, matching the
      # legacy proxy response.
      #
      # @overload delete(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] Webhook ID, prefixed `hook_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WebhookDeleteResponse]
      #
      # @see WhopSDK::Models::WebhookDeleteParams
      def delete(id, params = {})
        parsed, options = WhopSDK::WebhookDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["webhooks/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::WebhookDeleteResponse,
          options: options
        )
      end

      # @param payload [String] The raw webhook payload as a string
      #
      # @param headers [Hash{String=>String}] The raw HTTP headers that came with the payload
      #
      # @param key [String, nil] The webhook signing key
      #
      # @return [WhopSDK::Models::AccountUpdatedWebhookEvent, WhopSDK::Models::AdCampaignPaymentFailedWebhookEvent, WhopSDK::Models::CardCanceledWebhookEvent, WhopSDK::Models::CardCreatedWebhookEvent, WhopSDK::Models::CardFrozenWebhookEvent, WhopSDK::Models::CardUpdatedWebhookEvent, WhopSDK::Models::CardApplicationApprovedWebhookEvent, WhopSDK::Models::CardApplicationCreatedWebhookEvent, WhopSDK::Models::CardApplicationDeniedWebhookEvent, WhopSDK::Models::CardApplicationUpdatedWebhookEvent, WhopSDK::Models::CardTransactionCompletedWebhookEvent, WhopSDK::Models::CardTransactionCreatedWebhookEvent, WhopSDK::Models::CardTransactionDeclinedWebhookEvent, WhopSDK::Models::CardTransactionReversedWebhookEvent, WhopSDK::Models::CardTransactionUpdatedWebhookEvent, WhopSDK::Models::ChatMessageCreatedWebhookEvent, WhopSDK::Models::ChatReactionCreatedWebhookEvent, WhopSDK::Models::CourseLessonInteractionCompletedWebhookEvent, WhopSDK::Models::DepositSucceededWebhookEvent, WhopSDK::Models::DisputeCreatedWebhookEvent, WhopSDK::Models::DisputeUpdatedWebhookEvent, WhopSDK::Models::DisputeAlertCreatedWebhookEvent, WhopSDK::Models::EntryApprovedWebhookEvent, WhopSDK::Models::EntryCreatedWebhookEvent, WhopSDK::Models::EntryDeletedWebhookEvent, WhopSDK::Models::EntryDeniedWebhookEvent, WhopSDK::Models::ExportCompletedWebhookEvent, WhopSDK::Models::ExportFailedWebhookEvent, WhopSDK::Models::IdentityProfileUpdatedWebhookEvent, WhopSDK::Models::InvoiceCreatedWebhookEvent, WhopSDK::Models::InvoiceMarkedUncollectibleWebhookEvent, WhopSDK::Models::InvoicePaidWebhookEvent, WhopSDK::Models::InvoicePastDueWebhookEvent, WhopSDK::Models::InvoiceVoidedWebhookEvent, WhopSDK::Models::LedgerAccountFundsAvailableWebhookEvent, WhopSDK::Models::MemberCreatedWebhookEvent, WhopSDK::Models::MembershipActivatedWebhookEvent, WhopSDK::Models::MembershipCancelAtPeriodEndChangedWebhookEvent, WhopSDK::Models::MembershipDeactivatedWebhookEvent, WhopSDK::Models::MembershipTrialEndingSoonWebhookEvent, WhopSDK::Models::PaymentAuthorizedWebhookEvent, WhopSDK::Models::PaymentCanceledWebhookEvent, WhopSDK::Models::PaymentCreatedWebhookEvent, WhopSDK::Models::PaymentFailedWebhookEvent, WhopSDK::Models::PaymentPendingWebhookEvent, WhopSDK::Models::PaymentSucceededWebhookEvent, WhopSDK::Models::PayoutCreatedWebhookEvent, WhopSDK::Models::PayoutReversedWebhookEvent, WhopSDK::Models::PayoutUpdatedWebhookEvent, WhopSDK::Models::PayoutAccountStatusUpdatedWebhookEvent, WhopSDK::Models::PayoutMethodCreatedWebhookEvent, WhopSDK::Models::PlanCreatedWebhookEvent, WhopSDK::Models::PlanDeletedWebhookEvent, WhopSDK::Models::PlanUpdatedWebhookEvent, WhopSDK::Models::ProductCreatedWebhookEvent, WhopSDK::Models::ProductDeletedWebhookEvent, WhopSDK::Models::ProductPublishedWebhookEvent, WhopSDK::Models::ProductUnpublishedWebhookEvent, WhopSDK::Models::ProductUpdatedWebhookEvent, WhopSDK::Models::RefundCreatedWebhookEvent, WhopSDK::Models::RefundUpdatedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseCreatedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseDecidedWebhookEvent, WhopSDK::Models::ResolutionCenterCaseUpdatedWebhookEvent, WhopSDK::Models::SetupIntentCanceledWebhookEvent, WhopSDK::Models::SetupIntentRequiresActionWebhookEvent, WhopSDK::Models::SetupIntentSucceededWebhookEvent, WhopSDK::Models::ShipmentCreatedWebhookEvent, WhopSDK::Models::ShipmentUpdatedWebhookEvent, WhopSDK::Models::SwapCompletedWebhookEvent, WhopSDK::Models::TransferCompletedWebhookEvent, WhopSDK::Models::TransferCreatedWebhookEvent, WhopSDK::Models::TransferFailedWebhookEvent, WhopSDK::Models::VerificationSucceededWebhookEvent]
      def unwrap(payload, headers:, key: @client.webhook_key)
        if key.nil?
          raise ArgumentError.new("Cannot verify a webhook without a key on either the client's webhook_key or passed in as an argument")
        end

        ::StandardWebhooks::Webhook.new(key).verify(payload, headers)

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
