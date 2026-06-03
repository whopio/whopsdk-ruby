# typed: strong

module WhopSDK
  module Models
    class Account < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Account, WhopSDK::Internal::AnyHash) }

      # The ID of the account, which will look like biz\_******\*******
      sig { returns(String) }
      attr_accessor :id

      # The URL of the account banner image
      sig { returns(T.nilable(String)) }
      attr_accessor :banner_image_url

      # The high-level business category for the account
      sig { returns(T.nilable(String)) }
      attr_accessor :business_type

      # The country the account is located in
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      # When the account was created, as an ISO 8601 timestamp
      sig { returns(String) }
      attr_accessor :created_at

      # A promotional description for the account
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The email address of the account owner
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T::Array[String]) }
      attr_accessor :home_preferences

      # The industry group the account belongs to
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_group

      # The specific industry vertical the account operates in
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_type

      # The prefix used for account invoices
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_prefix

      # The URL of the account logo image
      sig { returns(T.nilable(String)) }
      attr_accessor :logo_url

      # Arbitrary key/value metadata supplied when the account was created
      sig { returns(T.anything) }
      attr_accessor :metadata

      # The type of onboarding the account has completed
      sig { returns(T.nilable(String)) }
      attr_accessor :onboarding_type

      # The URL of the account Open Graph image
      sig { returns(T.nilable(String)) }
      attr_accessor :opengraph_image_url

      # The account Open Graph image variant
      sig { returns(T.nilable(String)) }
      attr_accessor :opengraph_image_variant

      # The description of the business type when business_type is other
      sig { returns(T.nilable(String)) }
      attr_accessor :other_business_description

      # The description of the industry type when industry_type is other
      sig { returns(T.nilable(String)) }
      attr_accessor :other_industry_description

      # The parent account ID for connected accounts
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_account_id

      # Whether the account requires authorized users to have two-factor authentication
      # enabled
      sig { returns(T::Boolean) }
      attr_accessor :require_2fa

      # The account's public route identifier
      sig { returns(String) }
      attr_accessor :route

      # Whether Whop sends transactional emails to customers on behalf of this account
      sig { returns(T::Boolean) }
      attr_accessor :send_customer_emails

      # Whether the account appears in joined whops on other accounts
      sig { returns(T::Boolean) }
      attr_accessor :show_joined_whops

      # Whether reviews are displayed on direct-to-consumer product pages
      sig { returns(T::Boolean) }
      attr_accessor :show_reviews_dtc

      # Whether the account shows users in the user directory
      sig { returns(T::Boolean) }
      attr_accessor :show_user_directory

      sig { returns(T::Array[WhopSDK::AccountSocialLink]) }
      attr_accessor :social_links

      # Store page display configuration for the account
      sig { returns(T.anything) }
      attr_accessor :store_page_config

      # The target audience for this account
      sig { returns(T.nilable(String)) }
      attr_accessor :target_audience

      # The display name of the account
      sig { returns(String) }
      attr_accessor :title

      # Whether the account uses its logo as the fallback Open Graph image
      sig { returns(T::Boolean) }
      attr_accessor :use_logo_as_opengraph_image_fallback

      # The account's primary crypto wallet, or null if none has been provisioned
      sig { returns(T.nilable(WhopSDK::AccountWallet)) }
      attr_reader :wallet

      sig { params(wallet: T.nilable(WhopSDK::AccountWallet::OrHash)).void }
      attr_writer :wallet

      sig do
        params(
          id: String,
          banner_image_url: T.nilable(String),
          business_type: T.nilable(String),
          country: T.nilable(String),
          created_at: String,
          description: T.nilable(String),
          email: T.nilable(String),
          home_preferences: T::Array[String],
          industry_group: T.nilable(String),
          industry_type: T.nilable(String),
          invoice_prefix: T.nilable(String),
          logo_url: T.nilable(String),
          metadata: T.anything,
          onboarding_type: T.nilable(String),
          opengraph_image_url: T.nilable(String),
          opengraph_image_variant: T.nilable(String),
          other_business_description: T.nilable(String),
          other_industry_description: T.nilable(String),
          parent_account_id: T.nilable(String),
          require_2fa: T::Boolean,
          route: String,
          send_customer_emails: T::Boolean,
          show_joined_whops: T::Boolean,
          show_reviews_dtc: T::Boolean,
          show_user_directory: T::Boolean,
          social_links: T::Array[WhopSDK::AccountSocialLink::OrHash],
          store_page_config: T.anything,
          target_audience: T.nilable(String),
          title: String,
          use_logo_as_opengraph_image_fallback: T::Boolean,
          wallet: T.nilable(WhopSDK::AccountWallet::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the account, which will look like biz\_******\*******
        id:,
        # The URL of the account banner image
        banner_image_url:,
        # The high-level business category for the account
        business_type:,
        # The country the account is located in
        country:,
        # When the account was created, as an ISO 8601 timestamp
        created_at:,
        # A promotional description for the account
        description:,
        # The email address of the account owner
        email:,
        home_preferences:,
        # The industry group the account belongs to
        industry_group:,
        # The specific industry vertical the account operates in
        industry_type:,
        # The prefix used for account invoices
        invoice_prefix:,
        # The URL of the account logo image
        logo_url:,
        # Arbitrary key/value metadata supplied when the account was created
        metadata:,
        # The type of onboarding the account has completed
        onboarding_type:,
        # The URL of the account Open Graph image
        opengraph_image_url:,
        # The account Open Graph image variant
        opengraph_image_variant:,
        # The description of the business type when business_type is other
        other_business_description:,
        # The description of the industry type when industry_type is other
        other_industry_description:,
        # The parent account ID for connected accounts
        parent_account_id:,
        # Whether the account requires authorized users to have two-factor authentication
        # enabled
        require_2fa:,
        # The account's public route identifier
        route:,
        # Whether Whop sends transactional emails to customers on behalf of this account
        send_customer_emails:,
        # Whether the account appears in joined whops on other accounts
        show_joined_whops:,
        # Whether reviews are displayed on direct-to-consumer product pages
        show_reviews_dtc:,
        # Whether the account shows users in the user directory
        show_user_directory:,
        social_links:,
        # Store page display configuration for the account
        store_page_config:,
        # The target audience for this account
        target_audience:,
        # The display name of the account
        title:,
        # Whether the account uses its logo as the fallback Open Graph image
        use_logo_as_opengraph_image_fallback:,
        # The account's primary crypto wallet, or null if none has been provisioned
        wallet:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            banner_image_url: T.nilable(String),
            business_type: T.nilable(String),
            country: T.nilable(String),
            created_at: String,
            description: T.nilable(String),
            email: T.nilable(String),
            home_preferences: T::Array[String],
            industry_group: T.nilable(String),
            industry_type: T.nilable(String),
            invoice_prefix: T.nilable(String),
            logo_url: T.nilable(String),
            metadata: T.anything,
            onboarding_type: T.nilable(String),
            opengraph_image_url: T.nilable(String),
            opengraph_image_variant: T.nilable(String),
            other_business_description: T.nilable(String),
            other_industry_description: T.nilable(String),
            parent_account_id: T.nilable(String),
            require_2fa: T::Boolean,
            route: String,
            send_customer_emails: T::Boolean,
            show_joined_whops: T::Boolean,
            show_reviews_dtc: T::Boolean,
            show_user_directory: T::Boolean,
            social_links: T::Array[WhopSDK::AccountSocialLink],
            store_page_config: T.anything,
            target_audience: T.nilable(String),
            title: String,
            use_logo_as_opengraph_image_fallback: T::Boolean,
            wallet: T.nilable(WhopSDK::AccountWallet)
          }
        )
      end
      def to_hash
      end
    end
  end
end
