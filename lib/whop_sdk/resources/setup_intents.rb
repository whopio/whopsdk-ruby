# frozen_string_literal: true

module WhopSDK
  module Resources
    class SetupIntents
      # Retrieves a Setup Intent by ID
      #
      # Required permissions:
      #
      # - `payment:setup_intent:read`
      # - `member:basic:read`
      # - `member:email:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the Setup Intent
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::SetupIntent]
      #
      # @see WhopSDK::Models::SetupIntentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["setup_intents/%1$s", id],
          model: WhopSDK::SetupIntent,
          options: params[:request_options]
        )
      end

      # Lists Setup Intents
      #
      # Required permissions:
      #
      # - `payment:setup_intent:read`
      # - `member:basic:read`
      # - `member:email:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list setup intents for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] The minimum creation date to filter by
      #
      # @param created_before [Time, nil] The maximum creation date to filter by
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::SetupIntentListResponse>]
      #
      # @see WhopSDK::Models::SetupIntentListParams
      def list(params)
        parsed, options = WhopSDK::SetupIntentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "setup_intents",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::SetupIntentListResponse,
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
