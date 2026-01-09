# typed: strong

module WhopSDK
  module Models
    class WebhookCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WebhookCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The URL to send the webhook to.
      sig { returns(String) }
      attr_accessor :url

      # The different API versions
      sig do
        returns(T.nilable(WhopSDK::WebhookCreateParams::APIVersion::OrSymbol))
      end
      attr_accessor :api_version

      # Whether or not to send events for child resources. For example, if the webhook
      # is created for a Company, enabling this will only send events from the Company's
      # sub-merchants (child companies).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :child_resource_events

      # Whether or not the webhook is enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :enabled

      # The events to send the webhook for.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::WebhookCreateParams::Event::OrSymbol])
        )
      end
      attr_accessor :events

      # The resource to create the webhook for. By default this will use current company
      sig { returns(T.nilable(String)) }
      attr_accessor :resource_id

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            url: String,
            api_version:
              T.nilable(WhopSDK::WebhookCreateParams::APIVersion::OrSymbol),
            child_resource_events: T.nilable(T::Boolean),
            enabled: T.nilable(T::Boolean),
            events:
              T.nilable(
                T::Array[WhopSDK::WebhookCreateParams::Event::OrSymbol]
              ),
            resource_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The different API versions
      module APIVersion
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::WebhookCreateParams::APIVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 = T.let(:v1, WhopSDK::WebhookCreateParams::APIVersion::TaggedSymbol)
        V2 = T.let(:v2, WhopSDK::WebhookCreateParams::APIVersion::TaggedSymbol)
        V5 = T.let(:v5, WhopSDK::WebhookCreateParams::APIVersion::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::WebhookCreateParams::APIVersion::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The different event types available
      module Event
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::WebhookCreateParams::Event) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_CREATED =
          T.let(
            :"invoice.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        INVOICE_PAID =
          T.let(
            :"invoice.paid",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        INVOICE_PAST_DUE =
          T.let(
            :"invoice.past_due",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        INVOICE_VOIDED =
          T.let(
            :"invoice.voided",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_ACTIVATED =
          T.let(
            :"membership.activated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_DEACTIVATED =
          T.let(
            :"membership.deactivated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        ENTRY_CREATED =
          T.let(
            :"entry.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        ENTRY_APPROVED =
          T.let(
            :"entry.approved",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        ENTRY_DENIED =
          T.let(
            :"entry.denied",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        ENTRY_DELETED =
          T.let(
            :"entry.deleted",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_REQUIRES_ACTION =
          T.let(
            :"setup_intent.requires_action",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_SUCCEEDED =
          T.let(
            :"setup_intent.succeeded",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_CANCELED =
          T.let(
            :"setup_intent.canceled",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        WITHDRAWAL_CREATED =
          T.let(
            :"withdrawal.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        WITHDRAWAL_UPDATED =
          T.let(
            :"withdrawal.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        COURSE_LESSON_INTERACTION_COMPLETED =
          T.let(
            :"course_lesson_interaction.completed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYOUT_METHOD_CREATED =
          T.let(
            :"payout_method.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        VERIFICATION_SUCCEEDED =
          T.let(
            :"verification.succeeded",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_CREATED =
          T.let(
            :"payment.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_SUCCEEDED =
          T.let(
            :"payment.succeeded",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :"payment.failed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        PAYMENT_PENDING =
          T.let(
            :"payment.pending",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        DISPUTE_CREATED =
          T.let(
            :"dispute.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        DISPUTE_UPDATED =
          T.let(
            :"dispute.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        REFUND_CREATED =
          T.let(
            :"refund.created",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        REFUND_UPDATED =
          T.let(
            :"refund.updated",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :"membership.cancel_at_period_end_changed",
            WhopSDK::WebhookCreateParams::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::WebhookCreateParams::Event::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
