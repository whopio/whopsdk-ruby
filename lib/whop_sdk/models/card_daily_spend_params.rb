# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#daily_spend
    class CardDailySpendParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute timezone
      #   IANA timezone (e.g. America/New_York) the daily buckets are computed in.
      #   Defaults to UTC.
      #
      #   @return [String, nil]
      optional :timezone, String

      # @!method initialize(id:, timezone: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CardDailySpendParams} for more details.
      #
      #   @param id [String]
      #
      #   @param timezone [String] IANA timezone (e.g. America/New_York) the daily buckets are computed in. Default
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
