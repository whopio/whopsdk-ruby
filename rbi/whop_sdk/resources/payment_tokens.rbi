# typed: strong

module WhopSDK
  module Resources
    class PaymentTokens
      # Retrieves a PaymentToken by ID
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      sig do
        params(
          id: String,
          member_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PaymentTokenRetrieveResponse)
      end
      def retrieve(
        # The ID of the PaymentToken
        id,
        # The ID of the Member associated with the PaymentToken
        member_id:,
        request_options: {}
      )
      end

      # Lists PaymentTokens
      #
      # Required permissions:
      #
      # - `member:payment_methods:read`
      sig do
        params(
          member_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::PaymentTokenListResponse
          ]
        )
      end
      def list(
        # The ID of the Member to list payment tokens for
        member_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
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
