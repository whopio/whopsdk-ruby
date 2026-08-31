# typed: strong

module WhopSDK
  module Resources
    class Webhooks
      # Creates a webhook endpoint that receives event notifications via HTTP POST.
      sig do
        params(
          url: String,
          body_api_version_date: T.nilable(String),
          child_resource_events: T::Boolean,
          enabled: T::Boolean,
          events: T::Array[WhopSDK::WebhookCreateParams::Event::OrSymbol],
          resource_id: T.nilable(String),
          header_api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Webhook)
      end
      def create(
        # Body param: The URL to send the webhook to.
        url:,
        # Body param: The dated API version (Api-Version-Date) to pin this webhook's
        # payloads to. Omit to leave the webhook unpinned, tracking the current payload
        # shape.
        body_api_version_date: nil,
        # Body param: Whether to send events for child resources. For example, if the
        # webhook is created for an account, enabling this sends events only from its
        # connected accounts.
        child_resource_events: nil,
        # Body param: Whether or not the webhook is enabled. Defaults to `true`.
        enabled: nil,
        # Body param: The events to send the webhook for, in dot form (for example
        # `payment.succeeded`).
        events: nil,
        # Body param: The account or app to create the webhook for. Defaults to the
        # current account.
        resource_id: nil,
        # Header param: Pins the request to a dated API version.
        header_api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing webhook.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Webhook)
      end
      def retrieve(
        # Webhook ID, prefixed `hook_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Updates a webhook endpoint's URL, subscribed events, pinned payload version, or
      # enabled state.
      sig do
        params(
          id: String,
          body_api_version_date: T.nilable(String),
          child_resource_events: T::Boolean,
          enabled: T::Boolean,
          events: T::Array[WhopSDK::WebhookUpdateParams::Event::OrSymbol],
          url: String,
          header_api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Webhook)
      end
      def update(
        # Path param: Webhook ID, prefixed `hook_`.
        id,
        # Body param: The dated API version (Api-Version-Date) to pin this webhook's
        # payloads to. Only valid for `v1` webhooks. Omit to leave the current pin
        # unchanged, or pass `null` to unpin and track the current payload shape.
        body_api_version_date: nil,
        # Body param: Whether or not to send events for child resources.
        child_resource_events: nil,
        # Body param: Whether or not the webhook is enabled.
        enabled: nil,
        # Body param: The events to send the webhook for, in dot form (for example
        # `payment.succeeded`).
        events: nil,
        # Body param: The URL to send the webhook to.
        url: nil,
        # Header param: Pins the request to a dated API version.
        header_api_version_date: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of webhook endpoints configured for an account, ordered
      # by most recently created.
      sig do
        params(
          account_id: String,
          after: String,
          app_id: String,
          before: String,
          first: Integer,
          has_failures: T::Boolean,
          include_app_webhooks: T::Boolean,
          last: Integer,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::WebhookListResponse]
        )
      end
      def list(
        # Query param: The unique identifier of the account to list webhooks for.
        account_id:,
        # Query param: A cursor; returns webhooks after this position.
        after: nil,
        # Query param: Only return webhooks attached to this app. Omit to list the
        # account's own webhooks.
        app_id: nil,
        # Query param: A cursor; returns webhooks before this position.
        before: nil,
        # Query param: The number of webhooks to return (default 20, max 100).
        first: nil,
        # Query param: Only return webhooks whose endpoint is currently failing — every
        # delivery since the current failure streak began has been rejected. Clears as
        # soon as a delivery succeeds.
        has_failures: nil,
        # Query param: Also return webhooks attached to the account's apps, not just the
        # account's own. Cannot be combined with `app_id`.
        include_app_webhooks: nil,
        # Query param: The number of webhooks to return from the end of the range.
        last: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Permanently deletes a webhook endpoint. Returns `true` on success, matching the
      # legacy proxy response.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WebhookDeleteResponse)
      end
      def delete(
        # Webhook ID, prefixed `hook_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        params(
          payload: String,
          headers: T::Hash[String, String],
          key: T.nilable(String)
        ).returns(
          T.any(
            WhopSDK::AccountUpdatedWebhookEvent,
            WhopSDK::AdCampaignPaymentFailedWebhookEvent,
            WhopSDK::CardCanceledWebhookEvent,
            WhopSDK::CardCreatedWebhookEvent,
            WhopSDK::CardFrozenWebhookEvent,
            WhopSDK::CardUpdatedWebhookEvent,
            WhopSDK::CardApplicationApprovedWebhookEvent,
            WhopSDK::CardApplicationCreatedWebhookEvent,
            WhopSDK::CardApplicationDeniedWebhookEvent,
            WhopSDK::CardApplicationUpdatedWebhookEvent,
            WhopSDK::CardTransactionCompletedWebhookEvent,
            WhopSDK::CardTransactionCreatedWebhookEvent,
            WhopSDK::CardTransactionDeclinedWebhookEvent,
            WhopSDK::CardTransactionReversedWebhookEvent,
            WhopSDK::CardTransactionUpdatedWebhookEvent,
            WhopSDK::ChatMessageCreatedWebhookEvent,
            WhopSDK::ChatReactionCreatedWebhookEvent,
            WhopSDK::CourseLessonInteractionCompletedWebhookEvent,
            WhopSDK::DepositSucceededWebhookEvent,
            WhopSDK::DisputeCreatedWebhookEvent,
            WhopSDK::DisputeUpdatedWebhookEvent,
            WhopSDK::DisputeAlertCreatedWebhookEvent,
            WhopSDK::EntryApprovedWebhookEvent,
            WhopSDK::EntryCreatedWebhookEvent,
            WhopSDK::EntryDeletedWebhookEvent,
            WhopSDK::EntryDeniedWebhookEvent,
            WhopSDK::ExportCompletedWebhookEvent,
            WhopSDK::ExportFailedWebhookEvent,
            WhopSDK::IdentityProfileUpdatedWebhookEvent,
            WhopSDK::InvoiceCreatedWebhookEvent,
            WhopSDK::InvoiceMarkedUncollectibleWebhookEvent,
            WhopSDK::InvoicePaidWebhookEvent,
            WhopSDK::InvoicePastDueWebhookEvent,
            WhopSDK::InvoiceVoidedWebhookEvent,
            WhopSDK::LedgerAccountFundsAvailableWebhookEvent,
            WhopSDK::MemberCreatedWebhookEvent,
            WhopSDK::MembershipActivatedWebhookEvent,
            WhopSDK::MembershipCancelAtPeriodEndChangedWebhookEvent,
            WhopSDK::MembershipDeactivatedWebhookEvent,
            WhopSDK::MembershipTrialEndingSoonWebhookEvent,
            WhopSDK::PaymentAuthorizedWebhookEvent,
            WhopSDK::PaymentCanceledWebhookEvent,
            WhopSDK::PaymentCreatedWebhookEvent,
            WhopSDK::PaymentFailedWebhookEvent,
            WhopSDK::PaymentPendingWebhookEvent,
            WhopSDK::PaymentSucceededWebhookEvent,
            WhopSDK::PayoutCreatedWebhookEvent,
            WhopSDK::PayoutReversedWebhookEvent,
            WhopSDK::PayoutUpdatedWebhookEvent,
            WhopSDK::PayoutAccountStatusUpdatedWebhookEvent,
            WhopSDK::PayoutMethodCreatedWebhookEvent,
            WhopSDK::PlanCreatedWebhookEvent,
            WhopSDK::PlanDeletedWebhookEvent,
            WhopSDK::PlanUpdatedWebhookEvent,
            WhopSDK::ProductCreatedWebhookEvent,
            WhopSDK::ProductDeletedWebhookEvent,
            WhopSDK::ProductPublishedWebhookEvent,
            WhopSDK::ProductUnpublishedWebhookEvent,
            WhopSDK::ProductUpdatedWebhookEvent,
            WhopSDK::RefundCreatedWebhookEvent,
            WhopSDK::RefundUpdatedWebhookEvent,
            WhopSDK::ResolutionCenterCaseCreatedWebhookEvent,
            WhopSDK::ResolutionCenterCaseDecidedWebhookEvent,
            WhopSDK::ResolutionCenterCaseUpdatedWebhookEvent,
            WhopSDK::SetupIntentCanceledWebhookEvent,
            WhopSDK::SetupIntentRequiresActionWebhookEvent,
            WhopSDK::SetupIntentSucceededWebhookEvent,
            WhopSDK::ShipmentCreatedWebhookEvent,
            WhopSDK::ShipmentUpdatedWebhookEvent,
            WhopSDK::SwapCompletedWebhookEvent,
            WhopSDK::TransferCompletedWebhookEvent,
            WhopSDK::TransferCreatedWebhookEvent,
            WhopSDK::TransferFailedWebhookEvent,
            WhopSDK::VerificationSucceededWebhookEvent
          )
        )
      end
      def unwrap(
        # The raw webhook payload as a string
        payload,
        # The raw HTTP headers that came with the payload
        headers:,
        # The webhook signing key
        key: @client.webhook_key
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
