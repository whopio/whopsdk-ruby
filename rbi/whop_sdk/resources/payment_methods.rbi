# typed: strong

module WhopSDK
  module Resources
    class PaymentMethods
      # Retrieves the details of an existing payment method.
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      sig do
        params(
          id: String,
          company_id: T.nilable(String),
          member_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PaymentMethodRetrieveResponse::Variants)
      end
      def retrieve(
        # The unique identifier of the payment method.
        id,
        # The unique identifier of the company. Provide either this or member_id, not
        # both.
        company_id: nil,
        # The unique identifier of the member. Provide either this or company_id, not
        # both.
        member_id: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of payment methods for a member or company, with
      # optional filtering by creation date. A payment method is a stored representation
      # of how a customer intends to pay, such as a card, bank account, or digital
      # wallet.
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          member_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::PaymentMethodListResponse::Variants
          ]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company. Provide either this or member_id, not
        # both.
        company_id: nil,
        # Only return payment methods created after this timestamp.
        created_after: nil,
        # Only return payment methods created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of the member to list payment methods for.
        member_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
