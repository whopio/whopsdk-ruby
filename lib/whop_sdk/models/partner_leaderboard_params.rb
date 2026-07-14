# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Partners#leaderboard
    class PartnerLeaderboardParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute period
      #   Time window for the rankings. `day`, `month`, and `year` count earnings since
      #   the start of the current calendar day, month, or year; `last_30_days` counts
      #   earnings over the trailing 30 days; `all_time` ranks lifetime earnings.
      #
      #   @return [Symbol, WhopSDK::Models::PartnerLeaderboardParams::Period, nil]
      optional :period, enum: -> { WhopSDK::PartnerLeaderboardParams::Period }

      # @!method initialize(period: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PartnerLeaderboardParams} for more details.
      #
      #   @param period [Symbol, WhopSDK::Models::PartnerLeaderboardParams::Period] Time window for the rankings. `day`, `month`, and `year` count earnings since th
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Time window for the rankings. `day`, `month`, and `year` count earnings since
      # the start of the current calendar day, month, or year; `last_30_days` counts
      # earnings over the trailing 30 days; `all_time` ranks lifetime earnings.
      module Period
        extend WhopSDK::Internal::Type::Enum

        DAY = :day
        MONTH = :month
        YEAR = :year
        LAST_30_DAYS = :last_30_days
        ALL_TIME = :all_time

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
