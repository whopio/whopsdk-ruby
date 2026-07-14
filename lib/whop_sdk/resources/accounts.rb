# frozen_string_literal: true

module WhopSDK
  module Resources
    # An Account represents a person or business on Whop that can have its own
    # profile, wallet, and account-scoped settings. Use accounts for customers,
    # creators, merchants, sellers, or connected businesses your integration supports.
    #
    # Use the Accounts API to create accounts, list accounts visible to your
    # credentials, retrieve or update an account, and retrieve the account associated
    # with the current API key.
    class Accounts
      # An Account represents a person or business on Whop that can have its own
      # profile, wallet, and account-scoped settings. Use accounts for customers,
      # creators, merchants, sellers, or connected businesses your integration supports.
      #
      # Use the Accounts API to create accounts, list accounts visible to your
      # credentials, retrieve or update an account, and retrieve the account associated
      # with the current API key.
      # @return [WhopSDK::Resources::Accounts::Preferences]
      attr_reader :preferences

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AccountCreateParams} for more details.
      #
      # Creates an account. User tokens create business accounts; business account API
      # keys create connected accounts. Tax fields (`tax_remitted_by`,
      # `product_tax_code_id`, `business_address`, `tax_identifiers`) are configured
      # with Update Account, not at creation.
      #
      # @overload create(email: nil, metadata: nil, title: nil, request_options: {})
      #
      # @param email [String] The email address of the account owner. Required for business account API key re
      #
      # @param metadata [Hash{Symbol=>Object}] Arbitrary key/value metadata to store on the account.
      #
      # @param title [String] The display name of the account. Defaults to `metadata.external_id` or the owner
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Account]
      #
      # @see WhopSDK::Models::AccountCreateParams
      def create(params = {})
        parsed, options = WhopSDK::AccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "accounts",
          body: parsed,
          model: WhopSDK::Account,
          options: options
        )
      end

      # Retrieves a single account visible to the credential, including its crypto
      # wallet.
      #
      # @overload retrieve(account_id, request_options: {})
      #
      # @param account_id [String] Account ID, prefixed `biz_`.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Account]
      #
      # @see WhopSDK::Models::AccountRetrieveParams
      def retrieve(account_id, params = {})
        @client.request(
          method: :get,
          path: ["accounts/%1$s", account_id],
          model: WhopSDK::Account,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AccountUpdateParams} for more details.
      #
      # Updates an account. User tokens can update business accounts; business account
      # API keys can update connected accounts.
      #
      # @overload update(account_id, affiliate_application_required: nil, affiliate_instructions: nil, banner_image: nil, business_address: nil, business_type: nil, country: nil, description: nil, featured_affiliate_product_id: nil, home_preferences: nil, industry_group: nil, industry_type: nil, invoice_prefix: nil, logo: nil, metadata: nil, onboarding_type: nil, opengraph_image: nil, opengraph_image_variant: nil, other_business_description: nil, other_industry_description: nil, product_tax_code_id: nil, require_2fa: nil, route: nil, send_customer_emails: nil, show_joined_whops: nil, show_reviews_dtc: nil, show_user_directory: nil, social_links: nil, store_page_config: nil, target_audience: nil, tax_identifiers: nil, tax_remitted_by: nil, title: nil, use_logo_as_opengraph_image_fallback: nil, request_options: {})
      #
      # @param account_id [String] Account ID, prefixed `biz_`.
      #
      # @param affiliate_application_required [Boolean] Whether prospective affiliates must submit an application before promoting this
      #
      # @param affiliate_instructions [String, nil] Guidelines shown to affiliates promoting this account.
      #
      # @param banner_image [Hash{Symbol=>Object}, nil] Attachment input for the account banner image.
      #
      # @param business_address [WhopSDK::Models::AccountUpdateParams::BusinessAddress] Account business address used to calculate tax. A complete address in a supporte
      #
      # @param business_type [String, nil] High-level business category for the account.
      #
      # @param country [String, nil] Country where the account is located.
      #
      # @param description [String, nil] Account promotional description.
      #
      # @param featured_affiliate_product_id [String, nil] The ID of the product to feature for affiliates. Pass `null` to clear.
      #
      # @param home_preferences [Array<String>] Public account home page preferences.
      #
      # @param industry_group [String, nil] Account industry group.
      #
      # @param industry_type [String, nil] Specific industry vertical for the account.
      #
      # @param invoice_prefix [String, nil] Prefix used for account invoices.
      #
      # @param logo [Hash{Symbol=>Object}, nil] Attachment input for the account logo.
      #
      # @param metadata [Hash{Symbol=>Object}] Arbitrary key/value metadata to store on the account.
      #
      # @param onboarding_type [String, nil] The type of onboarding the account has completed.
      #
      # @param opengraph_image [Hash{Symbol=>Object}, nil] Attachment input for the account Open Graph image.
      #
      # @param opengraph_image_variant [String, nil] The account Open Graph image variant.
      #
      # @param other_business_description [String, nil] The description of the business type when business_type is other.
      #
      # @param other_industry_description [String, nil] The description of the industry type when industry_type is other.
      #
      # @param product_tax_code_id [String, nil] ID of the tax classification code applied by default to the account's products.
      #
      # @param require_2fa [Boolean] Whether the account requires authorized users to have two-factor authentication
      #
      # @param route [String, nil] The unique URL slug for the account.
      #
      # @param send_customer_emails [Boolean] Whether Whop sends transactional emails to customers on behalf of this account.
      #
      # @param show_joined_whops [Boolean] Whether the account appears in joined whops on other accounts.
      #
      # @param show_reviews_dtc [Boolean] Whether reviews are displayed on direct-to-consumer product pages.
      #
      # @param show_user_directory [Boolean] Whether the account shows users in the user directory.
      #
      # @param social_links [Array<Hash{Symbol=>Object}>] The full list of social links to display for the account.
      #
      # @param store_page_config [Hash{Symbol=>Object}, nil] Account store page display configuration.
      #
      # @param target_audience [String, nil] The target audience for this account.
      #
      # @param tax_identifiers [Array<WhopSDK::Models::AccountUpdateParams::TaxIdentifier>] Account tax/VAT registrations to add or update. When `tax_remitted_by` is `self`
      #
      # @param tax_remitted_by [Symbol, WhopSDK::Models::AccountUpdateParams::TaxRemittedBy] Who calculates and remits tax for the account: `whop` (Whop calculates and remit
      #
      # @param title [String, nil] The display name of the account.
      #
      # @param use_logo_as_opengraph_image_fallback [Boolean] Whether the account uses its logo as the fallback Open Graph image.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Account]
      #
      # @see WhopSDK::Models::AccountUpdateParams
      def update(account_id, params = {})
        parsed, options = WhopSDK::AccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["accounts/%1$s", account_id],
          body: parsed,
          model: WhopSDK::Account,
          options: options
        )
      end

      # Lists accounts visible to the credential. User tokens return the user's business
      # accounts; business account API keys return the requesting business account and
      # its connected accounts.
      #
      # @overload list(after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, request_options: {})
      #
      # @param after [String] A cursor; returns accounts after this position.
      #
      # @param before [String] A cursor; returns accounts before this position.
      #
      # @param direction [Symbol, WhopSDK::Models::AccountListParams::Direction] Sort direction.
      #
      # @param first [Integer] The number of accounts to return (default 10, max 50).
      #
      # @param last [Integer] The number of accounts to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::AccountListParams::Order] The field to sort accounts by.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Account>]
      #
      # @see WhopSDK::Models::AccountListParams
      def list(params = {})
        parsed, options = WhopSDK::AccountListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "accounts",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Account,
          options: options
        )
      end

      # Retrieves the business account associated with the current business account API
      # key.
      #
      # @overload me(request_options: {})
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Account]
      #
      # @see WhopSDK::Models::AccountMeParams
      def me(params = {})
        @client.request(
          method: :get,
          path: "accounts/me",
          model: WhopSDK::Account,
          options: params[:request_options]
        )
      end

      # Lists the recommended actions computed for the account — the same set embedded
      # on the account resource, served on their own so a caller can fetch just the
      # recommendations.
      #
      # @overload recommend_actions(account_id, request_options: {})
      #
      # @param account_id [String] Account ID, prefixed `biz_`.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AccountRecommendActionsResponse]
      #
      # @see WhopSDK::Models::AccountRecommendActionsParams
      def recommend_actions(account_id, params = {})
        @client.request(
          method: :get,
          path: ["accounts/%1$s/recommend_actions", account_id],
          model: WhopSDK::Models::AccountRecommendActionsResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
        @preferences = WhopSDK::Resources::Accounts::Preferences.new(client: client)
      end
    end
  end
end
