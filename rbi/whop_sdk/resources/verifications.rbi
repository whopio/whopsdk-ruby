# typed: strong

module WhopSDK
  module Resources
    class Verifications
      # Retrieves a verification by ID
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
        # The ID of the verification
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
