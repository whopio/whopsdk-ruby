# typed: strong

module WhopSDK
  module Resources
    # A Verification represents a legal identity for a person or business. Accounts
    # and users complete verification when Whop needs to confirm who they are before
    # enabling payouts or compliance-sensitive workflows.
    #
    # Use the Verifications API to start or resume a hosted verification session,
    # check review status, and submit requested details or documents. If
    # `requested_information` contains items, submit answers with
    # [Update Verification](/api-reference/beta/verifications/update-verification).
    class Verifications
      # Returns verifications for an account, including their status and any required
      # actions.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationRetrieveResponse)
      end
      def retrieve(
        # Verification profile ID, prefixed `idpf_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Returns verifications for an account, including their status and any required
      # actions.
      sig do
        params(
          account_id: String,
          direction: WhopSDK::VerificationListParams::Direction::OrSymbol,
          order: WhopSDK::VerificationListParams::Order::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationListResponse)
      end
      def list(
        # Query param: Account or user ID whose verifications you want to list. Use a
        # `biz_` account ID, or the caller's `user_` ID for personal verifications.
        account_id:,
        # Query param: Sort direction for returned verifications.
        direction: nil,
        # Query param: Field used to sort returned verifications.
        order: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
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
