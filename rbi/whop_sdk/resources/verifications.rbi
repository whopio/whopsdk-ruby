# typed: strong

module WhopSDK
  module Resources
    # A Verification represents an identity review for a person or business. Accounts
    # and users complete verification when Whop needs to confirm who they are before
    # enabling payouts or compliance-sensitive workflows.
    #
    # Use the Verifications API to start or resume a hosted verification session,
    # check review status, and submit requested details or documents. If
    # `requested_information` contains items, submit answers with
    # [Update Verification](/api-reference/beta/verifications/update-verification).
    class Verifications
      # Starts a hosted verification session for an account or user, or returns the
      # active session when one already exists. Any fields you include in the request
      # body are used to prefill the session. Send `documents` (with `document_type`) to
      # instead verify the person from identity documents included in this request — no
      # hosted session involved. If the account already has an `approved` verification
      # the request is rejected; unlink it first to start a new one.
      sig do
        params(
          account_id: String,
          body:
            T.any(
              WhopSDK::VerificationCreateParams::Body::Individual::OrHash,
              WhopSDK::VerificationCreateParams::Body::Business::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationCreateResponse)
      end
      def create(
        # Query param: Account or user ID whose identity you want to verify. Use a `biz_`
        # account ID for account verifications, or the caller's `user_` ID for personal
        # verification.
        account_id:,
        # Body param: Request body for an individual (KYC) verification. Omit `kind` or
        # set it to `individual`. KYC is required to pay out funds and is a prerequisite
        # for Whop Card access. Accepting payments does not require verification until a
        # business reaches $5000 in payments.
        #
        # Add `business_name`, `business_structure`, and `country` of incorporation if the
        # individual operates under a business entity. This enables payouts to be received
        # by a business bank account.
        body:,
        request_options: {}
      )
      end

      # Returns verifications for an account, including their status and any required
      # actions.
      sig do
        params(
          verification_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationRetrieveResponse)
      end
      def retrieve(
        # Verification profile ID, prefixed `idpf_`.
        verification_id,
        request_options: {}
      )
      end

      # Updates editable profile details or submits answers for items returned in
      # `requested_information`. Once a verification is `approved` its profile details
      # are locked and can no longer be edited.
      sig do
        params(
          verification_id: String,
          body:
            T.any(
              WhopSDK::VerificationUpdateParams::Body::UpdateIndividualVerification::OrHash,
              WhopSDK::VerificationUpdateParams::Body::UpdateBusinessVerification::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationUpdateResponse)
      end
      def update(
        # Verification profile ID, prefixed `idpf_`.
        verification_id,
        # Fields that can be updated on an individual (KYC) verification. At least one
        # field is required.
        body:,
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
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::VerificationListResponse)
      end
      def list(
        # Account or user ID whose verifications you want to list. Use a `biz_` account
        # ID, or the caller's `user_` ID for personal verifications.
        account_id:,
        # Sort direction for returned verifications.
        direction: nil,
        # Field used to sort returned verifications.
        order: nil,
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
