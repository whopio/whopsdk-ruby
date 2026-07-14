# typed: strong

module WhopSDK
  module Resources
    # Deposits describe ways to add funds to an account balance, including hosted
    # deposit pages, bank deposit instructions, and supported crypto wallet addresses.
    #
    # Use the Deposits API to create deposit instructions for an account and retrieve
    # existing bank deposit activity.
    class Deposits
      # Resolves a deposit destination and returns the on-chain addresses that can fund
      # it. No authentication is required; any business can be resolved by its account
      # ID. A caller authenticated as a user can additionally resolve their own user
      # account.
      sig do
        params(
          destination:
            T.any(
              String,
              WhopSDK::DepositCreateParams::Destination::UnionMember1::OrHash
            ),
          amount: Float,
          metadata: T::Hash[Symbol, T.anything],
          network: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::DepositCreateResponse)
      end
      def create(
        # Destination account ID or wallet address. Object form is supported for
        # compatibility.
        destination:,
        # Amount to prefill on hosted deposit page.
        amount: nil,
        # Metadata to include with the deposit response.
        metadata: nil,
        # Destination network override.
        network: nil,
        request_options: {}
      )
      end

      # Returns deposit transactions for a business account. Bank deposit transactions
      # are nested under the bank field.
      sig do
        params(
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::DepositListResponse)
      end
      def list(
        # Business account ID (biz\_\*).
        account_id:,
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
