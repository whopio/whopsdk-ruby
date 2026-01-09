# typed: strong

module WhopSDK
  module Models
    class WebhookListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WebhookListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The ID of the webhook
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig do
        returns(WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol)
      end
      attr_accessor :api_version

      # Whether or not to send events for child resources. For example, if the webhook
      # is created for a Company, enabling this will only send events from the Company's
      # sub-merchants (child companies).
      sig { returns(T::Boolean) }
      attr_accessor :child_resource_events

      # The timestamp of when the webhook was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Whether or not this webhook is turned on or not
      sig { returns(T::Boolean) }
      attr_accessor :enabled

      # The number of events this webhooks is configured to receive
      sig do
        returns(
          T::Array[WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol]
        )
      end
      attr_accessor :events

      # The URL the webhook events will be sent to
      sig { returns(String) }
      attr_accessor :url

      # A webhook object, which can be configured to be sent updates about a company
      sig do
        params(
          id: String,
          api_version:
            WhopSDK::Models::WebhookListResponse::APIVersion::OrSymbol,
          child_resource_events: T::Boolean,
          created_at: Time,
          enabled: T::Boolean,
          events:
            T::Array[WhopSDK::Models::WebhookListResponse::Event::OrSymbol],
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the webhook
        id:,
        # The API version for this webhook
        api_version:,
        # Whether or not to send events for child resources. For example, if the webhook
        # is created for a Company, enabling this will only send events from the Company's
        # sub-merchants (child companies).
        child_resource_events:,
        # The timestamp of when the webhook was created
        created_at:,
        # Whether or not this webhook is turned on or not
        enabled:,
        # The number of events this webhooks is configured to receive
        events:,
        # The URL the webhook events will be sent to
        url:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version:
              WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol,
            child_resource_events: T::Boolean,
            created_at: Time,
            enabled: T::Boolean,
            events:
              T::Array[
                WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
              ],
            url: String
          }
        )
      end
      def to_hash
      end

      # The API version for this webhook
      module APIVersion
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::WebhookListResponse::APIVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 =
          T.let(
            :v1,
            WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol
          )
        V2 =
          T.let(
            :v2,
            WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol
          )
        V5 =
          T.let(
            :v5,
            WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::WebhookListResponse::APIVersion::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The different event types available
      module Event
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::WebhookListResponse::Event)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_CREATED =
          T.let(
            :"invoice.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        INVOICE_PAID =
          T.let(
            :"invoice.paid",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        INVOICE_PAST_DUE =
          T.let(
            :"invoice.past_due",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        INVOICE_VOIDED =
          T.let(
            :"invoice.voided",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBERSHIP_ACTIVATED =
          T.let(
            :"membership.activated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBERSHIP_DEACTIVATED =
          T.let(
            :"membership.deactivated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        ENTRY_CREATED =
          T.let(
            :"entry.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        ENTRY_APPROVED =
          T.let(
            :"entry.approved",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        ENTRY_DENIED =
          T.let(
            :"entry.denied",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        ENTRY_DELETED =
          T.let(
            :"entry.deleted",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        SETUP_INTENT_REQUIRES_ACTION =
          T.let(
            :"setup_intent.requires_action",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        SETUP_INTENT_SUCCEEDED =
          T.let(
            :"setup_intent.succeeded",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        SETUP_INTENT_CANCELED =
          T.let(
            :"setup_intent.canceled",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        WITHDRAWAL_CREATED =
          T.let(
            :"withdrawal.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        WITHDRAWAL_UPDATED =
          T.let(
            :"withdrawal.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        COURSE_LESSON_INTERACTION_COMPLETED =
          T.let(
            :"course_lesson_interaction.completed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYOUT_METHOD_CREATED =
          T.let(
            :"payout_method.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        VERIFICATION_SUCCEEDED =
          T.let(
            :"verification.succeeded",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYMENT_CREATED =
          T.let(
            :"payment.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYMENT_SUCCEEDED =
          T.let(
            :"payment.succeeded",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :"payment.failed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        PAYMENT_PENDING =
          T.let(
            :"payment.pending",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        DISPUTE_CREATED =
          T.let(
            :"dispute.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        DISPUTE_UPDATED =
          T.let(
            :"dispute.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        REFUND_CREATED =
          T.let(
            :"refund.created",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        REFUND_UPDATED =
          T.let(
            :"refund.updated",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )
        MEMBERSHIP_CANCEL_AT_PERIOD_END_CHANGED =
          T.let(
            :"membership.cancel_at_period_end_changed",
            WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::WebhookListResponse::Event::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
