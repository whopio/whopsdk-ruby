# typed: strong

module WhopSDK
  module Resources
    class Withdrawals
      # Creates a withdrawal request for a ledger account
      #
      # Required permissions:
      #
      # - `payout:withdraw_funds`
      # - `payout:destination:read`
      sig do
        params(
          amount: Float,
          company_id: String,
          currency: WhopSDK::Currency::OrSymbol,
          payout_method_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WithdrawalCreateResponse)
      end
      def create(
        # The amount to withdraw
        amount:,
        # The ID of the company to withdraw from.
        company_id:,
        # The currency that is being withdrawn.
        currency:,
        # The ID of the payout token to use for the withdrawal.
        payout_method_id: nil,
        request_options: {}
      )
      end

      # Retrieves a withdrawal by ID
      #
      # Required permissions:
      #
      # - `payout:withdrawal:read`
      # - `payout:destination:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WithdrawalRetrieveResponse)
      end
      def retrieve(
        # The ID of the Withdrawal
        id,
        request_options: {}
      )
      end

      # Lists withdrawals
      #
      # Required permissions:
      #
      # - `payout:withdrawal:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::WithdrawalListResponse]
        )
      end
      def list(
        # The ID of the company to list withdrawals for
        company_id:,
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
