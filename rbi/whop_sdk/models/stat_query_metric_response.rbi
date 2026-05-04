# typed: strong

module WhopSDK
  module Models
    class StatQueryMetricResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::StatQueryMetricResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Column names in the order they appear in each data row.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :columns

      # Array of data rows, where each row is an array of values matching the columns
      # order.
      sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
      attr_accessor :data

      # Debug information including engine and SQL.
      sig do
        returns(T.nilable(WhopSDK::Models::StatQueryMetricResponse::Debug))
      end
      attr_reader :debug

      sig do
        params(
          debug:
            T.nilable(WhopSDK::Models::StatQueryMetricResponse::Debug::OrHash)
        ).void
      end
      attr_writer :debug

      # The node path that was queried.
      sig { returns(T.nilable(String)) }
      attr_accessor :node

      # Pagination information.
      sig do
        returns(T.nilable(WhopSDK::Models::StatQueryMetricResponse::Pagination))
      end
      attr_reader :pagination

      sig do
        params(
          pagination:
            T.nilable(
              WhopSDK::Models::StatQueryMetricResponse::Pagination::OrHash
            )
        ).void
      end
      attr_writer :pagination

      # The typename of this object
      sig { returns(Symbol) }
      attr_accessor :typename

      # Result from a stats query (raw, metric, or SQL).
      sig do
        params(
          columns: T.nilable(T::Array[String]),
          data: T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
          debug:
            T.nilable(WhopSDK::Models::StatQueryMetricResponse::Debug::OrHash),
          node: T.nilable(String),
          pagination:
            T.nilable(
              WhopSDK::Models::StatQueryMetricResponse::Pagination::OrHash
            ),
          typename: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Column names in the order they appear in each data row.
        columns:,
        # Array of data rows, where each row is an array of values matching the columns
        # order.
        data:,
        # Debug information including engine and SQL.
        debug:,
        # The node path that was queried.
        node:,
        # Pagination information.
        pagination:,
        # The typename of this object
        typename: :Result
      )
      end

      sig do
        override.returns(
          {
            columns: T.nilable(T::Array[String]),
            data: T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
            debug: T.nilable(WhopSDK::Models::StatQueryMetricResponse::Debug),
            node: T.nilable(String),
            pagination:
              T.nilable(WhopSDK::Models::StatQueryMetricResponse::Pagination),
            typename: Symbol
          }
        )
      end
      def to_hash
      end

      class Debug < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::StatQueryMetricResponse::Debug,
              WhopSDK::Internal::AnyHash
            )
          end

        # The query engine used.
        sig { returns(T.nilable(String)) }
        attr_accessor :engine

        # Unique request identifier for debugging.
        sig { returns(T.nilable(String)) }
        attr_accessor :request_id

        # The generated SQL query (with IDs sanitized).
        sig { returns(T.nilable(String)) }
        attr_accessor :sql

        # Debug information including engine and SQL.
        sig do
          params(
            engine: T.nilable(String),
            request_id: T.nilable(String),
            sql: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The query engine used.
          engine:,
          # Unique request identifier for debugging.
          request_id:,
          # The generated SQL query (with IDs sanitized).
          sql:
        )
        end

        sig do
          override.returns(
            {
              engine: T.nilable(String),
              request_id: T.nilable(String),
              sql: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Pagination < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::StatQueryMetricResponse::Pagination,
              WhopSDK::Internal::AnyHash
            )
          end

        # Cursor for the next page of results.
        sig { returns(T.nilable(String)) }
        attr_accessor :next_cursor

        # Pagination information.
        sig { params(next_cursor: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # Cursor for the next page of results.
          next_cursor:
        )
        end

        sig { override.returns({ next_cursor: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
