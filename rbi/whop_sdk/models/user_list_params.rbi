# typed: strong

module WhopSDK
  module Models
    class UserListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::UserListParams, WhopSDK::Internal::AnyHash)
        end

      # Return results after this cursor. Use `page_info.end_cursor` from the previous
      # response to fetch the next page.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Return results before this cursor. Use `page_info.start_cursor` from the
      # previous response to fetch the previous page.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Number of results to return from the start of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Number of results to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # A search term to filter users by name or username.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          after: String,
          before: String,
          first: Integer,
          last: Integer,
          query: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Return results after this cursor. Use `page_info.end_cursor` from the previous
        # response to fetch the next page.
        after: nil,
        # Return results before this cursor. Use `page_info.start_cursor` from the
        # previous response to fetch the previous page.
        before: nil,
        # Number of results to return from the start of the range.
        first: nil,
        # Number of results to return from the end of the range.
        last: nil,
        # A search term to filter users by name or username.
        query: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            first: Integer,
            last: Integer,
            query: String,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
