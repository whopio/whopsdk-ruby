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
