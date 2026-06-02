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
      # @overload update(account_id, affiliate_application_required: nil, affiliate_instructions: nil, banner_image: nil, business_type: nil, description: nil, featured_affiliate_product_id: nil, industry_group: nil, industry_type: nil, logo: nil, metadata: nil, route: nil, send_customer_emails: nil, social_links: nil, target_audience: nil, title: nil, request_options: {})
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
      # @param description [String, nil] A promotional description for the account.
      #
      # @param featured_affiliate_product_id [String, nil] The ID of the product to feature for affiliates. Pass null to clear.
      #
      # @param industry_group [String, nil] The industry group the account belongs to.
      #
      # @param industry_type [String, nil] The specific industry vertical the account operates in.
      #
      # @param logo [Hash{Symbol=>Object}, nil] Attachment input for the account logo.
      #
      # @param metadata [Hash{Symbol=>Object}] Arbitrary key/value metadata to store on the account.
      #
      # @param route [String, nil] The unique URL slug for the account.
      #
      # @param send_customer_emails [Boolean] Whether Whop sends transactional emails to customers on behalf of this account.
      #
      # @param social_links [Array<Hash{Symbol=>Object}>] The full list of social links to display for the account.
      #
      # @param target_audience [String, nil] The target audience for this account.
      #
      # @param title [String, nil] The display name of the account.
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
      # accounts; business account API keys return connected accounts.
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

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
