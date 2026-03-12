# typed: strong

module WhopSDK
  module Resources
    # Payout accounts
    class PayoutAccounts
      # Retrieves the details of an existing payout account.
      #
      # Required permissions:
      #
      # - `payout:account:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PayoutAccountRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the payout account to retrieve.
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
