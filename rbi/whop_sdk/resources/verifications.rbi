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

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
