# typed: strong

module WhopSDK
  module Resources
    # Withdrawals
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
          platform_covers_fees: T.nilable(T::Boolean),
          statement_descriptor: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Withdrawal)
      end
      def create(
        # The amount to withdraw in the specified currency
        amount:,
        # The ID of the company to withdraw from.
        company_id:,
        # The currency that is being withdrawn.
        currency:,
        # The ID of the payout method to use for the withdrawal.
        payout_method_id: nil,
        # Whether the platform covers the payout fees instead of the connected account.
        platform_covers_fees: nil,
        # Custom statement descriptor for the withdrawal. Must be between 5 and 22
        # characters and contain only alphanumeric characters.
        statement_descriptor: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing withdrawal.
      #
      # Required permissions:
      #
      # - `payout:withdrawal:read`
      # - `payout:destination:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Withdrawal)
      end
      def retrieve(
        # The unique identifier of the withdrawal to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of withdrawals for a company, with optional sorting and
      # date filtering.
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
        # The unique identifier of the company to list withdrawals for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return withdrawals created after this timestamp.
        created_after: nil,
        # Only return withdrawals created before this timestamp.
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
