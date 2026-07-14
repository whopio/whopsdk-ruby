# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#logs
    class AppLogsParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute after
      #   A cursor for fetching logs after a previous page.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute app_build_id
      #   Only return logs from this build.
      #
      #   @return [String, nil]
      optional :app_build_id, String

      # @!attribute before
      #   A cursor for fetching logs before a later page.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Start of the time window as an ISO 8601 timestamp. Defaults to 7 days before
      #   created_before.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   End of the time window as an ISO 8601 timestamp. Defaults to now.
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute first
      #   The number of log lines to return (max 500).
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute level
      #   Only return console lines of this level.
      #
      #   @return [Symbol, WhopSDK::Models::AppLogsParams::Level, nil]
      optional :level, enum: -> { WhopSDK::AppLogsParams::Level }

      # @!attribute query
      #   Only return logs whose message contains this text (case-insensitive).
      #
      #   @return [String, nil]
      optional :query, String

      # @!method initialize(id:, after: nil, app_build_id: nil, before: nil, created_after: nil, created_before: nil, first: nil, level: nil, query: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppLogsParams} for more details.
      #
      #   @param id [String]
      #
      #   @param after [String] A cursor for fetching logs after a previous page.
      #
      #   @param app_build_id [String] Only return logs from this build.
      #
      #   @param before [String] A cursor for fetching logs before a later page.
      #
      #   @param created_after [Time] Start of the time window as an ISO 8601 timestamp. Defaults to 7 days before cre
      #
      #   @param created_before [Time] End of the time window as an ISO 8601 timestamp. Defaults to now.
      #
      #   @param first [Integer] The number of log lines to return (max 500).
      #
      #   @param level [Symbol, WhopSDK::Models::AppLogsParams::Level] Only return console lines of this level.
      #
      #   @param query [String] Only return logs whose message contains this text (case-insensitive).
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Only return console lines of this level.
      module Level
        extend WhopSDK::Internal::Type::Enum

        LOG = :log
        DEBUG = :debug
        INFO = :info
        WARN = :warn
        ERROR = :error

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
