# typed: strong

module WhopSDK
  module Resources
    class Accounts
      # Creates an account. User tokens create business accounts; business account API
      # keys create connected accounts.
      sig do
        params(
          email: String,
          metadata: T::Hash[Symbol, T.anything],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Account)
      end
      def create(
        # The email address of the account owner. Required for business account API key
        # requests.
        email: nil,
        # Arbitrary key/value metadata to store on the account.
        metadata: nil,
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
        # The ID of the account, which will look like biz\_******\*******
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
          require_2fa: T::Boolean,
          route: T.nilable(String),
          send_customer_emails: T::Boolean,
          show_joined_whops: T::Boolean,
          show_reviews_dtc: T::Boolean,
          show_user_directory: T::Boolean,
          social_links: T::Array[T::Hash[Symbol, T.anything]],
          store_page_config: T.nilable(T::Hash[Symbol, T.anything]),
          target_audience: T.nilable(String),
          title: T.nilable(String),
          use_logo_as_opengraph_image_fallback: T::Boolean,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Account)
      end
      def update(
        # The ID of the account, which will look like biz\_******\*******
        account_id,
        # Whether prospective affiliates must submit an application before promoting this
        # account.
        affiliate_application_required: nil,
        # Guidelines shown to affiliates promoting this account.
        affiliate_instructions: nil,
        # Attachment input for the account banner image.
        banner_image: nil,
        # The high-level business category for the account.
        business_type: nil,
        # The country the account is located in.
        country: nil,
        # A promotional description for the account.
        description: nil,
        # The ID of the product to feature for affiliates. Pass null to clear.
        featured_affiliate_product_id: nil,
        # Preferences for the public business home page.
        home_preferences: nil,
        # The industry group the account belongs to.
        industry_group: nil,
        # The specific industry vertical the account operates in.
        industry_type: nil,
        # The prefix to use for account invoices.
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
        # Store page display configuration for the account.
        store_page_config: nil,
        # The target audience for this account.
        target_audience: nil,
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
          page: Integer,
          per: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AccountListResponse)
      end
      def list(
        # The page number to retrieve
        page: nil,
        # The number of resources to return per page. There is a limit of 50 results per
        # page.
        per: nil,
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

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
