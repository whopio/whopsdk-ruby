# typed: strong

module WhopSDK
  module Models
    class StatQueryMetricParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::StatQueryMetricParams, WhopSDK::Internal::AnyHash)
        end

      # Metric resource using : as separator (e.g., 'receipts:gross_revenue',
      # 'members:new_users').
      sig { returns(String) }
      attr_accessor :resource

      # Columns to break down the metric by.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :breakdowns

      # Scope query to a specific company.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Key-value pairs to filter the data.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :filters

      # Start of time range (unix timestamp).
      sig { returns(T.nilable(Time)) }
      attr_accessor :from

      # Time granularity (daily, weekly, monthly).
      sig { returns(T.nilable(String)) }
      attr_accessor :granularity

      # IANA timezone for period bucketing (e.g. 'America/New_York'). Defaults to UTC.
      # Only applies to ClickHouse metrics.
      sig { returns(T.nilable(String)) }
      attr_accessor :time_zone

      # End of time range (unix timestamp).
      sig { returns(T.nilable(Time)) }
      attr_accessor :to

      # Scope query to a specific user.
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            resource: String,
            breakdowns: T.nilable(T::Array[String]),
            company_id: T.nilable(String),
            filters: T.nilable(T::Hash[Symbol, T.anything]),
            from: T.nilable(Time),
            granularity: T.nilable(String),
            time_zone: T.nilable(String),
            to: T.nilable(Time),
            user_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
