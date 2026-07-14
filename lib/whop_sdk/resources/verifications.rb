# frozen_string_literal: true

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
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::VerificationCreateParams} for more details.
      #
      # Starts a hosted verification session for an account or user, or returns the
      # active session when one already exists. Any fields you include in the request
      # body are used to prefill the session. Send `documents` (with `document_type`) to
      # instead verify the person from identity documents included in this request — no
      # hosted session involved. If the account already has an `approved` verification
      # the request is rejected; unlink it first to start a new one.
      #
      # @overload create(account_id:, body:, request_options: {})
      #
      # @param account_id [String] Query param: Account or user ID whose identity you want to verify. Use a `biz_`
      #
      # @param body [WhopSDK::Models::VerificationCreateParams::Body::Individual, WhopSDK::Models::VerificationCreateParams::Body::Business] Body param: Request body for an individual (KYC) verification. Omit `kind` or se
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::VerificationCreateResponse]
      #
      # @see WhopSDK::Models::VerificationCreateParams
      def create(params)
        parsed, options = WhopSDK::VerificationCreateParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.except(:body))
        @client.request(
          method: :post,
          path: "verifications",
          query: query,
          body: parsed[:body],
          model: WhopSDK::Models::VerificationCreateResponse,
          options: options
        )
      end

      # Returns verifications for an account, including their status and any required
      # actions.
      #
      # @overload retrieve(verification_id, request_options: {})
      #
      # @param verification_id [String] Verification profile ID, prefixed `idpf_`.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::VerificationRetrieveResponse]
      #
      # @see WhopSDK::Models::VerificationRetrieveParams
      def retrieve(verification_id, params = {})
        @client.request(
          method: :get,
          path: ["verifications/%1$s", verification_id],
          model: WhopSDK::Models::VerificationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::VerificationUpdateParams} for more details.
      #
      # Updates editable profile details or submits answers for items returned in
      # `requested_information`. Once a verification is `approved` its profile details
      # are locked and can no longer be edited.
      #
      # @overload update(verification_id, body:, request_options: {})
      #
      # @param verification_id [String] Verification profile ID, prefixed `idpf_`.
      #
      # @param body [WhopSDK::Models::VerificationUpdateParams::Body::UpdateIndividualVerification, WhopSDK::Models::VerificationUpdateParams::Body::UpdateBusinessVerification] Fields that can be updated on an individual (KYC) verification. At least one fie
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::VerificationUpdateResponse]
      #
      # @see WhopSDK::Models::VerificationUpdateParams
      def update(verification_id, params)
        parsed, options = WhopSDK::VerificationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["verifications/%1$s", verification_id],
          body: parsed[:body],
          model: WhopSDK::Models::VerificationUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::VerificationListParams} for more details.
      #
      # Returns verifications for an account, including their status and any required
      # actions.
      #
      # @overload list(account_id:, direction: nil, order: nil, request_options: {})
      #
      # @param account_id [String] Account or user ID whose verifications you want to list. Use a `biz_` account ID
      #
      # @param direction [Symbol, WhopSDK::Models::VerificationListParams::Direction] Sort direction for returned verifications.
      #
      # @param order [Symbol, WhopSDK::Models::VerificationListParams::Order] Field used to sort returned verifications.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::VerificationListResponse]
      #
      # @see WhopSDK::Models::VerificationListParams
      def list(params)
        parsed, options = WhopSDK::VerificationListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "verifications",
          query: query,
          model: WhopSDK::Models::VerificationListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
