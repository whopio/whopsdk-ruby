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

      # A card transaction record.
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
      attr_accessor :company_id

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::CardTransactionCompletedWebhookEvent::Data::OrHash,
          timestamp: Time,
          company_id: T.nilable(String),
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        # A card transaction record.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        company_id: nil,
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
            company_id: T.nilable(String)
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

        # The unique identifier for the card transaction.
        sig { returns(String) }
        attr_accessor :id

        # How the card was presented or authenticated for the purchase.
        sig { returns(T.nilable(String)) }
        attr_accessor :authorization_method

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :card_id

        # The cashback reward amount earned on this transaction, in USD.
        sig { returns(T.nilable(Float)) }
        attr_accessor :cashback_usd_amount

        # The datetime the card transaction was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The ISO 4217 currency code for the transaction amount.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        # The issuer-provided reason the transaction was declined.
        sig { returns(T.nilable(String)) }
        attr_accessor :declined_reason

        # Whether the transaction was made with a merchant outside the card's home
        # country.
        sig { returns(T::Boolean) }
        attr_accessor :international

        # The transaction amount in the merchant's local currency before conversion.
        sig { returns(T.nilable(Float)) }
        attr_accessor :local_amount

        # A user-provided note attached to the transaction.
        sig { returns(T.nilable(String)) }
        attr_accessor :memo

        # The enriched or raw category label for the merchant.
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_category

        # The four-digit ISO 18245 merchant category code (MCC).
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_category_code

        # A URL to the enriched merchant logo image.
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_icon_url

        # The enriched or raw name of the merchant where the purchase was made.
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_name

        # When the transaction was settled by the card network.
        sig { returns(T.nilable(Time)) }
        attr_accessor :posted_at

        # The current lifecycle status of the transaction.
        sig do
          returns(
            WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The type of transaction.
        sig { returns(String) }
        attr_accessor :transaction_type

        # The transaction amount in USD.
        sig { returns(T.nilable(Float)) }
        attr_accessor :usd_amount

        # A card transaction record.
        sig do
          params(
            id: String,
            authorization_method: T.nilable(String),
            card_id: String,
            cashback_usd_amount: T.nilable(Float),
            created_at: Time,
            currency: T.nilable(String),
            declined_reason: T.nilable(String),
            international: T::Boolean,
            local_amount: T.nilable(Float),
            memo: T.nilable(String),
            merchant_category: T.nilable(String),
            merchant_category_code: T.nilable(String),
            merchant_icon_url: T.nilable(String),
            merchant_name: T.nilable(String),
            posted_at: T.nilable(Time),
            status:
              WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status::OrSymbol,
            transaction_type: String,
            usd_amount: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the card transaction.
          id:,
          # How the card was presented or authenticated for the purchase.
          authorization_method:,
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          card_id:,
          # The cashback reward amount earned on this transaction, in USD.
          cashback_usd_amount:,
          # The datetime the card transaction was created.
          created_at:,
          # The ISO 4217 currency code for the transaction amount.
          currency:,
          # The issuer-provided reason the transaction was declined.
          declined_reason:,
          # Whether the transaction was made with a merchant outside the card's home
          # country.
          international:,
          # The transaction amount in the merchant's local currency before conversion.
          local_amount:,
          # A user-provided note attached to the transaction.
          memo:,
          # The enriched or raw category label for the merchant.
          merchant_category:,
          # The four-digit ISO 18245 merchant category code (MCC).
          merchant_category_code:,
          # A URL to the enriched merchant logo image.
          merchant_icon_url:,
          # The enriched or raw name of the merchant where the purchase was made.
          merchant_name:,
          # When the transaction was settled by the card network.
          posted_at:,
          # The current lifecycle status of the transaction.
          status:,
          # The type of transaction.
          transaction_type:,
          # The transaction amount in USD.
          usd_amount:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              authorization_method: T.nilable(String),
              card_id: String,
              cashback_usd_amount: T.nilable(Float),
              created_at: Time,
              currency: T.nilable(String),
              declined_reason: T.nilable(String),
              international: T::Boolean,
              local_amount: T.nilable(Float),
              memo: T.nilable(String),
              merchant_category: T.nilable(String),
              merchant_category_code: T.nilable(String),
              merchant_icon_url: T.nilable(String),
              merchant_name: T.nilable(String),
              posted_at: T.nilable(Time),
              status:
                WhopSDK::CardTransactionCompletedWebhookEvent::Data::Status::TaggedSymbol,
              transaction_type: String,
              usd_amount: T.nilable(Float)
            }
          )
        end
        def to_hash
        end

        # The current lifecycle status of the transaction.
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
      end
    end
  end
end
