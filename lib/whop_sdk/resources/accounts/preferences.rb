# frozen_string_literal: true

module WhopSDK
  module Resources
    class Accounts
      # An Account represents a person or business on Whop that can have its own
      # profile, wallet, and account-scoped settings. Use accounts for customers,
      # creators, merchants, sellers, or connected businesses your integration supports.
      #
      # Use the Accounts API to create accounts, list accounts visible to your
      # credentials, retrieve or update an account, and retrieve the account associated
      # with the current API key.
      class Preferences
        # Retrieves the account's preferences: a singleton settings document keyed by
        # preference name.
        #
        # @overload retrieve(account_id, request_options: {})
        #
        # @param account_id [String] Account ID, prefixed `biz_`.
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Models::Accounts::PreferenceRetrieveResponse]
        #
        # @see WhopSDK::Models::Accounts::PreferenceRetrieveParams
        def retrieve(account_id, params = {})
          @client.request(
            method: :get,
            path: ["accounts/%1$s/preferences", account_id],
            model: WhopSDK::Models::Accounts::PreferenceRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {WhopSDK::Models::Accounts::PreferenceUpdateParams} for more details.
        #
        # Updates the account's preferences. Each top-level key present in the body is
        # replaced as a whole; omitted keys are left untouched. `ads_payment_methods`
        # always requires a `primary` entry. `backup` is optional when the primary is
        # `platform_balance` — omitting it removes any configured card — while a `card`
        # primary requires a `platform_balance` backup. A `platform_balance` entry may
        # omit `id` to use the account's default Whop balance. Changing which funding
        # sources are configured requires a user token, while account API keys may only
        # swap `primary` and `backup`.
        #
        # @overload update(account_id, ads_payment_methods: nil, request_options: {})
        #
        # @param account_id [String] Account ID, prefixed `biz_`.
        #
        # @param ads_payment_methods [WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods] How the account pays for Whop Ads spend. `primary` is charged first; `backup` co
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Models::Accounts::PreferenceUpdateResponse]
        #
        # @see WhopSDK::Models::Accounts::PreferenceUpdateParams
        def update(account_id, params = {})
          parsed, options = WhopSDK::Accounts::PreferenceUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["accounts/%1$s/preferences", account_id],
            body: parsed,
            model: WhopSDK::Models::Accounts::PreferenceUpdateResponse,
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
end
