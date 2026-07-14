# typed: strong

module WhopSDK
  module Resources
    # Cards represent Whop-issued virtual payment cards that spend from an account or
    # user balance. Cards can be assigned to cardholders and configured with spending
    # limits for controlled spending.
    #
    # Use the Cards API to issue cards, list cards for an account or user, and
    # retrieve active card details such as the card number and CVC.
    class Cards
      # Issues a virtual card. For an individual (consumer) card issuing account, the
      # card is issued to the account's own cardholder. For a company (business) card
      # issuing account, pass assigned*user_id to issue the card to a company member; if
      # that member is not yet an approved card-issuing user, the card is provisioned
      # asynchronously or an onboarding invitation is sent (HTTP 202). Pass exactly one
      # of account_id (a biz* identifier) or user*id (a user* identifier). Returns the
      # newly created card resource.
      sig do
        params(
          account_id: String,
          assigned_user_id: String,
          name: String,
          spend_limit: Float,
          spend_limit_frequency:
            WhopSDK::CardCreateParams::SpendLimitFrequency::OrSymbol,
          transaction_limit: Float,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::CardCreateResponse)
      end
      def create(
        # The owning account ID (a biz\_ identifier). Provide this or user_id.
        account_id: nil,
        # The company member (a user\_ identifier) to assign the card to. Required for
        # company (business) card issuing accounts.
        assigned_user_id: nil,
        # A display name for the card.
        name: nil,
        # Spending limit amount, in dollars.
        spend_limit: nil,
        # The spending limit window.
        spend_limit_frequency: nil,
        # Per-transaction limit amount, in dollars.
        transaction_limit: nil,
        # The owning user ID (a user\_ identifier). Provide this or account_id.
        user_id: nil,
        request_options: {}
      )
      end

      # Retrieves a single card by its icrd\_ identifier, including its secrets (full
      # card number, CVC, and cardholder name) for active cards.
      sig do
        params(
          card_id: String,
          account_id: String,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::CardRetrieveResponse)
      end
      def retrieve(
        # Card ID to retrieve, prefixed `icrd_`.
        card_id,
        # The owning account ID (a biz\_ identifier). Provide this or user_id.
        account_id: nil,
        # The owning user ID (a user\_ identifier). Provide this or account_id.
        user_id: nil,
        request_options: {}
      )
      end

      # Updates an issued card. All fields are optional; only the fields you pass are
      # changed. Updates the card name, billing address, and spending limits in one
      # call, sets a new PIN, freezes or unfreezes the card, or cancels it. Pass
      # canceled: true alone to cancel the card — cancellation is permanent and a
      # canceled card cannot be uncanceled. Pass exactly one of account*id (a biz*
      # identifier) or user*id (a user* identifier). Assigned cardholders without the
      # payout:account:update scope can update the PIN and freeze state of their own
      # card. The PIN can only be changed on a card assigned to the acting user. Returns
      # the updated card resource.
      sig do
        params(
          card_id: String,
          account_id: String,
          billing: WhopSDK::CardUpdateParams::Billing::OrHash,
          canceled: T::Boolean,
          frozen: T::Boolean,
          name: String,
          pin: String,
          remove_limit: T::Boolean,
          spend_limit: Float,
          spend_limit_frequency:
            WhopSDK::CardUpdateParams::SpendLimitFrequency::OrSymbol,
          transaction_limit: Float,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::CardUpdateResponse)
      end
      def update(
        # Card ID to retrieve, prefixed `icrd_`.
        card_id,
        # The owning account ID (a biz\_ identifier). Provide this or user_id.
        account_id: nil,
        # New billing address. Requires line1, city, region, postal_code, and
        # country_code.
        billing: nil,
        # Pass `true` to permanently cancel the card. A canceled card cannot be
        # uncanceled. Cannot be combined with other fields.
        canceled: nil,
        # Pass `true` to freeze the card, `false` to unfreeze it.
        frozen: nil,
        # A display name for the card.
        name: nil,
        # New 4-digit PIN. Can only be set on a card assigned to the acting user.
        pin: nil,
        # Pass `true` to remove the spending limit (make the card unlimited).
        remove_limit: nil,
        # Spending limit amount, in dollars.
        spend_limit: nil,
        # The spending limit window.
        spend_limit_frequency: nil,
        # Per-transaction limit amount, in dollars.
        transaction_limit: nil,
        # The owning user ID (a user\_ identifier). Provide this or account_id.
        user_id: nil,
        request_options: {}
      )
      end

      # Lists issued Whop virtual cards for an account or user, including pending
      # invitation cards that have not been issued by the card provider yet. Pass
      # exactly one of account*id (a biz* identifier) or user*id (a user* identifier).
      # Non-owner team members only see cards assigned to them. Users without the
      # payout:account:read scope can still list cards assigned to them (for example
      # moderators or external cardholders). Use GET /cards/:card_id to retrieve a
      # single card with its secrets.
      sig do
        params(
          account_id: String,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::CardListResponse)
      end
      def list(
        # The owning account ID (a biz\_ identifier). Provide this or user_id.
        account_id: nil,
        # The owning user ID (a user\_ identifier). Provide this or account_id.
        user_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
