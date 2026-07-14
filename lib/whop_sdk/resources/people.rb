# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Person represents a visitor or customer of an account, assembled from
    # [pixel events](/api-reference/beta/events/event) and purchase activity — ad
    # clicks, storefront visits, and checkouts.
    #
    # Use the People API to list the people of an account and retrieve a single
    # person.
    class People
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PersonRetrieveParams} for more details.
      #
      # Retrieves one person for an account, aggregated from pixel events.
      #
      # @overload retrieve(person_id, account_id: nil, from: nil, to: nil, request_options: {})
      #
      # @param person_id [String] The ID of the person.
      #
      # @param account_id [String] The ID of the account, which will look like biz\_******\*******. Optional for
      # acco
      #
      # @param from [Integer] Start of the time range as a Unix timestamp.
      #
      # @param to [Integer] End of the time range as a Unix timestamp. Defaults to now.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PersonRetrieveResponse]
      #
      # @see WhopSDK::Models::PersonRetrieveParams
      def retrieve(person_id, params = {})
        parsed, options = WhopSDK::PersonRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["people/%1$s", person_id],
          query: query,
          model: WhopSDK::Models::PersonRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PersonListParams} for more details.
      #
      # Lists the people (visitors and customers) of an account, aggregated from pixel
      # events. The account is inferred from an account API key; other credentials must
      # pass account_id.
      #
      # @overload list(account_id: nil, after: nil, before: nil, direction: nil, filters: nil, first: nil, from: nil, sort: nil, to: nil, request_options: {})
      #
      # @param account_id [String] The ID of the account, which will look like biz\_******\*******. Optional for
      # acco
      #
      # @param after [String] A cursor for fetching people after a previous page.
      #
      # @param before [String] A cursor for fetching people before a later page.
      #
      # @param direction [Symbol, WhopSDK::Models::PersonListParams::Direction] Sort direction. Defaults to desc.
      #
      # @param filters [String] A JSON-encoded array of filters, each with field, operator, and value keys.
      #
      # @param first [Integer] The number of people to return (default 100, max 100).
      #
      # @param from [Integer] Start of the time range as a Unix timestamp. Defaults to 366 days before `to`.
      #
      # @param sort [String] Column to sort by (e.g. last_seen_at, ltv, purchase_count). Defaults to last_see
      #
      # @param to [Integer] End of the time range as a Unix timestamp. Defaults to now.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PersonListResponse>]
      #
      # @see WhopSDK::Models::PersonListParams
      def list(params = {})
        parsed, options = WhopSDK::PersonListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "people",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PersonListResponse,
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
