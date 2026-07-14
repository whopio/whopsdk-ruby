# typed: strong

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
      sig { returns(WhopSDK::Resources::Accounts::Preferences) }
      attr_reader :preferences

      # Creates an account. User tokens create business accounts; business account API
      # keys create connected accounts. Tax fields (`tax_remitted_by`,
      # `product_tax_code_id`, `business_address`, `tax_identifiers`) are configured
      # with Update Account, not at creation.
      sig do
        params(
          email: String,
          metadata: T::Hash[Symbol, T.anything],
          title: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Account)
      end
      def create(
        # The email address of the account owner. Required for business account API key
        # requests.
        email: nil,
        # Arbitrary key/value metadata to store on the account.
        metadata: nil,
        # The display name of the account. Defaults to `metadata.external_id` or the
        # owner's email when omitted.
        title: nil,
        request_options: {}
      )
      end

      # Retrieves a single account visible to the credential, including its crypto
      # wallet.
      sig do
        params(
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Account)
      end
      def retrieve(
        # Account ID, prefixed `biz_`.
        account_id,
        request_options: {}
      )
      end

      # Updates an account. User tokens can update business accounts; business account
      # API keys can update connected accounts.
      sig do
        params(
          account_id: String,
          affiliate_application_required: T::Boolean,
          affiliate_instructions: T.nilable(String),
          banner_image: T.nilable(T::Hash[Symbol, T.anything]),
          business_address:
            WhopSDK::AccountUpdateParams::BusinessAddress::OrHash,
          business_type: T.nilable(String),
          country: T.nilable(String),
          description: T.nilable(String),
          featured_affiliate_product_id: T.nilable(String),
          home_preferences: T::Array[String],
          industry_group: T.nilable(String),
          industry_type: T.nilable(String),
          invoice_prefix: T.nilable(String),
          logo: T.nilable(T::Hash[Symbol, T.anything]),
          metadata: T::Hash[Symbol, T.anything],
          onboarding_type: T.nilable(String),
          opengraph_image: T.nilable(T::Hash[Symbol, T.anything]),
          opengraph_image_variant: T.nilable(String),
          other_business_description: T.nilable(String),
          other_industry_description: T.nilable(String),
          product_tax_code_id: T.nilable(String),
          require_2fa: T::Boolean,
          route: T.nilable(String),
          send_customer_emails: T::Boolean,
          show_joined_whops: T::Boolean,
          show_reviews_dtc: T::Boolean,
          show_user_directory: T::Boolean,
          social_links: T::Array[T::Hash[Symbol, T.anything]],
          store_page_config: T.nilable(T::Hash[Symbol, T.anything]),
          target_audience: T.nilable(String),
          tax_identifiers:
            T::Array[WhopSDK::AccountUpdateParams::TaxIdentifier::OrHash],
          tax_remitted_by:
            WhopSDK::AccountUpdateParams::TaxRemittedBy::OrSymbol,
          title: T.nilable(String),
          use_logo_as_opengraph_image_fallback: T::Boolean,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Account)
      end
      def update(
        # Account ID, prefixed `biz_`.
        account_id,
        # Whether prospective affiliates must submit an application before promoting this
        # account.
        affiliate_application_required: nil,
        # Guidelines shown to affiliates promoting this account.
        affiliate_instructions: nil,
        # Attachment input for the account banner image.
        banner_image: nil,
        # Account business address used to calculate tax. A complete address in a
        # supported country is required when `tax_remitted_by` is `self`.
        business_address: nil,
        # High-level business category for the account.
        business_type: nil,
        # Country where the account is located.
        country: nil,
        # Account promotional description.
        description: nil,
        # The ID of the product to feature for affiliates. Pass `null` to clear.
        featured_affiliate_product_id: nil,
        # Public account home page preferences.
        home_preferences: nil,
        # Account industry group.
        industry_group: nil,
        # Specific industry vertical for the account.
        industry_type: nil,
        # Prefix used for account invoices.
        invoice_prefix: nil,
        # Attachment input for the account logo.
        logo: nil,
        # Arbitrary key/value metadata to store on the account.
        metadata: nil,
        # The type of onboarding the account has completed.
        onboarding_type: nil,
        # Attachment input for the account Open Graph image.
        opengraph_image: nil,
        # The account Open Graph image variant.
        opengraph_image_variant: nil,
        # The description of the business type when business_type is other.
        other_business_description: nil,
        # The description of the industry type when industry_type is other.
        other_industry_description: nil,
        # ID of the tax classification code applied by default to the account's products.
        # See the available
        # [product categories](https://docs.numeral.com/essentials/product-categories).
        product_tax_code_id: nil,
        # Whether the account requires authorized users to have two-factor authentication
        # enabled.
        require_2fa: nil,
        # The unique URL slug for the account.
        route: nil,
        # Whether Whop sends transactional emails to customers on behalf of this account.
        send_customer_emails: nil,
        # Whether the account appears in joined whops on other accounts.
        show_joined_whops: nil,
        # Whether reviews are displayed on direct-to-consumer product pages.
        show_reviews_dtc: nil,
        # Whether the account shows users in the user directory.
        show_user_directory: nil,
        # The full list of social links to display for the account.
        social_links: nil,
        # Account store page display configuration.
        store_page_config: nil,
        # The target audience for this account.
        target_audience: nil,
        # Account tax/VAT registrations to add or update. When `tax_remitted_by` is
        # `self`, tax is calculated and collected only in the countries where the account
        # holds a registration.
        tax_identifiers: nil,
        # Who calculates and remits tax for the account: `whop` (Whop calculates and
        # remits), `self` (Whop calculates; the account collects and remits), or `none`
        # (neither; the account is responsible). `self` requires a `business_address` in a
        # supported country.
        tax_remitted_by: nil,
        # The display name of the account.
        title: nil,
        # Whether the account uses its logo as the fallback Open Graph image.
        use_logo_as_opengraph_image_fallback: nil,
        request_options: {}
      )
      end

      # Lists accounts visible to the credential. User tokens return the user's business
      # accounts; business account API keys return the requesting business account and
      # its connected accounts.
      sig do
        params(
          after: String,
          before: String,
          direction: WhopSDK::AccountListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AccountListParams::Order::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::Account])
      end
      def list(
        # A cursor; returns accounts after this position.
        after: nil,
        # A cursor; returns accounts before this position.
        before: nil,
        # Sort direction.
        direction: nil,
        # The number of accounts to return (default 10, max 50).
        first: nil,
        # The number of accounts to return from the end of the range.
        last: nil,
        # The field to sort accounts by.
        order: nil,
        request_options: {}
      )
      end

      # Retrieves the business account associated with the current business account API
      # key.
      sig do
        params(request_options: WhopSDK::RequestOptions::OrHash).returns(
          WhopSDK::Account
        )
      end
      def me(request_options: {})
      end

      # Lists the recommended actions computed for the account — the same set embedded
      # on the account resource, served on their own so a caller can fetch just the
      # recommendations.
      sig do
        params(
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AccountRecommendActionsResponse)
      end
      def recommend_actions(
        # Account ID, prefixed `biz_`.
        account_id,
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
