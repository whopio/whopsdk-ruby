# typed: strong

module WhopSDK
  module Models
    class TransferCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::TransferCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The amount to move, in the transfer currency. For example 25.00.
      sig { returns(Float) }
      attr_accessor :amount

      # The account sending the funds. A user ID (user_xxx), account ID (biz_xxx), or
      # ledger account ID (ldgr_xxx).
      sig { returns(String) }
      attr_accessor :origin_id

      # Currency, such as `usd`. Required for ledger transfers.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # The recipient. Required for ledger and wallet*send (a user*/biz*/ldgr* ID, or —
      # for sends — an email). Omit for claim_link.
      sig { returns(T.nilable(String)) }
      attr_reader :destination_id

      sig { params(destination_id: String).void }
      attr_writer :destination_id

      # claim_link only. Link expiry as an ISO 8601 timestamp. Defaults to 24 hours from
      # creation.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Ledger transfers and wallet sends. A unique key that makes retries safe.
      # Retrying with the same key returns the original transfer, or attaches to the
      # original wallet send, instead of moving money twice.
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotence_key

      # Ledger transfers only. Custom key-value pairs attached to the transfer. Max 50
      # keys, 100 chars per key, 500 chars per string value.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # Ledger transfers only. A short note describing the transfer.
      sig { returns(T.nilable(String)) }
      attr_accessor :notes

      # claim_link only. How many different users can claim the link. Defaults to 1.
      sig { returns(T.nilable(Integer)) }
      attr_reader :redeemable_count

      sig { params(redeemable_count: Integer).void }
      attr_writer :redeemable_count

      # The kind of money movement, which decides what comes back. Defaults to ledger.
      # `ledger` moves credit between two Whop balances and returns a `transfer`;
      # `wallet_send` sends USDT from the origin account's Ethereum wallet and returns a
      # `send`; `claim_link` funds a shareable link anyone with the URL can redeem and
      # returns a `claim_link`. A `ledger` transfer from a stablecoin-rails account
      # settles on-chain when covered, and still returns a `transfer`.
      sig { returns(T.nilable(WhopSDK::TransferCreateParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: WhopSDK::TransferCreateParams::Type::OrSymbol).void }
      attr_writer :type

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          amount: Float,
          origin_id: String,
          currency: String,
          destination_id: String,
          expires_at: T.nilable(Time),
          idempotence_key: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          notes: T.nilable(String),
          redeemable_count: Integer,
          type: WhopSDK::TransferCreateParams::Type::OrSymbol,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount to move, in the transfer currency. For example 25.00.
        amount:,
        # The account sending the funds. A user ID (user_xxx), account ID (biz_xxx), or
        # ledger account ID (ldgr_xxx).
        origin_id:,
        # Currency, such as `usd`. Required for ledger transfers.
        currency: nil,
        # The recipient. Required for ledger and wallet*send (a user*/biz*/ldgr* ID, or —
        # for sends — an email). Omit for claim_link.
        destination_id: nil,
        # claim_link only. Link expiry as an ISO 8601 timestamp. Defaults to 24 hours from
        # creation.
        expires_at: nil,
        # Ledger transfers and wallet sends. A unique key that makes retries safe.
        # Retrying with the same key returns the original transfer, or attaches to the
        # original wallet send, instead of moving money twice.
        idempotence_key: nil,
        # Ledger transfers only. Custom key-value pairs attached to the transfer. Max 50
        # keys, 100 chars per key, 500 chars per string value.
        metadata: nil,
        # Ledger transfers only. A short note describing the transfer.
        notes: nil,
        # claim_link only. How many different users can claim the link. Defaults to 1.
        redeemable_count: nil,
        # The kind of money movement, which decides what comes back. Defaults to ledger.
        # `ledger` moves credit between two Whop balances and returns a `transfer`;
        # `wallet_send` sends USDT from the origin account's Ethereum wallet and returns a
        # `send`; `claim_link` funds a shareable link anyone with the URL can redeem and
        # returns a `claim_link`. A `ledger` transfer from a stablecoin-rails account
        # settles on-chain when covered, and still returns a `transfer`.
        type: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Float,
            origin_id: String,
            currency: String,
            destination_id: String,
            expires_at: T.nilable(Time),
            idempotence_key: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            notes: T.nilable(String),
            redeemable_count: Integer,
            type: WhopSDK::TransferCreateParams::Type::OrSymbol,
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The kind of money movement, which decides what comes back. Defaults to ledger.
      # `ledger` moves credit between two Whop balances and returns a `transfer`;
      # `wallet_send` sends USDT from the origin account's Ethereum wallet and returns a
      # `send`; `claim_link` funds a shareable link anyone with the URL can redeem and
      # returns a `claim_link`. A `ledger` transfer from a stablecoin-rails account
      # settles on-chain when covered, and still returns a `transfer`.
      module Type
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::TransferCreateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEDGER =
          T.let(:ledger, WhopSDK::TransferCreateParams::Type::TaggedSymbol)
        WALLET_SEND =
          T.let(:wallet_send, WhopSDK::TransferCreateParams::Type::TaggedSymbol)
        CLAIM_LINK =
          T.let(:claim_link, WhopSDK::TransferCreateParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::TransferCreateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
