# frozen_string_literal: true

module WhopSDK
  module Resources
    # Stats
    class Stats
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::StatDescribeParams} for more details.
      #
      # Describe available stats schema. Without resource returns root nodes and
      # metrics. With resource returns node columns, associations, and available
      # metrics.
      #
      # Required permissions:
      #
      # - `stats:read`
      #
      # @overload describe(company_id: nil, resource: nil, user_id: nil, request_options: {})
      #
      # @param company_id [String, nil] Scope query to a specific company.
      #
      # @param resource [String, nil] Resource path using : as separator (e.g., 'receipts', 'payments:membership', 're
      #
      # @param user_id [String, nil] Scope query to a specific user.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::StatDescribeResponse::DescribeRoot, WhopSDK::Models::StatDescribeResponse::DescribeNode, WhopSDK::Models::StatDescribeResponse::DescribeMetric, WhopSDK::Models::StatDescribeResponse::DescribeView, nil]
      #
      # @see WhopSDK::Models::StatDescribeParams
      def describe(params = {})
        parsed, options = WhopSDK::StatDescribeParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "stats/describe",
          query: query,
          model: WhopSDK::Models::StatDescribeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::StatQueryMetricParams} for more details.
      #
      # Query an aggregated metric. Returns data grouped by period with optional
      # breakdowns.
      #
      # Required permissions:
      #
      # - `stats:read`
      #
      # @overload query_metric(resource:, breakdowns: nil, company_id: nil, filters: nil, from: nil, granularity: nil, time_zone: nil, to: nil, user_id: nil, request_options: {})
      #
      # @param resource [String] Metric resource using : as separator (e.g., 'receipts:gross_revenue', 'members:n
      #
      # @param breakdowns [Array<String>, nil] Columns to break down the metric by.
      #
      # @param company_id [String, nil] Scope query to a specific company.
      #
      # @param filters [Hash{Symbol=>Object}, nil] Key-value pairs to filter the data.
      #
      # @param from [Time, nil] Start of time range (unix timestamp).
      #
      # @param granularity [String, nil] Time granularity (daily, weekly, monthly).
      #
      # @param time_zone [String, nil] IANA timezone for period bucketing (e.g. 'America/New_York'). Defaults to UTC. O
      #
      # @param to [Time, nil] End of time range (unix timestamp).
      #
      # @param user_id [String, nil] Scope query to a specific user.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::StatQueryMetricResponse]
      #
      # @see WhopSDK::Models::StatQueryMetricParams
      def query_metric(params)
        parsed, options = WhopSDK::StatQueryMetricParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "stats/metric",
          query: query,
          model: WhopSDK::Models::StatQueryMetricResponse,
          options: options
        )
      end

      # Query raw data from a resource. Returns paginated rows with all columns.
      #
      # Required permissions:
      #
      # - `stats:read`
      #
      # @overload query_raw(resource:, company_id: nil, cursor: nil, from: nil, limit: nil, sort: nil, sort_direction: nil, to: nil, user_id: nil, request_options: {})
      #
      # @param resource [String] Resource path using : as separator (e.g., 'members', 'payments:membership').
      #
      # @param company_id [String, nil] Scope query to a specific company.
      #
      # @param cursor [String, nil] Pagination cursor for next page.
      #
      # @param from [Time, nil] Start of time range (unix timestamp).
      #
      # @param limit [Integer, nil] Number of records to return (max 10000).
      #
      # @param sort [String, nil] Column to sort by.
      #
      # @param sort_direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param to [Time, nil] End of time range (unix timestamp).
      #
      # @param user_id [String, nil] Scope query to a specific user.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::StatQueryRawResponse]
      #
      # @see WhopSDK::Models::StatQueryRawParams
      def query_raw(params)
        parsed, options = WhopSDK::StatQueryRawParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "stats/raw",
          query: query,
          model: WhopSDK::Models::StatQueryRawResponse,
          options: options
        )
      end

      # Run custom SQL against a scoped resource. Use SCOPED_DATA as the table name.
      #
      # Required permissions:
      #
      # - `stats:read`
      #
      # @overload run_sql(resource:, sql:, company_id: nil, cursor: nil, from: nil, limit: nil, sort: nil, sort_direction: nil, to: nil, user_id: nil, request_options: {})
      #
      # @param resource [String] Resource path using : as separator (e.g., 'receipts', 'payments:membership').
      #
      # @param sql [String] SQL query. Use SCOPED_DATA as the table name.
      #
      # @param company_id [String, nil] Scope query to a specific company.
      #
      # @param cursor [String, nil] Pagination cursor for next page.
      #
      # @param from [Time, nil] Start of time range (unix timestamp).
      #
      # @param limit [Integer, nil] Number of records to return (max 10000).
      #
      # @param sort [String, nil] Column to sort by.
      #
      # @param sort_direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param to [Time, nil] End of time range (unix timestamp).
      #
      # @param user_id [String, nil] Scope query to a specific user.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::StatRunSqlResponse]
      #
      # @see WhopSDK::Models::StatRunSqlParams
      def run_sql(params)
        parsed, options = WhopSDK::StatRunSqlParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "stats/sql",
          query: query,
          model: WhopSDK::Models::StatRunSqlResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
