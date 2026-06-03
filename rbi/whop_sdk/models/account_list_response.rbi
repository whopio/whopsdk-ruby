# typed: strong

module WhopSDK
  module Models
    class AccountListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AccountListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[WhopSDK::Account]) }
      attr_accessor :accounts

      sig { returns(WhopSDK::Models::AccountListResponse::Pagination) }
      attr_reader :pagination

      sig do
        params(
          pagination: WhopSDK::Models::AccountListResponse::Pagination::OrHash
        ).void
      end
      attr_writer :pagination

      sig do
        params(
          accounts: T::Array[WhopSDK::Account::OrHash],
          pagination: WhopSDK::Models::AccountListResponse::Pagination::OrHash
        ).returns(T.attached_class)
      end
      def self.new(accounts:, pagination:)
      end

      sig do
        override.returns(
          {
            accounts: T::Array[WhopSDK::Account],
            pagination: WhopSDK::Models::AccountListResponse::Pagination
          }
        )
      end
      def to_hash
      end

      class Pagination < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AccountListResponse::Pagination,
              WhopSDK::Internal::AnyHash
            )
          end

        # Current page number
        sig { returns(Float) }
        attr_accessor :current_page

        # Next page number
        sig { returns(T.nilable(Float)) }
        attr_accessor :next_page

        # Previous page number
        sig { returns(T.nilable(Float)) }
        attr_accessor :prev_page

        # Total number of records
        sig { returns(Float) }
        attr_accessor :total_count

        # Total number of pages
        sig { returns(Float) }
        attr_accessor :total_pages

        sig do
          params(
            current_page: Float,
            next_page: T.nilable(Float),
            prev_page: T.nilable(Float),
            total_count: Float,
            total_pages: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Current page number
          current_page:,
          # Next page number
          next_page:,
          # Previous page number
          prev_page:,
          # Total number of records
          total_count:,
          # Total number of pages
          total_pages:
        )
        end

        sig do
          override.returns(
            {
              current_page: Float,
              next_page: T.nilable(Float),
              prev_page: T.nilable(Float),
              total_count: Float,
              total_pages: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
