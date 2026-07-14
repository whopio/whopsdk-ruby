# typed: strong

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
        sig do
          params(
            account_id: String,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(WhopSDK::Models::Accounts::PreferenceRetrieveResponse)
        end
        def retrieve(
          # Account ID, prefixed `biz_`.
          account_id,
          request_options: {}
        )
        end

        # Updates the account's preferences. Each top-level key present in the body is
        # replaced as a whole; omitted keys are left untouched. `ads_payment_methods`
        # always requires a `primary` entry. `backup` is optional when the primary is
        # `platform_balance` — omitting it removes any configured card — while a `card`
        # primary requires a `platform_balance` backup. A `platform_balance` entry may
        # omit `id` to use the account's default Whop balance. Changing which funding
        # sources are configured requires a user token, while account API keys may only
        # swap `primary` and `backup`.
        sig do
          params(
            account_id: String,
            ads_payment_methods:
              WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::OrHash,
            request_options: WhopSDK::RequestOptions::OrHash
          ).returns(WhopSDK::Models::Accounts::PreferenceUpdateResponse)
        end
        def update(
          # Account ID, prefixed `biz_`.
          account_id,
          # How the account pays for Whop Ads spend. `primary` is charged first; `backup`
          # covers the charge when the primary fails.
          ads_payment_methods: nil,
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
end
