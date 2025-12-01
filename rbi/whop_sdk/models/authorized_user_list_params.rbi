# typed: strong

module WhopSDK
  module Models
    class AuthorizedUserListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AuthorizedUserListParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the company to list authorized users for
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The minimum creation date to filter by
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # The maximum creation date to filter by
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Possible roles an authorized user can have
      sig { returns(T.nilable(WhopSDK::AuthorizedUserRoles::OrSymbol)) }
      attr_accessor :role

      # Filter by the user ID to check if the user is an authorized user
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          role: T.nilable(WhopSDK::AuthorizedUserRoles::OrSymbol),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to list authorized users for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Possible roles an authorized user can have
        role: nil,
        # Filter by the user ID to check if the user is an authorized user
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            role: T.nilable(WhopSDK::AuthorizedUserRoles::OrSymbol),
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
