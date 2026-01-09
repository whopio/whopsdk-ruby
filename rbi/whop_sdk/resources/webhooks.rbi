# typed: strong

module WhopSDK
  module Resources
    class Webhooks
      # Creates a new webhook
      #
      # Required permissions:
      #
      # - `developer:manage_webhook`
      sig do
        params(
          url: String,
          api_version:
            T.nilable(WhopSDK::WebhookCreateParams::APIVersion::OrSymbol),
          child_resource_events: T.nilable(T::Boolean),
          enabled: T.nilable(T::Boolean),
          events:
            T.nilable(T::Array[WhopSDK::WebhookCreateParams::Event::OrSymbol]),
          resource_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WebhookCreateResponse)
      end
      def create(
        # The URL to send the webhook to.
        url:,
        # The different API versions
        api_version: nil,
        # Whether or not to send events for child resources. For example, if the webhook
        # is created for a Company, enabling this will only send events from the Company's
        # sub-merchants (child companies).
        child_resource_events: nil,
        # Whether or not the webhook is enabled.
        enabled: nil,
        # The events to send the webhook for.
        events: nil,
        # The resource to create the webhook for. By default this will use current company
        resource_id: nil,
        request_options: {}
      )
      end

      # Retrieves a webhook by ID
      #
      # Required permissions:
      #
      # - `developer:manage_webhook`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WebhookRetrieveResponse)
      end
      def retrieve(
        # The ID of the webhook
        id,
        request_options: {}
      )
      end

      # Updates a webhook
      #
      # Required permissions:
      #
      # - `developer:manage_webhook`
      sig do
        params(
          id: String,
          api_version:
            T.nilable(WhopSDK::WebhookUpdateParams::APIVersion::OrSymbol),
          child_resource_events: T.nilable(T::Boolean),
          enabled: T.nilable(T::Boolean),
          events:
            T.nilable(T::Array[WhopSDK::WebhookUpdateParams::Event::OrSymbol]),
          url: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WebhookUpdateResponse)
      end
      def update(
        # The ID of the Webhook to update
        id,
        # The different API versions
        api_version: nil,
        # Whether or not to send events for child resources.
        child_resource_events: nil,
        # Whether or not the webhook is enabled.
        enabled: nil,
        # The events to send the webhook for.
        events: nil,
        # The URL to send the webhook to.
        url: nil,
        request_options: {}
      )
      end

      # Lists webhooks for a company
      #
      # Required permissions:
      #
      # - `developer:manage_webhook`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::WebhookListResponse]
        )
      end
      def list(
        # The ID of the company to list webhooks for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Deletes a webhook
      #
      # Required permissions:
      #
      # - `developer:manage_webhook`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The ID of the webhook to delete.
        id,
        request_options: {}
      )
      end

      sig do
        params(payload: String).returns(
          T.any(
            WhopSDK::InvoiceCreatedWebhookEvent,
            WhopSDK::InvoicePaidWebhookEvent,
            WhopSDK::InvoicePastDueWebhookEvent,
            WhopSDK::InvoiceVoidedWebhookEvent,
            WhopSDK::MembershipActivatedWebhookEvent,
            WhopSDK::MembershipDeactivatedWebhookEvent,
            WhopSDK::EntryCreatedWebhookEvent,
            WhopSDK::EntryApprovedWebhookEvent,
            WhopSDK::EntryDeniedWebhookEvent,
            WhopSDK::EntryDeletedWebhookEvent,
            WhopSDK::SetupIntentRequiresActionWebhookEvent,
            WhopSDK::SetupIntentSucceededWebhookEvent,
            WhopSDK::SetupIntentCanceledWebhookEvent,
            WhopSDK::WithdrawalCreatedWebhookEvent,
            WhopSDK::WithdrawalUpdatedWebhookEvent,
            WhopSDK::CourseLessonInteractionCompletedWebhookEvent,
            WhopSDK::PayoutMethodCreatedWebhookEvent,
            WhopSDK::VerificationSucceededWebhookEvent,
            WhopSDK::PaymentCreatedWebhookEvent,
            WhopSDK::PaymentSucceededWebhookEvent,
            WhopSDK::PaymentFailedWebhookEvent,
            WhopSDK::PaymentPendingWebhookEvent,
            WhopSDK::DisputeCreatedWebhookEvent,
            WhopSDK::DisputeUpdatedWebhookEvent,
            WhopSDK::RefundCreatedWebhookEvent,
            WhopSDK::RefundUpdatedWebhookEvent,
            WhopSDK::MembershipCancelAtPeriodEndChangedWebhookEvent
          )
        )
      end
      def unwrap(
        # The raw webhook payload as a string
        payload
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
