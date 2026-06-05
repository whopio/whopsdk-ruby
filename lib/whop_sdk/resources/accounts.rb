# frozen_string_literal: true

module WhopSDK
  module Resources
    class Accounts
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AccountCreateParams} for more details.
      #
      # Creates an account. User tokens create business accounts; business account API
      # keys create connected accounts.
      #
      # @overload create(email: nil, metadata: nil, request_options: {})
      #
      # @param email [String] The email address of the account owner. Required for business account API key re
      #
      # @param metadata [Hash{Symbol=>Object}] Arbitrary key/value metadata to store on the account.
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
      # @param account_id [String] The ID of the account, which will look like biz\_******\*******
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
      # @overload update(account_id, affiliate_application_required: nil, affiliate_instructions: nil, banner_image: nil, business_type: nil, country: nil, description: nil, featured_affiliate_product_id: nil, home_preferences: nil, industry_group: nil, industry_type: nil, invoice_prefix: nil, logo: nil, metadata: nil, onboarding_type: nil, opengraph_image: nil, opengraph_image_variant: nil, other_business_description: nil, other_industry_description: nil, require_2fa: nil, route: nil, send_customer_emails: nil, show_joined_whops: nil, show_reviews_dtc: nil, show_user_directory: nil, social_links: nil, store_page_config: nil, target_audience: nil, title: nil, use_logo_as_opengraph_image_fallback: nil, request_options: {})
      #
      # @param account_id [String] The ID of the account, which will look like biz\_******\*******
      #
      # @param affiliate_application_required [Boolean] Whether prospective affiliates must submit an application before promoting this
      #
      # @param affiliate_instructions [String, nil] Guidelines shown to affiliates promoting this account.
      #
      # @param banner_image [Hash{Symbol=>Object}, nil] Attachment input for the account banner image.
      #
      # @param business_type [String, nil] The high-level business category for the account.
      #
      # @param country [String, nil] The country the account is located in.
      #
      # @param description [String, nil] A promotional description for the account.
      #
      # @param featured_affiliate_product_id [String, nil] The ID of the product to feature for affiliates. Pass null to clear.
      #
      # @param home_preferences [Array<String>] Preferences for the public business home page.
      #
      # @param industry_group [String, nil] The industry group the account belongs to.
      #
      # @param industry_type [String, nil] The specific industry vertical the account operates in.
      #
      # @param invoice_prefix [String, nil] The prefix to use for account invoices.
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
      # @param store_page_config [Hash{Symbol=>Object}, nil] Store page display configuration for the account.
      #
      # @param target_audience [String, nil] The target audience for this account.
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

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AccountListParams} for more details.
      #
      # Lists accounts visible to the credential. User tokens return the user's business
      # accounts; business account API keys return the requesting business account and
      # its connected accounts.
      #
      # @overload list(page: nil, per: nil, request_options: {})
      #
      # @param page [Integer] The page number to retrieve
      #
      # @param per [Integer] The number of resources to return per page. There is a limit of 50 results per p
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AccountListResponse]
      #
      # @see WhopSDK::Models::AccountListParams
      def list(params = {})
        parsed, options = WhopSDK::AccountListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "accounts",
          query: query,
          model: WhopSDK::Models::AccountListResponse,
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

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
