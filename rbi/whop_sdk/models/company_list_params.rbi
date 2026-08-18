# typed: strong

module WhopSDK
  module Models
    class CompanyListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CompanyListParams, WhopSDK::Internal::AnyHash)
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

      # Only return companies created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return companies created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # The sort direction for results. Defaults to descending.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: WhopSDK::Direction::OrSymbol).void }
      attr_writer :direction

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

      # The unique identifier of the parent platform company. When provided, lists
      # connected accounts under that platform. Omit to list the current user's own
      # companies.
      sig { returns(T.nilable(String)) }
      attr_reader :parent_company_id

      sig { params(parent_company_id: String).void }
      attr_writer :parent_company_id

      sig do
        params(
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          parent_company_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return companies created after this timestamp.
        created_after: nil,
        # Only return companies created before this timestamp.
        created_before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of the parent platform company. When provided, lists
        # connected accounts under that platform. Omit to list the current user's own
        # companies.
        parent_company_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            created_after: Time,
            created_before: Time,
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            parent_company_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
