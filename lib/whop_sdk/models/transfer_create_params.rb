# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Transfers#create
    class TransferCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount
      #   The amount to move, in the transfer currency. For example 25.00.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute origin_id
      #   The account sending the funds. A user ID (user_xxx), account ID (biz_xxx), or
      #   ledger account ID (ldgr_xxx).
      #
      #   @return [String]
      required :origin_id, String

      # @!attribute currency
      #   Currency, such as `usd`. Required for ledger transfers.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute destination_id
      #   The recipient. Required for ledger and wallet*send (a user*/biz*/ldgr* ID, or —
      #   for sends — an email). Omit for claim_link.
      #
      #   @return [String, nil]
      optional :destination_id, String

      # @!attribute expires_at
      #   claim_link only. Link expiry as an ISO 8601 timestamp. Defaults to 24 hours from
      #   creation.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute idempotence_key
      #   Ledger transfers and wallet sends. A unique key that makes retries safe.
      #   Retrying with the same key returns the original transfer, or attaches to the
      #   original wallet send, instead of moving money twice.
      #
      #   @return [String, nil]
      optional :idempotence_key, String, nil?: true

      # @!attribute metadata
      #   Ledger transfers only. Custom key-value pairs attached to the transfer. Max 50
      #   keys, 100 chars per key, 500 chars per string value.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute notes
      #   Ledger transfers only. A short note describing the transfer.
      #
      #   @return [String, nil]
      optional :notes, String, nil?: true

      # @!attribute redeemable_count
      #   claim_link only. How many different users can claim the link. Defaults to 1.
      #
      #   @return [Integer, nil]
      optional :redeemable_count, Integer

      # @!attribute type
      #   The kind of money movement, which decides what comes back. Defaults to ledger.
      #   `ledger` moves credit between two Whop balances and returns a `transfer`;
      #   `wallet_send` sends USDT from the origin account's Ethereum wallet and returns a
      #   `send`; `claim_link` funds a shareable link anyone with the URL can redeem and
      #   returns a `claim_link`. A `ledger` transfer from a stablecoin-rails account
      #   settles on-chain when covered, and still returns a `transfer`.
      #
      #   @return [Symbol, WhopSDK::Models::TransferCreateParams::Type, nil]
      optional :type, enum: -> { WhopSDK::TransferCreateParams::Type }

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(amount:, origin_id:, currency: nil, destination_id: nil, expires_at: nil, idempotence_key: nil, metadata: nil, notes: nil, redeemable_count: nil, type: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::TransferCreateParams} for more details.
      #
      #   @param amount [Float] The amount to move, in the transfer currency. For example 25.00.
      #
      #   @param origin_id [String] The account sending the funds. A user ID (user_xxx), account ID (biz_xxx), or le
      #
      #   @param currency [String] Currency, such as `usd`. Required for ledger transfers.
      #
      #   @param destination_id [String] The recipient. Required for ledger and wallet*send (a user*/biz*/ldgr* ID, or —
      #
      #   @param expires_at [Time, nil] claim_link only. Link expiry as an ISO 8601 timestamp. Defaults to 24 hours from
      #
      #   @param idempotence_key [String, nil] Ledger transfers and wallet sends. A unique key that makes retries safe. Retryin
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Ledger transfers only. Custom key-value pairs attached to the transfer. Max 50 k
      #
      #   @param notes [String, nil] Ledger transfers only. A short note describing the transfer.
      #
      #   @param redeemable_count [Integer] claim_link only. How many different users can claim the link. Defaults to 1.
      #
      #   @param type [Symbol, WhopSDK::Models::TransferCreateParams::Type] The kind of money movement, which decides what comes back. Defaults to ledger. `
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The kind of money movement, which decides what comes back. Defaults to ledger.
      # `ledger` moves credit between two Whop balances and returns a `transfer`;
      # `wallet_send` sends USDT from the origin account's Ethereum wallet and returns a
      # `send`; `claim_link` funds a shareable link anyone with the URL can redeem and
      # returns a `claim_link`. A `ledger` transfer from a stablecoin-rails account
      # settles on-chain when covered, and still returns a `transfer`.
      module Type
        extend WhopSDK::Internal::Type::Enum

        LEDGER = :ledger
        WALLET_SEND = :wallet_send
        CLAIM_LINK = :claim_link

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
