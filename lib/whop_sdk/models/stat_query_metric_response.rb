# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Stats#query_metric
    class StatQueryMetricResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute columns
      #   Column names in the order they appear in each data row.
      #
      #   @return [Array<String>, nil]
      required :columns, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute data
      #   Array of data rows, where each row is an array of values matching the columns
      #   order.
      #
      #   @return [Array<Hash{Symbol=>Object}>, nil]
      required :data,
               WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]],
               nil?: true

      # @!attribute debug
      #   Debug information including engine and SQL.
      #
      #   @return [WhopSDK::Models::StatQueryMetricResponse::Debug, nil]
      required :debug, -> { WhopSDK::Models::StatQueryMetricResponse::Debug }, nil?: true

      # @!attribute node
      #   The node path that was queried.
      #
      #   @return [String, nil]
      required :node, String, nil?: true

      # @!attribute pagination
      #   Pagination information.
      #
      #   @return [WhopSDK::Models::StatQueryMetricResponse::Pagination, nil]
      required :pagination, -> { WhopSDK::Models::StatQueryMetricResponse::Pagination }, nil?: true

      # @!attribute typename
      #   The typename of this object
      #
      #   @return [Symbol, :Result]
      required :typename, const: :Result

      # @!method initialize(columns:, data:, debug:, node:, pagination:, typename: :Result)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::StatQueryMetricResponse} for more details.
      #
      #   Result from a stats query (raw, metric, or SQL).
      #
      #   @param columns [Array<String>, nil] Column names in the order they appear in each data row.
      #
      #   @param data [Array<Hash{Symbol=>Object}>, nil] Array of data rows, where each row is an array of values matching the columns or
      #
      #   @param debug [WhopSDK::Models::StatQueryMetricResponse::Debug, nil] Debug information including engine and SQL.
      #
      #   @param node [String, nil] The node path that was queried.
      #
      #   @param pagination [WhopSDK::Models::StatQueryMetricResponse::Pagination, nil] Pagination information.
      #
      #   @param typename [Symbol, :Result] The typename of this object

      # @see WhopSDK::Models::StatQueryMetricResponse#debug
      class Debug < WhopSDK::Internal::Type::BaseModel
        # @!attribute engine
        #   The query engine used.
        #
        #   @return [String, nil]
        required :engine, String, nil?: true

        # @!attribute request_id
        #   Unique request identifier for debugging.
        #
        #   @return [String, nil]
        required :request_id, String, nil?: true

        # @!attribute sql
        #   The generated SQL query (with IDs sanitized).
        #
        #   @return [String, nil]
        required :sql, String, nil?: true

        # @!method initialize(engine:, request_id:, sql:)
        #   Debug information including engine and SQL.
        #
        #   @param engine [String, nil] The query engine used.
        #
        #   @param request_id [String, nil] Unique request identifier for debugging.
        #
        #   @param sql [String, nil] The generated SQL query (with IDs sanitized).
      end

      # @see WhopSDK::Models::StatQueryMetricResponse#pagination
      class Pagination < WhopSDK::Internal::Type::BaseModel
        # @!attribute next_cursor
        #   Cursor for the next page of results.
        #
        #   @return [String, nil]
        required :next_cursor, String, nil?: true

        # @!method initialize(next_cursor:)
        #   Pagination information.
        #
        #   @param next_cursor [String, nil] Cursor for the next page of results.
      end
    end
  end
end
