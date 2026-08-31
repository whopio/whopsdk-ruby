# frozen_string_literal: true

module WhopSDK
  module Models
    class DisputeAlertCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @return [String, nil]
      required :api_version_date, String, nil?: true

      # @!attribute data
      #
      #   @return [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data]
      required :data, -> { WhopSDK::DisputeAlertCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"dispute_alert.created"]
      required :type, const: :"dispute_alert.created"

      # @!attribute account_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute previous_attributes
      #   For some `.updated` events, the old values of the payload fields that changed,
      #   keyed by field name. Omitted when no capture is available for the event
      #
      #   @return [Object, nil]
      optional :previous_attributes, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"dispute_alert.created")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DisputeAlertCreatedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"dispute_alert.created"] The webhook event type

      # @see WhopSDK::Models::DisputeAlertCreatedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Dispute alert ID, prefixed `dspa_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute account_id
        #   The account the alerted payment belongs to, prefixed `biz_`. `null` while the
        #   alert is unmatched.
        #
        #   @return [String, nil]
        required :account_id, String, nil?: true

        # @!attribute actionable
        #   Whether refunding the payment can still avoid a chargeback. `false` once the
        #   payment has been disputed or fully refunded, or when the alert could not be
        #   matched to a payment — `not_actionable_reason` says which.
        #
        #   @return [Boolean]
        required :actionable, WhopSDK::Internal::Type::Boolean

        # @!attribute amount
        #   The alerted amount, in whole units of `currency`. This is what the issuer
        #   reported, which can differ from the payment's own amount.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute card_brand
        #   The card network as reported by the issuer, lowercased, such as `visa` or
        #   `mastercard`. `unknown` when the report carries neither a network nor a
        #   recognizable BIN.
        #
        #   @return [String, nil]
        required :card_brand, String, nil?: true

        # @!attribute created_at
        #   When Whop received the alert, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :created_at, String

        # @!attribute currency
        #   Three-letter ISO currency code of the alerted amount.
        #
        #   @return [String]
        required :currency, String

        # @!attribute fee_charged
        #   Whether Whop charged the account an alert fee for this one. Always `false` for
        #   `early_fraud_warning`, which Whop is not billed for and never passes on.
        #
        #   @return [Boolean]
        required :fee_charged, WhopSDK::Internal::Type::Boolean

        # @!attribute issuer
        #   Name of the bank that issued the card and filed the report.
        #
        #   @return [String, nil]
        required :issuer, String, nil?: true

        # @!attribute not_actionable_reason
        #   Why refunding can no longer avoid a chargeback. `network_resolved` when a Visa
        #   RDR already closed the case, `payment_unmatched` when no payment matched,
        #   `payment_not_captured` when it never captured money, `payment_disputed` once the
        #   payment carries a dispute, `payment_refunded` once fully refunded. `null` while
        #   `actionable` is true.
        #
        #   @return [Symbol, WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason, nil]
        required :not_actionable_reason,
                 enum: -> { WhopSDK::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason },
                 nil?: true

        # @!attribute payment_id
        #   The payment the issuer reported, prefixed `pay_`. `null` when Whop could not
        #   match the report to a payment.
        #
        #   @return [String, nil]
        required :payment_id, String, nil?: true

        # @!attribute product_id
        #   The product the alerted payment was for, prefixed `prod_`.
        #
        #   @return [String, nil]
        required :product_id, String, nil?: true

        # @!attribute reported_at
        #   When the issuer filed the report, as an ISO 8601 timestamp. Earlier than
        #   `created_at`, which is when Whop received it.
        #
        #   @return [String]
        required :reported_at, String

        # @!attribute transaction_at
        #   When the reported transaction was made, as an ISO 8601 timestamp.
        #
        #   @return [String, nil]
        required :transaction_at, String, nil?: true

        # @!attribute type
        #   What the issuer sent. `early_fraud_warning` is a fraud report on a settled
        #   payment (Visa TC40 / Mastercard SAFE) — refunding still avoids the chargeback,
        #   and Whop never charges a fee for one. `dispute_alert` is a pre-dispute notice
        #   from the issuer's alert network, which Whop pays for and passes on as a fee.
        #   `rapid_dispute_resolution` is a Visa RDR case the network already closed by
        #   refunding the payment — nothing is left to act on.
        #
        #   @return [Symbol, WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Type]
        required :type, enum: -> { WhopSDK::DisputeAlertCreatedWebhookEvent::Data::Type }

        # @!attribute updated_at
        #   When the alert was last changed, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :updated_at, String

        # @!method initialize(id:, account_id:, actionable:, amount:, card_brand:, created_at:, currency:, fee_charged:, issuer:, not_actionable_reason:, payment_id:, product_id:, reported_at:, transaction_at:, type:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data} for more details.
        #
        #   @param id [String] Dispute alert ID, prefixed `dspa_`.
        #
        #   @param account_id [String, nil] The account the alerted payment belongs to, prefixed `biz_`. `null` while the al
        #
        #   @param actionable [Boolean] Whether refunding the payment can still avoid a chargeback. `false` once the pay
        #
        #   @param amount [Float] The alerted amount, in whole units of `currency`. This is what the issuer report
        #
        #   @param card_brand [String, nil] The card network as reported by the issuer, lowercased, such as `visa` or `maste
        #
        #   @param created_at [String] When Whop received the alert, as an ISO 8601 timestamp.
        #
        #   @param currency [String] Three-letter ISO currency code of the alerted amount.
        #
        #   @param fee_charged [Boolean] Whether Whop charged the account an alert fee for this one. Always `false` for `
        #
        #   @param issuer [String, nil] Name of the bank that issued the card and filed the report.
        #
        #   @param not_actionable_reason [Symbol, WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::NotActionableReason, nil] Why refunding can no longer avoid a chargeback. `network_resolved` when a Visa R
        #
        #   @param payment_id [String, nil] The payment the issuer reported, prefixed `pay_`. `null` when Whop could not mat
        #
        #   @param product_id [String, nil] The product the alerted payment was for, prefixed `prod_`.
        #
        #   @param reported_at [String] When the issuer filed the report, as an ISO 8601 timestamp. Earlier than `create
        #
        #   @param transaction_at [String, nil] When the reported transaction was made, as an ISO 8601 timestamp.
        #
        #   @param type [Symbol, WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data::Type] What the issuer sent. `early_fraud_warning` is a fraud report on a settled payme
        #
        #   @param updated_at [String] When the alert was last changed, as an ISO 8601 timestamp.

        # Why refunding can no longer avoid a chargeback. `network_resolved` when a Visa
        # RDR already closed the case, `payment_unmatched` when no payment matched,
        # `payment_not_captured` when it never captured money, `payment_disputed` once the
        # payment carries a dispute, `payment_refunded` once fully refunded. `null` while
        # `actionable` is true.
        #
        # @see WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data#not_actionable_reason
        module NotActionableReason
          extend WhopSDK::Internal::Type::Enum

          NETWORK_RESOLVED = :network_resolved
          PAYMENT_UNMATCHED = :payment_unmatched
          PAYMENT_NOT_CAPTURED = :payment_not_captured
          PAYMENT_DISPUTED = :payment_disputed
          PAYMENT_REFUNDED = :payment_refunded

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # What the issuer sent. `early_fraud_warning` is a fraud report on a settled
        # payment (Visa TC40 / Mastercard SAFE) — refunding still avoids the chargeback,
        # and Whop never charges a fee for one. `dispute_alert` is a pre-dispute notice
        # from the issuer's alert network, which Whop pays for and passes on as a fee.
        # `rapid_dispute_resolution` is a Visa RDR case the network already closed by
        # refunding the payment — nothing is left to act on.
        #
        # @see WhopSDK::Models::DisputeAlertCreatedWebhookEvent::Data#type
        module Type
          extend WhopSDK::Internal::Type::Enum

          EARLY_FRAUD_WARNING = :early_fraud_warning
          DISPUTE_ALERT = :dispute_alert
          RAPID_DISPUTE_RESOLUTION = :rapid_dispute_resolution

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
