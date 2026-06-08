# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#cashback
    class CardCashback < WhopSDK::Internal::Type::BaseModel
      # @!attribute months
      #
      #   @return [Array<WhopSDK::Models::CardCashback::Month>]
      required :months, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CardCashback::Month] }

      # @!attribute next_payout_usd
      #   Cashback accrued this month that will be paid out next, in USD.
      #
      #   @return [String]
      required :next_payout_usd, String

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::CardCashback::Object]
      required :object, enum: -> { WhopSDK::CardCashback::Object }

      # @!attribute total_earned_usd
      #   Total cashback earned across all time, in USD.
      #
      #   @return [String]
      required :total_earned_usd, String

      # @!attribute next_payout_date
      #   ISO 8601 date the next cashback payout is scheduled for.
      #
      #   @return [String, nil]
      optional :next_payout_date, String, nil?: true

      # @!method initialize(months:, next_payout_usd:, object:, total_earned_usd:, next_payout_date: nil)
      #   @param months [Array<WhopSDK::Models::CardCashback::Month>]
      #
      #   @param next_payout_usd [String] Cashback accrued this month that will be paid out next, in USD.
      #
      #   @param object [Symbol, WhopSDK::Models::CardCashback::Object]
      #
      #   @param total_earned_usd [String] Total cashback earned across all time, in USD.
      #
      #   @param next_payout_date [String, nil] ISO 8601 date the next cashback payout is scheduled for.

      class Month < WhopSDK::Internal::Type::BaseModel
        # @!attribute by_merchant
        #
        #   @return [Array<WhopSDK::Models::CardCashback::Month::ByMerchant>]
        required :by_merchant, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CardCashback::Month::ByMerchant] }

        # @!attribute month
        #   Calendar month (1-12).
        #
        #   @return [Integer]
        required :month, Integer

        # @!attribute qualified_spend_usd
        #   Total spend that earned cashback this month, in USD.
        #
        #   @return [String]
        required :qualified_spend_usd, String

        # @!attribute total_cashback_usd
        #   Total cashback earned in this month, in USD.
        #
        #   @return [String]
        required :total_cashback_usd, String

        # @!attribute year
        #   Calendar year.
        #
        #   @return [Integer]
        required :year, Integer

        # @!method initialize(by_merchant:, month:, qualified_spend_usd:, total_cashback_usd:, year:)
        #   @param by_merchant [Array<WhopSDK::Models::CardCashback::Month::ByMerchant>]
        #
        #   @param month [Integer] Calendar month (1-12).
        #
        #   @param qualified_spend_usd [String] Total spend that earned cashback this month, in USD.
        #
        #   @param total_cashback_usd [String] Total cashback earned in this month, in USD.
        #
        #   @param year [Integer] Calendar year.

        class ByMerchant < WhopSDK::Internal::Type::BaseModel
          # @!attribute cashback_usd
          #   Cashback earned in this merchant bucket for the month, in USD.
          #
          #   @return [String]
          required :cashback_usd, String

          # @!attribute merchant_key
          #   Stable URL-safe identifier for the merchant bucket.
          #
          #   @return [String]
          required :merchant_key, String

          # @!attribute merchant_label
          #   Human-readable merchant bucket label.
          #
          #   @return [String]
          required :merchant_label, String

          # @!method initialize(cashback_usd:, merchant_key:, merchant_label:)
          #   @param cashback_usd [String] Cashback earned in this merchant bucket for the month, in USD.
          #
          #   @param merchant_key [String] Stable URL-safe identifier for the merchant bucket.
          #
          #   @param merchant_label [String] Human-readable merchant bucket label.
        end
      end

      # @see WhopSDK::Models::CardCashback#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        CARD_CASHBACK = :card_cashback

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
