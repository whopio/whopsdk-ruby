# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Stats#run_sql
    class StatRunSqlParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute resource
      #   Resource path using : as separator (e.g., 'receipts', 'payments:membership').
      #
      #   @return [String]
      required :resource, String

      # @!attribute sql
      #   SQL query. Use SCOPED_DATA as the table name.
      #
      #   @return [String]
      required :sql, String

      # @!attribute company_id
      #   Scope query to a specific company.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute cursor
      #   Pagination cursor for next page.
      #
      #   @return [String, nil]
      optional :cursor, String, nil?: true

      # @!attribute from
      #   Start of time range (unix timestamp).
      #
      #   @return [Time, nil]
      optional :from, Time, nil?: true

      # @!attribute limit
      #   Number of records to return (max 10000).
      #
      #   @return [Integer, nil]
      optional :limit, Integer, nil?: true

      # @!attribute sort
      #   Column to sort by.
      #
      #   @return [String, nil]
      optional :sort, String, nil?: true

      # @!attribute sort_direction
      #   The direction of the sort.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :sort_direction, enum: -> { WhopSDK::Direction }, nil?: true

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

      # @!method initialize(resource:, sql:, company_id: nil, cursor: nil, from: nil, limit: nil, sort: nil, sort_direction: nil, to: nil, user_id: nil, request_options: {})
      #   @param resource [String] Resource path using : as separator (e.g., 'receipts', 'payments:membership').
      #
      #   @param sql [String] SQL query. Use SCOPED_DATA as the table name.
      #
      #   @param company_id [String, nil] Scope query to a specific company.
      #
      #   @param cursor [String, nil] Pagination cursor for next page.
      #
      #   @param from [Time, nil] Start of time range (unix timestamp).
      #
      #   @param limit [Integer, nil] Number of records to return (max 10000).
      #
      #   @param sort [String, nil] Column to sort by.
      #
      #   @param sort_direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param to [Time, nil] End of time range (unix timestamp).
      #
      #   @param user_id [String, nil] Scope query to a specific user.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
