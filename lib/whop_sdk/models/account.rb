# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Accounts#create
    class Account < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the account, which will look like biz\_******\*******
      #
      #   @return [String]
      required :id, String

      # @!attribute banner_image_url
      #   The URL of the account banner image
      #
      #   @return [String, nil]
      required :banner_image_url, String, nil?: true

      # @!attribute business_type
      #   The high-level business category for the account
      #
      #   @return [String, nil]
      required :business_type, String, nil?: true

      # @!attribute country
      #   The country the account is located in
      #
      #   @return [String, nil]
      required :country, String, nil?: true

      # @!attribute created_at
      #   When the account was created, as an ISO 8601 timestamp
      #
      #   @return [String]
      required :created_at, String

      # @!attribute description
      #   A promotional description for the account
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute email
      #   The email address of the account owner
      #
      #   @return [String, nil]
      required :email, String, nil?: true

      # @!attribute home_preferences
      #
      #   @return [Array<String>]
      required :home_preferences, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute industry_group
      #   The industry group the account belongs to
      #
      #   @return [String, nil]
      required :industry_group, String, nil?: true

      # @!attribute industry_type
      #   The specific industry vertical the account operates in
      #
      #   @return [String, nil]
      required :industry_type, String, nil?: true

      # @!attribute invoice_prefix
      #   The prefix used for account invoices
      #
      #   @return [String, nil]
      required :invoice_prefix, String, nil?: true

      # @!attribute logo_url
      #   The URL of the account logo image
      #
      #   @return [String, nil]
      required :logo_url, String, nil?: true

      # @!attribute metadata
      #   Arbitrary key/value metadata supplied when the account was created
      #
      #   @return [Object]
      required :metadata, WhopSDK::Internal::Type::Unknown

      # @!attribute onboarding_type
      #   The type of onboarding the account has completed
      #
      #   @return [String, nil]
      required :onboarding_type, String, nil?: true

      # @!attribute opengraph_image_url
      #   The URL of the account Open Graph image
      #
      #   @return [String, nil]
      required :opengraph_image_url, String, nil?: true

      # @!attribute opengraph_image_variant
      #   The account Open Graph image variant
      #
      #   @return [String, nil]
      required :opengraph_image_variant, String, nil?: true

      # @!attribute other_business_description
      #   The description of the business type when business_type is other
      #
      #   @return [String, nil]
      required :other_business_description, String, nil?: true

      # @!attribute other_industry_description
      #   The description of the industry type when industry_type is other
      #
      #   @return [String, nil]
      required :other_industry_description, String, nil?: true

      # @!attribute parent_account_id
      #   The parent account ID for connected accounts
      #
      #   @return [String, nil]
      required :parent_account_id, String, nil?: true

      # @!attribute require_2fa
      #   Whether the account requires authorized users to have two-factor authentication
      #   enabled
      #
      #   @return [Boolean]
      required :require_2fa, WhopSDK::Internal::Type::Boolean

      # @!attribute route
      #   The account's public route identifier
      #
      #   @return [String]
      required :route, String

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails to customers on behalf of this account
      #
      #   @return [Boolean]
      required :send_customer_emails, WhopSDK::Internal::Type::Boolean

      # @!attribute show_joined_whops
      #   Whether the account appears in joined whops on other accounts
      #
      #   @return [Boolean]
      required :show_joined_whops, WhopSDK::Internal::Type::Boolean

      # @!attribute show_reviews_dtc
      #   Whether reviews are displayed on direct-to-consumer product pages
      #
      #   @return [Boolean]
      required :show_reviews_dtc, WhopSDK::Internal::Type::Boolean

      # @!attribute show_user_directory
      #   Whether the account shows users in the user directory
      #
      #   @return [Boolean]
      required :show_user_directory, WhopSDK::Internal::Type::Boolean

      # @!attribute social_links
      #
      #   @return [Array<WhopSDK::Models::AccountSocialLink>]
      required :social_links, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink] }

      # @!attribute store_page_config
      #   Store page display configuration for the account
      #
      #   @return [Object]
      required :store_page_config, WhopSDK::Internal::Type::Unknown

      # @!attribute target_audience
      #   The target audience for this account
      #
      #   @return [String, nil]
      required :target_audience, String, nil?: true

      # @!attribute title
      #   The display name of the account
      #
      #   @return [String]
      required :title, String

      # @!attribute use_logo_as_opengraph_image_fallback
      #   Whether the account uses its logo as the fallback Open Graph image
      #
      #   @return [Boolean]
      required :use_logo_as_opengraph_image_fallback, WhopSDK::Internal::Type::Boolean

      # @!attribute wallet
      #   The account's primary crypto wallet, or null if none has been provisioned
      #
      #   @return [WhopSDK::Models::AccountWallet, nil]
      required :wallet, -> { WhopSDK::AccountWallet }, nil?: true

      # @!method initialize(id:, banner_image_url:, business_type:, country:, created_at:, description:, email:, home_preferences:, industry_group:, industry_type:, invoice_prefix:, logo_url:, metadata:, onboarding_type:, opengraph_image_url:, opengraph_image_variant:, other_business_description:, other_industry_description:, parent_account_id:, require_2fa:, route:, send_customer_emails:, show_joined_whops:, show_reviews_dtc:, show_user_directory:, social_links:, store_page_config:, target_audience:, title:, use_logo_as_opengraph_image_fallback:, wallet:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Account}
      #   for more details.
      #
      #   @param id [String] The ID of the account, which will look like biz\_******\*******
      #
      #   @param banner_image_url [String, nil] The URL of the account banner image
      #
      #   @param business_type [String, nil] The high-level business category for the account
      #
      #   @param country [String, nil] The country the account is located in
      #
      #   @param created_at [String] When the account was created, as an ISO 8601 timestamp
      #
      #   @param description [String, nil] A promotional description for the account
      #
      #   @param email [String, nil] The email address of the account owner
      #
      #   @param home_preferences [Array<String>]
      #
      #   @param industry_group [String, nil] The industry group the account belongs to
      #
      #   @param industry_type [String, nil] The specific industry vertical the account operates in
      #
      #   @param invoice_prefix [String, nil] The prefix used for account invoices
      #
      #   @param logo_url [String, nil] The URL of the account logo image
      #
      #   @param metadata [Object] Arbitrary key/value metadata supplied when the account was created
      #
      #   @param onboarding_type [String, nil] The type of onboarding the account has completed
      #
      #   @param opengraph_image_url [String, nil] The URL of the account Open Graph image
      #
      #   @param opengraph_image_variant [String, nil] The account Open Graph image variant
      #
      #   @param other_business_description [String, nil] The description of the business type when business_type is other
      #
      #   @param other_industry_description [String, nil] The description of the industry type when industry_type is other
      #
      #   @param parent_account_id [String, nil] The parent account ID for connected accounts
      #
      #   @param require_2fa [Boolean] Whether the account requires authorized users to have two-factor authentication
      #
      #   @param route [String] The account's public route identifier
      #
      #   @param send_customer_emails [Boolean] Whether Whop sends transactional emails to customers on behalf of this account
      #
      #   @param show_joined_whops [Boolean] Whether the account appears in joined whops on other accounts
      #
      #   @param show_reviews_dtc [Boolean] Whether reviews are displayed on direct-to-consumer product pages
      #
      #   @param show_user_directory [Boolean] Whether the account shows users in the user directory
      #
      #   @param social_links [Array<WhopSDK::Models::AccountSocialLink>]
      #
      #   @param store_page_config [Object] Store page display configuration for the account
      #
      #   @param target_audience [String, nil] The target audience for this account
      #
      #   @param title [String] The display name of the account
      #
      #   @param use_logo_as_opengraph_image_fallback [Boolean] Whether the account uses its logo as the fallback Open Graph image
      #
      #   @param wallet [WhopSDK::Models::AccountWallet, nil] The account's primary crypto wallet, or null if none has been provisioned
    end
  end
end
