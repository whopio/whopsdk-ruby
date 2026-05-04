# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Stats#query_metric
    class StatQueryMetricParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute resource
      #   Metric resource using : as separator (e.g., 'receipts:gross_revenue',
      #   'members:new_users').
      #
      #   @return [String]
      required :resource, String

      # @!attribute breakdowns
      #   Columns to break down the metric by.
      #
      #   @return [Array<String>, nil]
      optional :breakdowns, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute company_id
      #   Scope query to a specific company.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute filters
      #   Key-value pairs to filter the data.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :filters, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute from
      #   Start of time range (unix timestamp).
      #
      #   @return [Time, nil]
      optional :from, Time, nil?: true

      # @!attribute granularity
      #   Time granularity (daily, weekly, monthly).
      #
      #   @return [String, nil]
      optional :granularity, String, nil?: true

      # @!attribute time_zone
      #   IANA timezone for period bucketing (e.g. 'America/New_York'). Defaults to UTC.
      #   Only applies to ClickHouse metrics.
      #
      #   @return [String, nil]
      optional :time_zone, String, nil?: true

      # @!attribute to
      #   End of time range (unix timestamp).
      #
      #   @return [Time, nil]
      optional :to, Time, nil?: true

      # @!attribute user_id
      #   Scope query to a specific user.
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(resource:, breakdowns: nil, company_id: nil, filters: nil, from: nil, granularity: nil, time_zone: nil, to: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::StatQueryMetricParams} for more details.
      #
      #   @param resource [String] Metric resource using : as separator (e.g., 'receipts:gross_revenue', 'members:n
      #
      #   @param breakdowns [Array<String>, nil] Columns to break down the metric by.
      #
      #   @param company_id [String, nil] Scope query to a specific company.
      #
      #   @param filters [Hash{Symbol=>Object}, nil] Key-value pairs to filter the data.
      #
      #   @param from [Time, nil] Start of time range (unix timestamp).
      #
      #   @param granularity [String, nil] Time granularity (daily, weekly, monthly).
      #
      #   @param time_zone [String, nil] IANA timezone for period bucketing (e.g. 'America/New_York'). Defaults to UTC. O
      #
      #   @param to [Time, nil] End of time range (unix timestamp).
      #
      #   @param user_id [String, nil] Scope query to a specific user.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
