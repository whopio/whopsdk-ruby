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

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # The unique identifier of the company to list authorized users for.
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # Only return authorized users created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return authorized users created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Filter authorized users by their assigned role within the company.
      sig { returns(T.nilable(WhopSDK::AuthorizedUserRoles::OrSymbol)) }
      attr_reader :role

      sig { params(role: WhopSDK::AuthorizedUserRoles::OrSymbol).void }
      attr_writer :role

      # Filter results to a specific user to check if they are an authorized team
      # member.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          after: String,
          before: String,
          company_id: String,
          created_after: Time,
          created_before: Time,
          first: Integer,
          last: Integer,
          role: WhopSDK::AuthorizedUserRoles::OrSymbol,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to list authorized users for.
        company_id: nil,
        # Only return authorized users created after this timestamp.
        created_after: nil,
        # Only return authorized users created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter authorized users by their assigned role within the company.
        role: nil,
        # Filter results to a specific user to check if they are an authorized team
        # member.
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            company_id: String,
            created_after: Time,
            created_before: Time,
            first: Integer,
            last: Integer,
            role: WhopSDK::AuthorizedUserRoles::OrSymbol,
            user_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
