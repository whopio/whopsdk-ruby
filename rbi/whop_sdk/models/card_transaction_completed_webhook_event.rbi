# typed: strong

module WhopSDK
  module Models
    class CardTransactionCompletedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CardTransactionCompletedWebhookEvent,
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

      sig { returns(WhopSDK::CardTransactionCompletedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::CardTransactionCompletedWebhookEvent::Data::OrHash
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
          data: WhopSDK::CardTransactionCompletedWebhookEvent::Data::OrHash,
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
        type: :"card_transaction.completed"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::CardTransactionCompletedWebhookEvent::Data,
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
              WhopSDK::CardTransactionCompletedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Card transaction ID, prefixed `citx_`.
        sig { returns(String) }
        attr_accessor :id

        # The card this transaction was charged to, prefixed `icrd_`.
        sig { returns(String) }
        attr_accessor :card_id

        # The user the card is assigned to, prefixed `user_`. Null when the card has no
        # assigned cardholder.
        sig { returns(T.nilable(String)) }
        attr_accessor :cardholder_id

        # Cashback earned on this transaction as a USD amount. Zero for declined or
        # ineligible transactions, and null when cashback has not been computed yet.
        sig { returns(T.nilable(Float)) }
        attr_accessor :cashback_usd_amount

        # When the transaction was authorized, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :created_at

        # ISO 4217 currency code the merchant charged in.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        # Why the transaction was declined. Null unless `status` is `declined`.
        sig { returns(T.nilable(String)) }
        attr_accessor :declined_reason

        # True when the merchant is outside the card's home country.
        sig { returns(T::Boolean) }
        attr_accessor :international

        # Amount the merchant charged in their own currency. Pair with `currency`.
        sig { returns(T.nilable(Float)) }
        attr_accessor :local_amount

        # Merchant category label, enriched where available and otherwise as the card
        # network reported it.
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_category

        # Four-digit ISO 18245 merchant category code (MCC).
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_category_code

        # URL of the enriched merchant logo. Null when no logo was matched.
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_icon_url

        # Merchant name, enriched where available and otherwise as the card network
        # reported it.
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_name

        # When the card network settled the transaction, as an ISO 8601 timestamp. Null
        # until it settles.
        sig { returns(T.nilable(String)) }
        attr_accessor :posted_at

        # Current status of the transaction.
        sig do
          returns(
            WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The kind of card transaction. Always `spend` today.
        sig do
          returns(
            WhopSDK::CardTransactionCompletedWebhookEvent::Data::TransactionType::TaggedSymbol
          )
        end
        attr_accessor :transaction_type

        # Amount charged in USD. Negative when the merchant refunded the card.
        sig { returns(T.nilable(Float)) }
        attr_accessor :usd_amount

        sig do
          params(
            id: String,
            card_id: String,
            cardholder_id: T.nilable(String),
            cashback_usd_amount: T.nilable(Float),
            created_at: String,
            currency: T.nilable(String),
            declined_reason: T.nilable(String),
            international: T::Boolean,
            local_amount: T.nilable(Float),
            merchant_category: T.nilable(String),
            merchant_category_code: T.nilable(String),
            merchant_icon_url: T.nilable(String),
            merchant_name: T.nilable(String),
            posted_at: T.nilable(String),
            status:
              WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status::OrSymbol,
            transaction_type:
              WhopSDK::CardTransactionCompletedWebhookEvent::Data::TransactionType::OrSymbol,
            usd_amount: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # Card transaction ID, prefixed `citx_`.
          id:,
          # The card this transaction was charged to, prefixed `icrd_`.
          card_id:,
          # The user the card is assigned to, prefixed `user_`. Null when the card has no
          # assigned cardholder.
          cardholder_id:,
          # Cashback earned on this transaction as a USD amount. Zero for declined or
          # ineligible transactions, and null when cashback has not been computed yet.
          cashback_usd_amount:,
          # When the transaction was authorized, as an ISO 8601 timestamp.
          created_at:,
          # ISO 4217 currency code the merchant charged in.
          currency:,
          # Why the transaction was declined. Null unless `status` is `declined`.
          declined_reason:,
          # True when the merchant is outside the card's home country.
          international:,
          # Amount the merchant charged in their own currency. Pair with `currency`.
          local_amount:,
          # Merchant category label, enriched where available and otherwise as the card
          # network reported it.
          merchant_category:,
          # Four-digit ISO 18245 merchant category code (MCC).
          merchant_category_code:,
          # URL of the enriched merchant logo. Null when no logo was matched.
          merchant_icon_url:,
          # Merchant name, enriched where available and otherwise as the card network
          # reported it.
          merchant_name:,
          # When the card network settled the transaction, as an ISO 8601 timestamp. Null
          # until it settles.
          posted_at:,
          # Current status of the transaction.
          status:,
          # The kind of card transaction. Always `spend` today.
          transaction_type:,
          # Amount charged in USD. Negative when the merchant refunded the card.
          usd_amount:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              card_id: String,
              cardholder_id: T.nilable(String),
              cashback_usd_amount: T.nilable(Float),
              created_at: String,
              currency: T.nilable(String),
              declined_reason: T.nilable(String),
              international: T::Boolean,
              local_amount: T.nilable(Float),
              merchant_category: T.nilable(String),
              merchant_category_code: T.nilable(String),
              merchant_icon_url: T.nilable(String),
              merchant_name: T.nilable(String),
              posted_at: T.nilable(String),
              status:
                WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status::TaggedSymbol,
              transaction_type:
                WhopSDK::CardTransactionCompletedWebhookEvent::Data::TransactionType::TaggedSymbol,
              usd_amount: T.nilable(Float)
            }
          )
        end
        def to_hash
        end

        # Current status of the transaction.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :reversed,
              WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status::TaggedSymbol
            )
          DECLINED =
            T.let(
              :declined,
              WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The kind of card transaction. Always `spend` today.
        module TransactionType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::CardTransactionCompletedWebhookEvent::Data::TransactionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SPEND =
            T.let(
              :spend,
              WhopSDK::CardTransactionCompletedWebhookEvent::Data::TransactionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CardTransactionCompletedWebhookEvent::Data::TransactionType::TaggedSymbol
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
