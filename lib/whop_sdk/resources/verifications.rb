# frozen_string_literal: true

module WhopSDK
  module Resources
    class Verifications
      # Retrieves a verification by ID
      #
      # Required permissions:
      #
      # - `payout:account:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the verification
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

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
