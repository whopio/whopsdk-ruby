# typed: strong

module WhopSDK
  module Resources
    # Stats
    class Stats
      # Describe available stats schema. Without resource returns root nodes and
      # metrics. With resource returns node columns, associations, and available
      # metrics.
      #
      # Required permissions:
      #
      # - `stats:read`
      sig do
        params(
          company_id: T.nilable(String),
          resource: T.nilable(String),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.nilable(WhopSDK::Models::StatDescribeResponse::Variants))
      end
      def describe(
        # Scope query to a specific company.
        company_id: nil,
        # Resource path using : as separator (e.g., 'receipts', 'payments:membership',
        # 'receipts:gross_revenue').
        resource: nil,
        # Scope query to a specific user.
        user_id: nil,
        request_options: {}
      )
      end

      # Query an aggregated metric. Returns data grouped by period with optional
      # breakdowns.
      #
      # Required permissions:
      #
      # - `stats:read`
      sig do
        params(
          resource: String,
          breakdowns: T.nilable(T::Array[String]),
          company_id: T.nilable(String),
          filters: T.nilable(T::Hash[Symbol, T.anything]),
          from: T.nilable(Time),
          granularity: T.nilable(String),
          time_zone: T.nilable(String),
          to: T.nilable(Time),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::StatQueryMetricResponse)
      end
      def query_metric(
        # Metric resource using : as separator (e.g., 'receipts:gross_revenue',
        # 'members:new_users').
        resource:,
        # Columns to break down the metric by.
        breakdowns: nil,
        # Scope query to a specific company.
        company_id: nil,
        # Key-value pairs to filter the data.
        filters: nil,
        # Start of time range (unix timestamp).
        from: nil,
        # Time granularity (daily, weekly, monthly).
        granularity: nil,
        # IANA timezone for period bucketing (e.g. 'America/New_York'). Defaults to UTC.
        # Only applies to ClickHouse metrics.
        time_zone: nil,
        # End of time range (unix timestamp).
        to: nil,
        # Scope query to a specific user.
        user_id: nil,
        request_options: {}
      )
      end

      # Query raw data from a resource. Returns paginated rows with all columns.
      #
      # Required permissions:
      #
      # - `stats:read`
      sig do
        params(
          resource: String,
          company_id: T.nilable(String),
          cursor: T.nilable(String),
          from: T.nilable(Time),
          limit: T.nilable(Integer),
          sort: T.nilable(String),
          sort_direction: T.nilable(WhopSDK::Direction::OrSymbol),
          to: T.nilable(Time),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::StatQueryRawResponse)
      end
      def query_raw(
        # Resource path using : as separator (e.g., 'members', 'payments:membership').
        resource:,
        # Scope query to a specific company.
        company_id: nil,
        # Pagination cursor for next page.
        cursor: nil,
        # Start of time range (unix timestamp).
        from: nil,
        # Number of records to return (max 10000).
        limit: nil,
        # Column to sort by.
        sort: nil,
        # The direction of the sort.
        sort_direction: nil,
        # End of time range (unix timestamp).
        to: nil,
        # Scope query to a specific user.
        user_id: nil,
        request_options: {}
      )
      end

      # Run custom SQL against a scoped resource. Use SCOPED_DATA as the table name.
      #
      # Required permissions:
      #
      # - `stats:read`
      sig do
        params(
          resource: String,
          sql: String,
          company_id: T.nilable(String),
          cursor: T.nilable(String),
          from: T.nilable(Time),
          limit: T.nilable(Integer),
          sort: T.nilable(String),
          sort_direction: T.nilable(WhopSDK::Direction::OrSymbol),
          to: T.nilable(Time),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::StatRunSqlResponse)
      end
      def run_sql(
        # Resource path using : as separator (e.g., 'receipts', 'payments:membership').
        resource:,
        # SQL query. Use SCOPED_DATA as the table name.
        sql:,
        # Scope query to a specific company.
        company_id: nil,
        # Pagination cursor for next page.
        cursor: nil,
        # Start of time range (unix timestamp).
        from: nil,
        # Number of records to return (max 10000).
        limit: nil,
        # Column to sort by.
        sort: nil,
        # The direction of the sort.
        sort_direction: nil,
        # End of time range (unix timestamp).
        to: nil,
        # Scope query to a specific user.
        user_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
