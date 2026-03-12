# typed: strong

module WhopSDK
  module Resources
    # Verifications
    class Verifications
      # Retrieves the details of an existing verification.
      #
      # Required permissions:
      #
      # - `payout:account:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the verification to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a list of identity verifications for a payout account, ordered by most
      # recent first.
      #
      # Required permissions:
      #
      # - `payout:account:read`
      sig do
        params(
          payout_account_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::VerificationListResponse
          ]
        )
      end
      def list(
        # The unique identifier of the payout account to list verifications for.
        payout_account_id:,
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
