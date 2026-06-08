# frozen_string_literal: true

module WhopSDK
  module Models
    class CardTransaction < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the card transaction.
      #
      #   @return [String]
      required :id, String

      # @!attribute authorization_method
      #   How the card was presented or authenticated for the purchase.
      #
      #   @return [String, nil]
      required :authorization_method, String, nil?: true

      # @!attribute card_id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String]
      required :card_id, String

      # @!attribute cashback_usd_amount
      #   The cashback reward amount earned on this transaction, in USD.
      #
      #   @return [Float, nil]
      required :cashback_usd_amount, Float, nil?: true

      # @!attribute created_at
      #   The datetime the card transaction was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The ISO 4217 currency code for the transaction amount.
      #
      #   @return [String, nil]
      required :currency, String, nil?: true

      # @!attribute declined_reason
      #   The issuer-provided reason the transaction was declined.
      #
      #   @return [String, nil]
      required :declined_reason, String, nil?: true

      # @!attribute international
      #   Whether the transaction was made with a merchant outside the card's home
      #   country.
      #
      #   @return [Boolean]
      required :international, WhopSDK::Internal::Type::Boolean

      # @!attribute local_amount
      #   The transaction amount in the merchant's local currency before conversion.
      #
      #   @return [Float, nil]
      required :local_amount, Float, nil?: true

      # @!attribute memo
      #   A user-provided note attached to the transaction.
      #
      #   @return [String, nil]
      required :memo, String, nil?: true

      # @!attribute merchant_category
      #   The enriched or raw category label for the merchant.
      #
      #   @return [String, nil]
      required :merchant_category, String, nil?: true

      # @!attribute merchant_category_code
      #   The four-digit ISO 18245 merchant category code (MCC).
      #
      #   @return [String, nil]
      required :merchant_category_code, String, nil?: true

      # @!attribute merchant_icon_url
      #   A URL to the enriched merchant logo image.
      #
      #   @return [String, nil]
      required :merchant_icon_url, String, nil?: true

      # @!attribute merchant_name
      #   The enriched or raw name of the merchant where the purchase was made.
      #
      #   @return [String, nil]
      required :merchant_name, String, nil?: true

      # @!attribute posted_at
      #   When the transaction was settled by the card network.
      #
      #   @return [Time, nil]
      required :posted_at, Time, nil?: true

      # @!attribute status
      #   The current lifecycle status of the transaction.
      #
      #   @return [Symbol, WhopSDK::Models::CardTransaction::Status]
      required :status, enum: -> { WhopSDK::CardTransaction::Status }

      # @!attribute transaction_type
      #   The type of transaction.
      #
      #   @return [String]
      required :transaction_type, String

      # @!attribute usd_amount
      #   The transaction amount in USD.
      #
      #   @return [Float, nil]
      required :usd_amount, Float, nil?: true

      # @!method initialize(id:, authorization_method:, card_id:, cashback_usd_amount:, created_at:, currency:, declined_reason:, international:, local_amount:, memo:, merchant_category:, merchant_category_code:, merchant_icon_url:, merchant_name:, posted_at:, status:, transaction_type:, usd_amount:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CardTransaction} for more details.
      #
      #   A card transaction record.
      #
      #   @param id [String] The unique identifier for the card transaction.
      #
      #   @param authorization_method [String, nil] How the card was presented or authenticated for the purchase.
      #
      #   @param card_id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param cashback_usd_amount [Float, nil] The cashback reward amount earned on this transaction, in USD.
      #
      #   @param created_at [Time] The datetime the card transaction was created.
      #
      #   @param currency [String, nil] The ISO 4217 currency code for the transaction amount.
      #
      #   @param declined_reason [String, nil] The issuer-provided reason the transaction was declined.
      #
      #   @param international [Boolean] Whether the transaction was made with a merchant outside the card's home country
      #
      #   @param local_amount [Float, nil] The transaction amount in the merchant's local currency before conversion.
      #
      #   @param memo [String, nil] A user-provided note attached to the transaction.
      #
      #   @param merchant_category [String, nil] The enriched or raw category label for the merchant.
      #
      #   @param merchant_category_code [String, nil] The four-digit ISO 18245 merchant category code (MCC).
      #
      #   @param merchant_icon_url [String, nil] A URL to the enriched merchant logo image.
      #
      #   @param merchant_name [String, nil] The enriched or raw name of the merchant where the purchase was made.
      #
      #   @param posted_at [Time, nil] When the transaction was settled by the card network.
      #
      #   @param status [Symbol, WhopSDK::Models::CardTransaction::Status] The current lifecycle status of the transaction.
      #
      #   @param transaction_type [String] The type of transaction.
      #
      #   @param usd_amount [Float, nil] The transaction amount in USD.

      # The current lifecycle status of the transaction.
      #
      # @see WhopSDK::Models::CardTransaction#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        PENDING = :pending
        COMPLETED = :completed
        REVERSED = :reversed
        DECLINED = :declined

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
