# frozen_string_literal: true

module WhopSDK
  module Models
    class CardTransactionReversedWebhookEvent < WhopSDK::Internal::Type::BaseModel
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
      #   @return [WhopSDK::Models::CardTransactionReversedWebhookEvent::Data]
      required :data, -> { WhopSDK::CardTransactionReversedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"card_transaction.reversed"]
      required :type, const: :"card_transaction.reversed"

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

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"card_transaction.reversed")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CardTransactionReversedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::CardTransactionReversedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"card_transaction.reversed"] The webhook event type

      # @see WhopSDK::Models::CardTransactionReversedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Card transaction ID, prefixed `citx_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute card_id
        #   The card this transaction was charged to, prefixed `icrd_`.
        #
        #   @return [String]
        required :card_id, String

        # @!attribute cardholder_id
        #   The user the card is assigned to, prefixed `user_`. Null when the card has no
        #   assigned cardholder.
        #
        #   @return [String, nil]
        required :cardholder_id, String, nil?: true

        # @!attribute cashback_usd_amount
        #   Cashback earned on this transaction as a USD amount. Zero for declined or
        #   ineligible transactions, and null when cashback has not been computed yet.
        #
        #   @return [Float, nil]
        required :cashback_usd_amount, Float, nil?: true

        # @!attribute created_at
        #   When the transaction was authorized, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :created_at, String

        # @!attribute currency
        #   ISO 4217 currency code the merchant charged in.
        #
        #   @return [String, nil]
        required :currency, String, nil?: true

        # @!attribute declined_reason
        #   Why the transaction was declined. Null unless `status` is `declined`.
        #
        #   @return [String, nil]
        required :declined_reason, String, nil?: true

        # @!attribute international
        #   True when the merchant is outside the card's home country.
        #
        #   @return [Boolean]
        required :international, WhopSDK::Internal::Type::Boolean

        # @!attribute local_amount
        #   Amount the merchant charged in their own currency. Pair with `currency`.
        #
        #   @return [Float, nil]
        required :local_amount, Float, nil?: true

        # @!attribute merchant_category
        #   Merchant category label, enriched where available and otherwise as the card
        #   network reported it.
        #
        #   @return [String, nil]
        required :merchant_category, String, nil?: true

        # @!attribute merchant_category_code
        #   Four-digit ISO 18245 merchant category code (MCC).
        #
        #   @return [String, nil]
        required :merchant_category_code, String, nil?: true

        # @!attribute merchant_icon_url
        #   URL of the enriched merchant logo. Null when no logo was matched.
        #
        #   @return [String, nil]
        required :merchant_icon_url, String, nil?: true

        # @!attribute merchant_name
        #   Merchant name, enriched where available and otherwise as the card network
        #   reported it.
        #
        #   @return [String, nil]
        required :merchant_name, String, nil?: true

        # @!attribute posted_at
        #   When the card network settled the transaction, as an ISO 8601 timestamp. Null
        #   until it settles.
        #
        #   @return [String, nil]
        required :posted_at, String, nil?: true

        # @!attribute status
        #   Current status of the transaction.
        #
        #   @return [Symbol, WhopSDK::Models::CardTransactionReversedWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::CardTransactionReversedWebhookEvent::Data::Status }

        # @!attribute transaction_type
        #   The kind of card transaction. Always `spend` today.
        #
        #   @return [Symbol, WhopSDK::Models::CardTransactionReversedWebhookEvent::Data::TransactionType]
        required :transaction_type,
                 enum: -> { WhopSDK::CardTransactionReversedWebhookEvent::Data::TransactionType }

        # @!attribute usd_amount
        #   Amount charged in USD. Negative when the merchant refunded the card.
        #
        #   @return [Float, nil]
        required :usd_amount, Float, nil?: true

        # @!method initialize(id:, card_id:, cardholder_id:, cashback_usd_amount:, created_at:, currency:, declined_reason:, international:, local_amount:, merchant_category:, merchant_category_code:, merchant_icon_url:, merchant_name:, posted_at:, status:, transaction_type:, usd_amount:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CardTransactionReversedWebhookEvent::Data} for more details.
        #
        #   @param id [String] Card transaction ID, prefixed `citx_`.
        #
        #   @param card_id [String] The card this transaction was charged to, prefixed `icrd_`.
        #
        #   @param cardholder_id [String, nil] The user the card is assigned to, prefixed `user_`. Null when the card has no as
        #
        #   @param cashback_usd_amount [Float, nil] Cashback earned on this transaction as a USD amount. Zero for declined or inelig
        #
        #   @param created_at [String] When the transaction was authorized, as an ISO 8601 timestamp.
        #
        #   @param currency [String, nil] ISO 4217 currency code the merchant charged in.
        #
        #   @param declined_reason [String, nil] Why the transaction was declined. Null unless `status` is `declined`.
        #
        #   @param international [Boolean] True when the merchant is outside the card's home country.
        #
        #   @param local_amount [Float, nil] Amount the merchant charged in their own currency. Pair with `currency`.
        #
        #   @param merchant_category [String, nil] Merchant category label, enriched where available and otherwise as the card netw
        #
        #   @param merchant_category_code [String, nil] Four-digit ISO 18245 merchant category code (MCC).
        #
        #   @param merchant_icon_url [String, nil] URL of the enriched merchant logo. Null when no logo was matched.
        #
        #   @param merchant_name [String, nil] Merchant name, enriched where available and otherwise as the card network report
        #
        #   @param posted_at [String, nil] When the card network settled the transaction, as an ISO 8601 timestamp. Null un
        #
        #   @param status [Symbol, WhopSDK::Models::CardTransactionReversedWebhookEvent::Data::Status] Current status of the transaction.
        #
        #   @param transaction_type [Symbol, WhopSDK::Models::CardTransactionReversedWebhookEvent::Data::TransactionType] The kind of card transaction. Always `spend` today.
        #
        #   @param usd_amount [Float, nil] Amount charged in USD. Negative when the merchant refunded the card.

        # Current status of the transaction.
        #
        # @see WhopSDK::Models::CardTransactionReversedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          PENDING = :pending
          COMPLETED = :completed
          REVERSED = :reversed
          DECLINED = :declined

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The kind of card transaction. Always `spend` today.
        #
        # @see WhopSDK::Models::CardTransactionReversedWebhookEvent::Data#transaction_type
        module TransactionType
          extend WhopSDK::Internal::Type::Enum

          SPEND = :spend

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
