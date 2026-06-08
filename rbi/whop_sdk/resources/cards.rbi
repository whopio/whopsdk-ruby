# typed: strong

module WhopSDK
  module Resources
    class Cards
      # Issues a new virtual card for the account.
      sig do
        params(
          account_id: String,
          name: String,
          spend_limit: String,
          spend_limit_frequency:
            WhopSDK::CardCreateParams::SpendLimitFrequency::OrSymbol,
          transaction_limit: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Card)
      end
      def create(
        # Query param: The business or user account ID to issue the card for.
        account_id:,
        # Body param: Display name for the card.
        name: nil,
        # Body param: Recurring spend limit in dollars (requires spend_limit_frequency).
        spend_limit: nil,
        # Body param
        spend_limit_frequency: nil,
        # Body param: Per-authorization limit in dollars (mutually exclusive with
        # spend_limit).
        transaction_limit: nil,
        request_options: {}
      )
      end

      # Returns a single card's lifecycle details.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Card)
      end
      def retrieve(
        # The card ID.
        id,
        request_options: {}
      )
      end

      # Updates a card's name or spending limits.
      sig do
        params(
          id: String,
          name: String,
          spend_limit: String,
          spend_limit_frequency:
            WhopSDK::CardUpdateParams::SpendLimitFrequency::OrSymbol,
          transaction_limit: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Card)
      end
      def update(
        # The card ID.
        id,
        name: nil,
        spend_limit: nil,
        spend_limit_frequency: nil,
        transaction_limit: nil,
        request_options: {}
      )
      end

      # Lists every issued card for the account.
      sig do
        params(
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::CardListResponse)
      end
      def list(
        # The business or user account ID that owns the cards.
        account_id:,
        request_options: {}
      )
      end

      # Returns the funding balance of the card's collateral account.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CardAccountBalance)
      end
      def balance(
        # The card ID.
        id,
        request_options: {}
      )
      end

      # Lists transactions for a single card, newest first.
      sig do
        params(
          id: String,
          created_after: String,
          created_before: String,
          page: Integer,
          per: Integer,
          status: WhopSDK::CardCardTransactionsParams::Status::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CardTransactionList)
      end
      def card_transactions(
        # The card ID.
        id,
        # Only return transactions created at or after this ISO 8601 timestamp.
        created_after: nil,
        # Only return transactions created strictly before this ISO 8601 timestamp.
        created_before: nil,
        # The page number to retrieve.
        page: nil,
        # The number of transactions to return per page. Capped at 50.
        per: nil,
        # Filter to transactions with this status.
        status: nil,
        request_options: {}
      )
      end

      # Returns the aggregate cashback summary. NOTE: the figures are account-level —
      # cashback is earned and paid out against the shared collateral account, so they
      # cover all of the account's cards, not just this one.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CardCashback)
      end
      def cashback(
        # The card ID.
        id,
        request_options: {}
      )
      end

      # Files a dispute against one of the card's transactions. The transaction must
      # belong to the addressed card.
      sig do
        params(
          id: String,
          dispute_type: WhopSDK::CardCreateDisputeParams::DisputeType::OrSymbol,
          text_evidence: String,
          transaction_id: String,
          dispute_amount_cents: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CardDispute)
      end
      def create_dispute(
        id,
        # The reason category for the dispute.
        dispute_type:,
        # The cardholder's written evidence for the dispute.
        text_evidence:,
        # The ID of the card transaction being disputed. Must belong to this card.
        transaction_id:,
        # Optional disputed amount in cents. Defaults to the full transaction amount. Must
        # not exceed the transaction amount.
        dispute_amount_cents: nil,
        request_options: {}
      )
      end

      # Attaches an evidence file to a dispute on the card. Provide exactly one of
      # direct_upload_id or id.
      sig do
        params(
          dispute_id: String,
          id: String,
          attachment:
            WhopSDK::CardCreateDisputeAttachmentParams::Attachment::OrHash,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CardDispute)
      end
      def create_dispute_attachment(
        # Path param
        dispute_id,
        # Path param
        id:,
        # Body param
        attachment:,
        request_options: {}
      )
      end

      # Returns per-day spend totals for the last 30 days. NOTE: the aggregate is
      # account-level — every card on an account shares one collateral account, so the
      # totals cover all of the account's cards, not just this one.
      sig do
        params(
          id: String,
          timezone: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CardDailySpend)
      end
      def daily_spend(
        # The card ID.
        id,
        # IANA timezone (e.g. America/New_York) the daily buckets are computed in.
        # Defaults to UTC.
        timezone: nil,
        request_options: {}
      )
      end

      # Permanently cancels the card. This is irreversible.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Card)
      end
      def deactivate(id, request_options: {})
      end

      # Returns the on-chain deposit address used to fund the card's card account.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CardDepositAddress)
      end
      def deposit_address(
        # The card ID.
        id,
        request_options: {}
      )
      end

      # Freezes (locks) the card so it can no longer authorize.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Card)
      end
      def freeze_(id, request_options: {})
      end

      # Lists card transactions across every card on the account, newest first.
      sig do
        params(
          account_id: String,
          card_id: String,
          created_after: String,
          created_before: String,
          page: Integer,
          per: Integer,
          status: WhopSDK::CardTransactionsParams::Status::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CardTransactionList)
      end
      def transactions(
        # The business or user account ID that owns the cards.
        account_id:,
        # Filter to a single card on the account, by card ID.
        card_id: nil,
        # Only return transactions created at or after this ISO 8601 timestamp.
        created_after: nil,
        # Only return transactions created strictly before this ISO 8601 timestamp.
        created_before: nil,
        # The page number to retrieve.
        page: nil,
        # The number of transactions to return per page. Capped at 50.
        per: nil,
        # Filter to transactions with this status.
        status: nil,
        request_options: {}
      )
      end

      # Unfreezes (unlocks) a frozen card.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Card)
      end
      def unfreeze(id, request_options: {})
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
