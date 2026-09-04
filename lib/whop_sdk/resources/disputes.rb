# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Dispute is a chargeback a customer files against a payment through their bank,
    # or an inquiry that may become one. It carries the disputed payment, a deadline
    # to respond, your evidence, and the outcome once the processor rules.
    #
    # Use the Disputes API to list disputes, edit the evidence packet while a dispute
    # is still contestable, and submit it for review.
    class Disputes
      # Retrieves a single dispute.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The dispute ID (`dspt_` tag).
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Dispute]
      #
      # @see WhopSDK::Models::DisputeRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::DisputeRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["disputes/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Dispute,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::DisputeListParams} for more details.
      #
      # Lists the disputes across the accounts you can read.
      #
      # @overload list(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, currency: nil, direction: nil, first: nil, last: nil, order: nil, status: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Only disputes filed against this account (`biz_` tag). Omit it to c
      #
      # @param after [String] Query param: A cursor; returns disputes after this position.
      #
      # @param before [String] Query param: A cursor; returns disputes before this position.
      #
      # @param created_after [String] Query param: Only disputes opened after this ISO 8601 timestamp.
      #
      # @param created_before [String] Query param: Only disputes opened before this ISO 8601 timestamp.
      #
      # @param currency [String] Query param: Only disputes in this three-letter ISO currency.
      #
      # @param direction [Symbol, WhopSDK::Models::DisputeListParams::Direction] Query param: Sort direction.
      #
      # @param first [Integer] Query param: The number of disputes to return (default 20, max 100).
      #
      # @param last [Integer] Query param: The number of disputes to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::DisputeListParams::Order] Query param: The field to sort disputes by.
      #
      # @param status [Array<Symbol, WhopSDK::Models::DisputeListParams::Status>] Query param: Only disputes in these statuses. Repeat the parameter to pass sever
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Dispute>]
      #
      # @see WhopSDK::Models::DisputeListParams
      def list(params = {})
        query_params =
          [
            :account_id,
            :after,
            :before,
            :created_after,
            :created_before,
            :currency,
            :direction,
            :first,
            :last,
            :order,
            :status
          ]
        parsed, options = WhopSDK::DisputeListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "disputes",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Dispute,
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
