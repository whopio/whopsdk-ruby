# typed: strong

module WhopSDK
  module Models
    class StatRunSqlParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::StatRunSqlParams, WhopSDK::Internal::AnyHash)
        end

      # Resource path using : as separator (e.g., 'receipts', 'payments:membership').
      sig { returns(String) }
      attr_accessor :resource

      # SQL query. Use SCOPED_DATA as the table name.
      sig { returns(String) }
      attr_accessor :sql

      # Scope query to a specific company.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Pagination cursor for next page.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      # Start of time range (unix timestamp).
      sig { returns(T.nilable(Time)) }
      attr_accessor :from

      # Number of records to return (max 10000).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit

      # Column to sort by.
      sig { returns(T.nilable(String)) }
      attr_accessor :sort

      # The direction of the sort.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_accessor :sort_direction

      # End of time range (unix timestamp).
      sig { returns(T.nilable(Time)) }
      attr_accessor :to

      # Scope query to a specific user.
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
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
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
