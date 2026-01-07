# typed: strong

module WhopSDK
  module Resources
    class PayoutMethods
      # Retrieves a payout method by ID
      #
      # Required permissions:
      #
      # - `payout:destination:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PayoutMethodRetrieveResponse)
      end
      def retrieve(
        # The ID of the payout method
        id,
        request_options: {}
      )
      end

      # Lists payout destinations for a company
      #
      # Required permissions:
      #
      # - `payout:destination:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::PayoutMethodListResponse
          ]
        )
      end
      def list(
        # The company ID to list payout methods for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
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
