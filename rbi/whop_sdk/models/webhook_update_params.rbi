# typed: strong

module WhopSDK
  module Models
    class WebhookUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WebhookUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The different API versions
      sig do
        returns(T.nilable(WhopSDK::WebhookUpdateParams::APIVersion::OrSymbol))
      end
      attr_accessor :api_version

      # Whether or not to send events for child resources.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :child_resource_events

      # Whether or not the webhook is enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :enabled

      # The events to send the webhook for.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::WebhookUpdateParams::Event::OrSymbol])
        )
      end
      attr_accessor :events

      # The URL to send the webhook to.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      sig do
        params(
          api_version:
            T.nilable(WhopSDK::WebhookUpdateParams::APIVersion::OrSymbol),
          child_resource_events: T.nilable(T::Boolean),
          enabled: T.nilable(T::Boolean),
          events:
            T.nilable(T::Array[WhopSDK::WebhookUpdateParams::Event::OrSymbol]),
          url: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            api_version:
              T.nilable(WhopSDK::WebhookUpdateParams::APIVersion::OrSymbol),
            child_resource_events: T.nilable(T::Boolean),
            enabled: T.nilable(T::Boolean),
            events:
              T.nilable(
                T::Array[WhopSDK::WebhookUpdateParams::Event::OrSymbol]
              ),
            url: T.nilable(String),
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
            T.all(Symbol, WhopSDK::WebhookUpdateParams::APIVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 = T.let(:v1, WhopSDK::WebhookUpdateParams::APIVersion::TaggedSymbol)
        V2 = T.let(:v2, WhopSDK::WebhookUpdateParams::APIVersion::TaggedSymbol)
        V5 = T.let(:v5, WhopSDK::WebhookUpdateParams::APIVersion::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::WebhookUpdateParams::APIVersion::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The different event types available
      module Event
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::WebhookUpdateParams::Event) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_CREATED =
          T.let(
            :"invoice.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        INVOICE_PAID =
          T.let(
            :"invoice.paid",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        INVOICE_PAST_DUE =
          T.let(
            :"invoice.past_due",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        INVOICE_VOIDED =
          T.let(
            :"invoice.voided",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_ACTIVATED =
          T.let(
            :"membership.activated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_DEACTIVATED =
          T.let(
            :"membership.deactivated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        ENTRY_CREATED =
          T.let(
            :"entry.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        ENTRY_APPROVED =
          T.let(
            :"entry.approved",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        ENTRY_DENIED =
          T.let(
            :"entry.denied",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        ENTRY_DELETED =
          T.let(
            :"entry.deleted",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_REQUIRES_ACTION =
          T.let(
            :"setup_intent.requires_action",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_SUCCEEDED =
          T.let(
            :"setup_intent.succeeded",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        SETUP_INTENT_CANCELED =
          T.let(
            :"setup_intent.canceled",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        WITHDRAWAL_CREATED =
          T.let(
            :"withdrawal.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        WITHDRAWAL_UPDATED =
          T.let(
            :"withdrawal.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        COURSE_LESSON_INTERACTION_COMPLETED =
          T.let(
            :"course_lesson_interaction.completed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYOUT_METHOD_CREATED =
          T.let(
            :"payout_method.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        VERIFICATION_SUCCEEDED =
          T.let(
            :"verification.succeeded",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_CREATED =
          T.let(
            :"payment.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_SUCCEEDED =
          T.let(
            :"payment.succeeded",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :"payment.failed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        PAYMENT_PENDING =
          T.let(
            :"payment.pending",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        DISPUTE_CREATED =
          T.let(
            :"dispute.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        DISPUTE_UPDATED =
          T.let(
            :"dispute.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        REFUND_CREATED =
          T.let(
            :"refund.created",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        REFUND_UPDATED =
          T.let(
            :"refund.updated",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :"membership.cancel_at_period_end_changed",
            WhopSDK::WebhookUpdateParams::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::WebhookUpdateParams::Event::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
