# frozen_string_literal: true

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
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] Verification profile ID, prefixed `idpf_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::VerificationRetrieveResponse]
      #
      # @see WhopSDK::Models::VerificationRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::VerificationRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["verifications/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::VerificationRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::VerificationListParams} for more details.
      #
      # Returns verifications for an account, including their status and any required
      # actions.
      #
      # @overload list(account_id:, direction: nil, order: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Account or user ID whose verifications you want to list. Use a `biz
      #
      # @param direction [Symbol, WhopSDK::Models::VerificationListParams::Direction] Query param: Sort direction for returned verifications.
      #
      # @param order [Symbol, WhopSDK::Models::VerificationListParams::Order] Query param: Field used to sort returned verifications.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::VerificationListResponse]
      #
      # @see WhopSDK::Models::VerificationListParams
      def list(params)
        query_params = [:account_id, :direction, :order]
        parsed, options = WhopSDK::VerificationListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "verifications",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
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
