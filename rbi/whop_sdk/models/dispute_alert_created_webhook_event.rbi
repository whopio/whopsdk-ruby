# typed: strong

module WhopSDK
  module Models
    class DisputeAlertCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::DisputeAlertCreatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      sig { returns(WhopSDK::DisputeAlertCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::DisputeAlertCreatedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # For some `.updated` events, the old values of the payload fields that changed,
      # keyed by field name. Omitted when no capture is available for the event
      sig { returns(T.nilable(T.anything)) }
      attr_reader :previous_attributes

      sig { params(previous_attributes: T.anything).void }
      attr_writer :previous_attributes

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::DisputeAlertCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          account_id: T.nilable(String),
          previous_attributes: T.anything,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        account_id: nil,
        # For some `.updated` events, the old values of the payload fields that changed,
        # keyed by field name. Omitted when no capture is available for the event
        previous_attributes: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"dispute_alert.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::DisputeAlertCreatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            account_id: T.nilable(String),
            previous_attributes: T.anything
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Dispute alert ID, prefixed `dspa_`.
        sig { returns(String) }
        attr_accessor :id

        # The account the alerted payment belongs to, prefixed `biz_`. `null` while the
        # alert is unmatched.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_id

        # Whether refunding the payment can still avoid a chargeback. `false` once the
        # payment has been disputed or fully refunded, or when the alert could not be
        # matched to a payment — `not_actionable_reason` says which.
        sig { returns(T::Boolean) }
        attr_accessor :actionable

        # The alerted amount, in whole units of `currency`. This is what the issuer
        # reported, which can differ from the payment's own amount.
        sig { returns(Float) }
        attr_accessor :amount

        # The card network as reported by the issuer, lowercased, such as `visa` or
        # `mastercard`. `unknown` when the report carries neither a network nor a
        # recognizable BIN.
        sig { returns(T.nilable(String)) }
        attr_accessor :card_brand

        # When Whop received the alert, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :created_at

        # Three-letter ISO currency code of the alerted amount.
        sig { returns(String) }
        attr_accessor :currency

        # Whether Whop charged the account an alert fee for this one. Always `false` for
        # `early_fraud_warning`, which Whop is not billed for and never passes on.
        sig { returns(T::Boolean) }
        attr_accessor :fee_charged

        # Name of the bank that issued the card and filed the report.
        sig { returns(T.nilable(String)) }
        attr_accessor :issuer

        # Why refunding can no longer avoid a chargeback. `network_resolved` when a Visa
        # RDR already closed the case, `payment_unmatched` when no payment matched,
        # `payment_not_captured` when it never captured money, `payment_disputed` once the
        # payment carries a dispute, `payment_refunded` once fully refunded. `null` while
        # `actionable` is true.
        sig do
          returns(
            T.nilable(
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason::TaggedSymbol
            )
          )
        end
        attr_accessor :not_actionable_reason

        # The payment the issuer reported, prefixed `pay_`. `null` when Whop could not
        # match the report to a payment.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_id

        # The product the alerted payment was for, prefixed `prod_`.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_id

        # When the issuer filed the report, as an ISO 8601 timestamp. Earlier than
        # `created_at`, which is when Whop received it.
        sig { returns(String) }
        attr_accessor :reported_at

        # When the reported transaction was made, as an ISO 8601 timestamp.
        sig { returns(T.nilable(String)) }
        attr_accessor :transaction_at

        # What the issuer sent. `early_fraud_warning` is a fraud report on a settled
        # payment (Visa TC40 / Mastercard SAFE) — refunding still avoids the chargeback,
        # and Whop never charges a fee for one. `dispute_alert` is a pre-dispute notice
        # from the issuer's alert network, which Whop pays for and passes on as a fee.
        # `rapid_dispute_resolution` is a Visa RDR case the network already closed by
        # refunding the payment — nothing is left to act on.
        sig do
          returns(
            WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # When the alert was last changed, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            account_id: T.nilable(String),
            actionable: T::Boolean,
            amount: Float,
            card_brand: T.nilable(String),
            created_at: String,
            currency: String,
            fee_charged: T::Boolean,
            issuer: T.nilable(String),
            not_actionable_reason:
              T.nilable(
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason::OrSymbol
              ),
            payment_id: T.nilable(String),
            product_id: T.nilable(String),
            reported_at: String,
            transaction_at: T.nilable(String),
            type:
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Type::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Dispute alert ID, prefixed `dspa_`.
          id:,
          # The account the alerted payment belongs to, prefixed `biz_`. `null` while the
          # alert is unmatched.
          account_id:,
          # Whether refunding the payment can still avoid a chargeback. `false` once the
          # payment has been disputed or fully refunded, or when the alert could not be
          # matched to a payment — `not_actionable_reason` says which.
          actionable:,
          # The alerted amount, in whole units of `currency`. This is what the issuer
          # reported, which can differ from the payment's own amount.
          amount:,
          # The card network as reported by the issuer, lowercased, such as `visa` or
          # `mastercard`. `unknown` when the report carries neither a network nor a
          # recognizable BIN.
          card_brand:,
          # When Whop received the alert, as an ISO 8601 timestamp.
          created_at:,
          # Three-letter ISO currency code of the alerted amount.
          currency:,
          # Whether Whop charged the account an alert fee for this one. Always `false` for
          # `early_fraud_warning`, which Whop is not billed for and never passes on.
          fee_charged:,
          # Name of the bank that issued the card and filed the report.
          issuer:,
          # Why refunding can no longer avoid a chargeback. `network_resolved` when a Visa
          # RDR already closed the case, `payment_unmatched` when no payment matched,
          # `payment_not_captured` when it never captured money, `payment_disputed` once the
          # payment carries a dispute, `payment_refunded` once fully refunded. `null` while
          # `actionable` is true.
          not_actionable_reason:,
          # The payment the issuer reported, prefixed `pay_`. `null` when Whop could not
          # match the report to a payment.
          payment_id:,
          # The product the alerted payment was for, prefixed `prod_`.
          product_id:,
          # When the issuer filed the report, as an ISO 8601 timestamp. Earlier than
          # `created_at`, which is when Whop received it.
          reported_at:,
          # When the reported transaction was made, as an ISO 8601 timestamp.
          transaction_at:,
          # What the issuer sent. `early_fraud_warning` is a fraud report on a settled
          # payment (Visa TC40 / Mastercard SAFE) — refunding still avoids the chargeback,
          # and Whop never charges a fee for one. `dispute_alert` is a pre-dispute notice
          # from the issuer's alert network, which Whop pays for and passes on as a fee.
          # `rapid_dispute_resolution` is a Visa RDR case the network already closed by
          # refunding the payment — nothing is left to act on.
          type:,
          # When the alert was last changed, as an ISO 8601 timestamp.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              account_id: T.nilable(String),
              actionable: T::Boolean,
              amount: Float,
              card_brand: T.nilable(String),
              created_at: String,
              currency: String,
              fee_charged: T::Boolean,
              issuer: T.nilable(String),
              not_actionable_reason:
                T.nilable(
                  WhopSDK::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason::TaggedSymbol
                ),
              payment_id: T.nilable(String),
              product_id: T.nilable(String),
              reported_at: String,
              transaction_at: T.nilable(String),
              type:
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Type::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        # Why refunding can no longer avoid a chargeback. `network_resolved` when a Visa
        # RDR already closed the case, `payment_unmatched` when no payment matched,
        # `payment_not_captured` when it never captured money, `payment_disputed` once the
        # payment carries a dispute, `payment_refunded` once fully refunded. `null` while
        # `actionable` is true.
        module NotActionableReason
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NETWORK_RESOLVED =
            T.let(
              :network_resolved,
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason::TaggedSymbol
            )
          PAYMENT_UNMATCHED =
            T.let(
              :payment_unmatched,
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason::TaggedSymbol
            )
          PAYMENT_NOT_CAPTURED =
            T.let(
              :payment_not_captured,
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason::TaggedSymbol
            )
          PAYMENT_DISPUTED =
            T.let(
              :payment_disputed,
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason::TaggedSymbol
            )
          PAYMENT_REFUNDED =
            T.let(
              :payment_refunded,
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # What the issuer sent. `early_fraud_warning` is a fraud report on a settled
        # payment (Visa TC40 / Mastercard SAFE) — refunding still avoids the chargeback,
        # and Whop never charges a fee for one. `dispute_alert` is a pre-dispute notice
        # from the issuer's alert network, which Whop pays for and passes on as a fee.
        # `rapid_dispute_resolution` is a Visa RDR case the network already closed by
        # refunding the payment — nothing is left to act on.
        module Type
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EARLY_FRAUD_WARNING =
            T.let(
              :early_fraud_warning,
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Type::TaggedSymbol
            )
          DISPUTE_ALERT =
            T.let(
              :dispute_alert,
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Type::TaggedSymbol
            )
          RAPID_DISPUTE_RESOLUTION =
            T.let(
              :rapid_dispute_resolution,
              WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
