# typed: strong

module WhopSDK
  module Models
    class AccountUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccountUpdateParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account_id

      # Whether prospective affiliates must submit an application before promoting this
      # account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :affiliate_application_required

      sig { params(affiliate_application_required: T::Boolean).void }
      attr_writer :affiliate_application_required

      # Guidelines shown to affiliates promoting this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :affiliate_instructions

      # Attachment input for the account banner image.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :banner_image

      # The high-level business category for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :business_type

      # The country the account is located in.
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      # A promotional description for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The ID of the product to feature for affiliates. Pass null to clear.
      sig { returns(T.nilable(String)) }
      attr_accessor :featured_affiliate_product_id

      # Preferences for the public business home page.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :home_preferences

      sig { params(home_preferences: T::Array[String]).void }
      attr_writer :home_preferences

      # The industry group the account belongs to.
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_group

      # The specific industry vertical the account operates in.
      sig { returns(T.nilable(String)) }
      attr_accessor :industry_type

      # The prefix to use for account invoices.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_prefix

      # Attachment input for the account logo.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :logo

      # Arbitrary key/value metadata to store on the account.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      # The type of onboarding the account has completed.
      sig { returns(T.nilable(String)) }
      attr_accessor :onboarding_type

      # Attachment input for the account Open Graph image.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :opengraph_image

      # The account Open Graph image variant.
      sig { returns(T.nilable(String)) }
      attr_accessor :opengraph_image_variant

      # The description of the business type when business_type is other.
      sig { returns(T.nilable(String)) }
      attr_accessor :other_business_description

      # The description of the industry type when industry_type is other.
      sig { returns(T.nilable(String)) }
      attr_accessor :other_industry_description

      # Whether the account requires authorized users to have two-factor authentication
      # enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_2fa

      sig { params(require_2fa: T::Boolean).void }
      attr_writer :require_2fa

      # The unique URL slug for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Whether Whop sends transactional emails to customers on behalf of this account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_customer_emails

      sig { params(send_customer_emails: T::Boolean).void }
      attr_writer :send_customer_emails

      # Whether the account appears in joined whops on other accounts.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_joined_whops

      sig { params(show_joined_whops: T::Boolean).void }
      attr_writer :show_joined_whops

      # Whether reviews are displayed on direct-to-consumer product pages.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_reviews_dtc

      sig { params(show_reviews_dtc: T::Boolean).void }
      attr_writer :show_reviews_dtc

      # Whether the account shows users in the user directory.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_user_directory

      sig { params(show_user_directory: T::Boolean).void }
      attr_writer :show_user_directory

      # The full list of social links to display for the account.
      sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
      attr_reader :social_links

      sig { params(social_links: T::Array[T::Hash[Symbol, T.anything]]).void }
      attr_writer :social_links

      # Store page display configuration for the account.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :store_page_config

      # The target audience for this account.
      sig { returns(T.nilable(String)) }
      attr_accessor :target_audience

      # The display name of the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Whether the account uses its logo as the fallback Open Graph image.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :use_logo_as_opengraph_image_fallback

      sig { params(use_logo_as_opengraph_image_fallback: T::Boolean).void }
      attr_writer :use_logo_as_opengraph_image_fallback

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
        ).returns(T.attached_class)
      end
      def self.new(
        account_id:,
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

      sig do
        override.returns(
          {
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
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
