# typed: strong

module WhopSDK
  module Resources
    class Deposits
      # Resolves a deposit destination and returns the on-chain addresses that can fund
      # it.
      sig do
        params(
          amount: Float,
          destination:
            T.any(
              String,
              WhopSDK::DepositCreateParams::Destination::UnionMember1::OrHash
            ),
          metadata: T::Hash[Symbol, T.anything],
          network: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::DepositCreateResponse)
      end
      def create(
        # Amount to deposit.
        amount:,
        # Destination account ID or wallet address. Object form is supported for
        # compatibility.
        destination:,
        # Arbitrary metadata echoed in the response.
        metadata: nil,
        # Optional destination network override.
        network: nil,
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
