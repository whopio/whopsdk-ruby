# frozen_string_literal: true

module WhopSDK
  module Resources
    # Cards represent Whop-issued virtual payment cards that spend from an account or
    # user balance. Cards can be assigned to cardholders and configured with spending
    # limits for controlled spending.
    #
    # Use the Cards API to issue cards, list cards for an account or user, and
    # retrieve active card details such as the card number and CVC.
    class Cards
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CardCreateParams} for more details.
      #
      # Issues a virtual card. For an individual (consumer) card issuing account, the
      # card is issued to the account's own cardholder. For a company (business) card
      # issuing account, pass assigned*user_id to issue the card to a company member; if
      # that member is not yet an approved card-issuing user, the card is provisioned
      # asynchronously or an onboarding invitation is sent (HTTP 202). Pass exactly one
      # of account_id (a biz* identifier) or user*id (a user* identifier). Returns the
      # newly created card resource.
      #
      # @overload create(account_id: nil, assigned_user_id: nil, name: nil, spend_limit: nil, spend_limit_frequency: nil, transaction_limit: nil, user_id: nil, request_options: {})
      #
      # @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      # @param assigned_user_id [String] The company member (a user\_ identifier) to assign the card to. Required for
      # comp
      #
      # @param name [String] A display name for the card.
      #
      # @param spend_limit [Float] Spending limit amount, in dollars.
      #
      # @param spend_limit_frequency [Symbol, WhopSDK::Models::CardCreateParams::SpendLimitFrequency] The spending limit window.
      #
      # @param transaction_limit [Float] Per-transaction limit amount, in dollars.
      #
      # @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardCreateResponse]
      #
      # @see WhopSDK::Models::CardCreateParams
      def create(params = {})
        parsed, options = WhopSDK::CardCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "cards",
          body: parsed,
          model: WhopSDK::Models::CardCreateResponse,
          options: options
        )
      end

      # Retrieves a single card by its icrd\_ identifier, including its secrets (full
      # card number, CVC, and cardholder name) for active cards.
      #
      # @overload retrieve(card_id, account_id: nil, user_id: nil, request_options: {})
      #
      # @param card_id [String] Card ID to retrieve, prefixed `icrd_`.
      #
      # @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      # @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardRetrieveResponse]
      #
      # @see WhopSDK::Models::CardRetrieveParams
      def retrieve(card_id, params = {})
        parsed, options = WhopSDK::CardRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["cards/%1$s", card_id],
          query: query,
          model: WhopSDK::Models::CardRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CardUpdateParams} for more details.
      #
      # Updates an issued card. All fields are optional; only the fields you pass are
      # changed. Updates the card name, billing address, and spending limits in one
      # call, sets a new PIN, freezes or unfreezes the card, or cancels it. Pass
      # canceled: true alone to cancel the card — cancellation is permanent and a
      # canceled card cannot be uncanceled. Pass exactly one of account*id (a biz*
      # identifier) or user*id (a user* identifier). Assigned cardholders without the
      # payout:account:update scope can update the PIN and freeze state of their own
      # card. The PIN can only be changed on a card assigned to the acting user. Returns
      # the updated card resource.
      #
      # @overload update(card_id, account_id: nil, billing: nil, canceled: nil, frozen: nil, name: nil, pin: nil, remove_limit: nil, spend_limit: nil, spend_limit_frequency: nil, transaction_limit: nil, user_id: nil, request_options: {})
      #
      # @param card_id [String] Card ID to retrieve, prefixed `icrd_`.
      #
      # @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      # @param billing [WhopSDK::Models::CardUpdateParams::Billing] New billing address. Requires line1, city, region, postal_code, and country_code
      #
      # @param canceled [Boolean] Pass `true` to permanently cancel the card. A canceled card cannot be uncanceled
      #
      # @param frozen [Boolean] Pass `true` to freeze the card, `false` to unfreeze it.
      #
      # @param name [String] A display name for the card.
      #
      # @param pin [String] New 4-digit PIN. Can only be set on a card assigned to the acting user.
      #
      # @param remove_limit [Boolean] Pass `true` to remove the spending limit (make the card unlimited).
      #
      # @param spend_limit [Float] Spending limit amount, in dollars.
      #
      # @param spend_limit_frequency [Symbol, WhopSDK::Models::CardUpdateParams::SpendLimitFrequency] The spending limit window.
      #
      # @param transaction_limit [Float] Per-transaction limit amount, in dollars.
      #
      # @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardUpdateResponse]
      #
      # @see WhopSDK::Models::CardUpdateParams
      def update(card_id, params = {})
        parsed, options = WhopSDK::CardUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["cards/%1$s", card_id],
          body: parsed,
          model: WhopSDK::Models::CardUpdateResponse,
          options: options
        )
      end

      # Lists issued Whop virtual cards for an account or user, including pending
      # invitation cards that have not been issued by the card provider yet. Pass
      # exactly one of account*id (a biz* identifier) or user*id (a user* identifier).
      # Non-owner team members only see cards assigned to them. Users without the
      # payout:account:read scope can still list cards assigned to them (for example
      # moderators or external cardholders). Use GET /cards/:card_id to retrieve a
      # single card with its secrets.
      #
      # @overload list(account_id: nil, user_id: nil, request_options: {})
      #
      # @param account_id [String] The owning account ID (a biz\_ identifier). Provide this or user_id.
      #
      # @param user_id [String] The owning user ID (a user\_ identifier). Provide this or account_id.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardListResponse]
      #
      # @see WhopSDK::Models::CardListParams
      def list(params = {})
        parsed, options = WhopSDK::CardListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "cards",
          query: query,
          model: WhopSDK::Models::CardListResponse,
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
