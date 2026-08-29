# typed: strong

module WhopSDK
  module Models
    class RefundListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::RefundListParams, WhopSDK::Internal::AnyHash)
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

      # Filter refunds to those belonging to this company. Mutually exclusive with
      # payment_id and user_id: provide exactly one.
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # Only return refunds created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return refunds created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # The sort direction for ordering results, either ascending or descending.
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

      # Filter refunds to those associated with this specific payment. Mutually
      # exclusive with company_id and user_id: provide exactly one.
      sig { returns(T.nilable(String)) }
      attr_reader :payment_id

      sig { params(payment_id: String).void }
      attr_writer :payment_id

      # Filter refunds to those associated with this specific user. Mutually exclusive
      # with payment_id and company_id: provide exactly one. Requires a credential
      # belonging to that user; any other credential receives 'You are not authorized'.
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
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          payment_id: String,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter refunds to those belonging to this company. Mutually exclusive with
        # payment_id and user_id: provide exactly one.
        company_id: nil,
        # Only return refunds created after this timestamp.
        created_after: nil,
        # Only return refunds created before this timestamp.
        created_before: nil,
        # The sort direction for ordering results, either ascending or descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter refunds to those associated with this specific payment. Mutually
        # exclusive with company_id and user_id: provide exactly one.
        payment_id: nil,
        # Filter refunds to those associated with this specific user. Mutually exclusive
        # with payment_id and company_id: provide exactly one. Requires a credential
        # belonging to that user; any other credential receives 'You are not authorized'.
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
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            payment_id: String,
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
