# frozen_string_literal: true

module WhopSDK
  module Resources
    # Verifications
    class Verifications
      # Retrieves the details of an existing verification.
      #
      # Required permissions:
      #
      # - `payout:account:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the verification to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::VerificationRetrieveResponse]
      #
      # @see WhopSDK::Models::VerificationRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["verifications/%1$s", id],
          model: WhopSDK::Models::VerificationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Returns a list of identity verifications for a payout account, ordered by most
      # recent first.
      #
      # Required permissions:
      #
      # - `payout:account:read`
      #
      # @overload list(payout_account_id:, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param payout_account_id [String] The unique identifier of the payout account to list verifications for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::VerificationListResponse>]
      #
      # @see WhopSDK::Models::VerificationListParams
      def list(params)
        parsed, options = WhopSDK::VerificationListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "verifications",
          query: query,
          page: WhopSDK::Internal::CursorPage,
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
