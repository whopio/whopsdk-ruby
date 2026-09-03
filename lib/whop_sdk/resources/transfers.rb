# frozen_string_literal: true

module WhopSDK
  module Resources
    # Transfers move value between identities on Whop. They are used for
    # account-to-account money movement, user payouts inside Whop, crypto transfers,
    # and claim links depending on the destination type.
    #
    # Use the Transfers API to create a transfer, list previous transfers, and
    # retrieve a transfer by ID when reconciling money movement between accounts or
    # users.
    class Transfers
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::TransferCreateParams} for more details.
      #
      # Moves money between accounts, or into a claim link anyone with the URL can
      # redeem.
      #
      # @overload create(amount:, origin_id:, currency: nil, destination_id: nil, expires_at: nil, feed_id: nil, feed_type: nil, idempotence_key: nil, metadata: nil, notes: nil, redeemable_count: nil, type: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param amount [Float] Body param: The amount to move, in the transfer currency. For example 25.00.
      #
      # @param origin_id [String] Body param: The account sending the funds. A user ID (user_xxx), account ID (biz
      #
      # @param currency [String] Body param: Currency, such as `usd`. Required for ledger transfers.
      #
      # @param destination_id [String] Body param: The recipient. Required for ledger and wallet*send (a
      # user*/biz\_/ldg
      #
      # @param expires_at [Time, nil] Body param: claim_link only. Link expiry as an ISO 8601 timestamp. Defaults to 2
      #
      # @param feed_id [String, nil] Body param: Ledger transfers only. The feed the transfer was initiated from. Giv
      #
      # @param feed_type [Symbol, WhopSDK::Models::TransferCreateParams::FeedType, nil] Body param: Ledger transfers only. The type of the feed named by `feed_id`.
      #
      # @param idempotence_key [String, nil] Body param: Ledger transfers and wallet sends. A unique key that makes retries s
      #
      # @param metadata [Hash{Symbol=>Object}, nil] Body param: Ledger transfers only. Custom key-value pairs attached to the transf
      #
      # @param notes [String, nil] Body param: Ledger transfers only. A short note describing the transfer.
      #
      # @param redeemable_count [Integer] Body param: claim_link only. How many different users can claim the link. Defaul
      #
      # @param type [Symbol, WhopSDK::Models::TransferCreateParams::Type] Body param: The kind of money movement, which decides what comes back. Defaults
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::TransferCreateResponse::Transfer, WhopSDK::Models::TransferCreateResponse::Send, WhopSDK::Models::TransferCreateResponse::ClaimLink]
      #
      # @see WhopSDK::Models::TransferCreateParams
      def create(params)
        parsed, options = WhopSDK::TransferCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "transfers",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Models::TransferCreateResponse,
          options: options
        )
      end

      # Retrieves a single transfer.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The transfer ID.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::TransferRetrieveResponse]
      #
      # @see WhopSDK::Models::TransferRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::TransferRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["transfers/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::TransferRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::TransferListParams} for more details.
      #
      # Lists an account's transfers.
      #
      # @overload list(after: nil, before: nil, created_after: nil, created_before: nil, destination_id: nil, direction: nil, first: nil, last: nil, order: nil, origin_id: nil, api_version_date: nil, request_options: {})
      #
      # @param after [String] Query param: Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param before [String] Query param: Cursor to fetch the page before (from page_info.start_cursor).
      #
      # @param created_after [String] Query param: Only transfers created strictly after this ISO 8601 timestamp.
      #
      # @param created_before [String] Query param: Only transfers created strictly before this ISO 8601 timestamp.
      #
      # @param destination_id [String] Query param: Filter to transfers received by this account. Provide this or origi
      #
      # @param direction [Symbol, WhopSDK::Models::TransferListParams::Direction] Query param: Sort direction. Defaults to desc.
      #
      # @param first [Integer] Query param: Number of transfers to return from the start of the window.
      #
      # @param last [Integer] Query param: Number of transfers to return from the end of the window.
      #
      # @param order [Symbol, WhopSDK::Models::TransferListParams::Order] Query param: Sort column. Defaults to created_at.
      #
      # @param origin_id [String] Query param: Filter to transfers sent from this account. Provide this or destina
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::TransferListResponse>]
      #
      # @see WhopSDK::Models::TransferListParams
      def list(params = {})
        query_params =
          [
            :after,
            :before,
            :created_after,
            :created_before,
            :destination_id,
            :direction,
            :first,
            :last,
            :order,
            :origin_id
          ]
        parsed, options = WhopSDK::TransferListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "transfers",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::TransferListResponse,
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
