# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#daily_spend
    class CardDailySpend < WhopSDK::Internal::Type::BaseModel
      # @!attribute daily_spend
      #
      #   @return [Array<WhopSDK::Models::CardDailySpend::DailySpend>]
      required :daily_spend, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CardDailySpend::DailySpend] }

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::CardDailySpend::Object]
      required :object, enum: -> { WhopSDK::CardDailySpend::Object }

      # @!attribute timezone
      #   The IANA timezone the daily buckets were aggregated in.
      #
      #   @return [String]
      required :timezone, String

      # @!method initialize(daily_spend:, object:, timezone:)
      #   @param daily_spend [Array<WhopSDK::Models::CardDailySpend::DailySpend>]
      #
      #   @param object [Symbol, WhopSDK::Models::CardDailySpend::Object]
      #
      #   @param timezone [String] The IANA timezone the daily buckets were aggregated in.

      class DailySpend < WhopSDK::Internal::Type::BaseModel
        # @!attribute amount_cents
        #   Total spend for the day, in cents.
        #
        #   @return [Integer]
        required :amount_cents, Integer

        # @!attribute date
        #   ISO 8601 timestamp for the spend bucket (noon UTC on the day).
        #
        #   @return [String]
        required :date, String

        # @!method initialize(amount_cents:, date:)
        #   @param amount_cents [Integer] Total spend for the day, in cents.
        #
        #   @param date [String] ISO 8601 timestamp for the spend bucket (noon UTC on the day).
      end

      # @see WhopSDK::Models::CardDailySpend#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        DAILY_SPEND = :daily_spend

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
