# typed: strong

module WhopSDK
  module Resources
    class LedgerAccounts
      # Retrieves a ledger account by its ID, company ID or user ID
      #
      # Required permissions:
      #
      # - `company:balance:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::LedgerAccountRetrieveResponse)
      end
      def retrieve(
        # Either a User ID, Company ID, or LedgerAccount ID (user_xxx, biz_xxx, or
        # ldgr_xxx)
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
