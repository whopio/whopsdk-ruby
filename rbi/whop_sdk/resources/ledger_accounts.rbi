# typed: strong

module WhopSDK
  module Resources
    class LedgerAccounts
      # Retrieves the details of an existing ledger account.
      #
      # Required permissions:
      #
      # - `company:balance:read`
      # - `payout:account:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::LedgerAccountRetrieveResponse)
      end
      def retrieve(
        # The identifier to look up the ledger account. Accepts a user ID ('user_xxx'),
        # company ID ('biz_xxx'), or ledger account ID ('ldgr_xxx').
        id,
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
