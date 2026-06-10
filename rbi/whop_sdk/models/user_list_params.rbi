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

      # A cursor; returns users after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor; returns users before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # The number of users to return (max 50).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of users to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # A search term to filter users by name or username.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      sig do
        params(
          after: String,
          before: String,
          first: Integer,
          last: Integer,
          query: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A cursor; returns users after this position.
        after: nil,
        # A cursor; returns users before this position.
        before: nil,
        # The number of users to return (max 50).
        first: nil,
        # The number of users to return from the end of the range.
        last: nil,
        # A search term to filter users by name or username.
        query: nil,
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
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
