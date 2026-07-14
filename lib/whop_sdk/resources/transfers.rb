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
      # Moves funds out of an account. `type` selects the kind of movement (default
      # `ledger`): `ledger` transfers credit between two ledger accounts and returns a
      # Transfer; `wallet_send` sends USDT from the origin account's Ethereum wallet to
      # a recipient; `claim_link` funds a shareable claim link anyone with the URL can
      # redeem.
      #
      # @overload create(amount:, origin_id:, currency: nil, destination_id: nil, expires_at: nil, idempotence_key: nil, metadata: nil, notes: nil, redeemable_count: nil, type: nil, request_options: {})
      #
      # @param amount [Float] The amount to move, in the transfer currency. For example 25.00.
      #
      # @param origin_id [String] The account sending the funds. A user ID (user_xxx), account ID (biz_xxx), or le
      #
      # @param currency [String] Currency, such as `usd`. Required for ledger transfers.
      #
      # @param destination_id [String] The recipient. Required for ledger and wallet*send (a user*/biz*/ldgr* ID, or —
      #
      # @param expires_at [Time, nil] claim_link only. Link expiry as an ISO 8601 timestamp. Defaults to 24 hours from
      #
      # @param idempotence_key [String, nil] Ledger transfers only. A unique key to prevent duplicate transfers.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] Ledger transfers only. Custom key-value pairs attached to the transfer. Max 50 k
      #
      # @param notes [String, nil] Ledger transfers only. A short note describing the transfer.
      #
      # @param redeemable_count [Integer] claim_link only. How many different users can claim the link. Defaults to 1.
      #
      # @param type [Symbol, WhopSDK::Models::TransferCreateParams::Type] The kind of money movement. Defaults to ledger.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::TransferCreateResponse::Transfer, WhopSDK::Models::TransferCreateResponse::Send, WhopSDK::Models::TransferCreateResponse::ClaimLink]
      #
      # @see WhopSDK::Models::TransferCreateParams
      def create(params)
        parsed, options = WhopSDK::TransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "transfers",
          body: parsed,
          model: WhopSDK::Models::TransferCreateResponse,
          options: options
        )
      end

      # Retrieves a ledger transfer by ID.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The transfer ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::TransferRetrieveResponse]
      #
      # @see WhopSDK::Models::TransferRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["transfers/%1$s", id],
          model: WhopSDK::Models::TransferRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists ledger transfers for an account. You must specify an origin_id or a
      # destination_id.
      #
      # @overload list(after: nil, before: nil, created_after: nil, created_before: nil, destination_id: nil, direction: nil, first: nil, last: nil, order: nil, origin_id: nil, request_options: {})
      #
      # @param after [String] Cursor to fetch the page after (from page_info.end_cursor).
      #
      # @param before [String] Cursor to fetch the page before (from page_info.start_cursor).
      #
      # @param created_after [String] Only transfers created strictly after this ISO 8601 timestamp.
      #
      # @param created_before [String] Only transfers created strictly before this ISO 8601 timestamp.
      #
      # @param destination_id [String] Filter to transfers received by this account.
      #
      # @param direction [Symbol, WhopSDK::Models::TransferListParams::Direction] Sort direction. Defaults to desc.
      #
      # @param first [Integer] Number of transfers to return from the start of the window.
      #
      # @param last [Integer] Number of transfers to return from the end of the window.
      #
      # @param order [Symbol, WhopSDK::Models::TransferListParams::Order] Sort column. Defaults to created_at.
      #
      # @param origin_id [String] Filter to transfers sent from this account.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::TransferListResponse>]
      #
      # @see WhopSDK::Models::TransferListParams
      def list(params = {})
        parsed, options = WhopSDK::TransferListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "transfers",
          query: query,
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
