# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Accounts#update
    class AccountUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute affiliate_application_required
      #   Whether prospective affiliates must submit an application before promoting this
      #   account.
      #
      #   @return [Boolean, nil]
      optional :affiliate_application_required, WhopSDK::Internal::Type::Boolean

      # @!attribute affiliate_instructions
      #   Guidelines shown to affiliates promoting this account.
      #
      #   @return [String, nil]
      optional :affiliate_instructions, String, nil?: true

      # @!attribute banner_image
      #   Attachment input for the account banner image.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :banner_image, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute business_type
      #   The high-level business category for the account.
      #
      #   @return [String, nil]
      optional :business_type, String, nil?: true

      # @!attribute country
      #   The country the account is located in.
      #
      #   @return [String, nil]
      optional :country, String, nil?: true

      # @!attribute description
      #   A promotional description for the account.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute featured_affiliate_product_id
      #   The ID of the product to feature for affiliates. Pass null to clear.
      #
      #   @return [String, nil]
      optional :featured_affiliate_product_id, String, nil?: true

      # @!attribute home_preferences
      #   Preferences for the public business home page.
      #
      #   @return [Array<String>, nil]
      optional :home_preferences, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute industry_group
      #   The industry group the account belongs to.
      #
      #   @return [String, nil]
      optional :industry_group, String, nil?: true

      # @!attribute industry_type
      #   The specific industry vertical the account operates in.
      #
      #   @return [String, nil]
      optional :industry_type, String, nil?: true

      # @!attribute invoice_prefix
      #   The prefix to use for account invoices.
      #
      #   @return [String, nil]
      optional :invoice_prefix, String, nil?: true

      # @!attribute logo
      #   Attachment input for the account logo.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :logo, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute metadata
      #   Arbitrary key/value metadata to store on the account.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute onboarding_type
      #   The type of onboarding the account has completed.
      #
      #   @return [String, nil]
      optional :onboarding_type, String, nil?: true

      # @!attribute opengraph_image
      #   Attachment input for the account Open Graph image.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :opengraph_image, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute opengraph_image_variant
      #   The account Open Graph image variant.
      #
      #   @return [String, nil]
      optional :opengraph_image_variant, String, nil?: true

      # @!attribute other_business_description
      #   The description of the business type when business_type is other.
      #
      #   @return [String, nil]
      optional :other_business_description, String, nil?: true

      # @!attribute other_industry_description
      #   The description of the industry type when industry_type is other.
      #
      #   @return [String, nil]
      optional :other_industry_description, String, nil?: true

      # @!attribute require_2fa
      #   Whether the account requires authorized users to have two-factor authentication
      #   enabled.
      #
      #   @return [Boolean, nil]
      optional :require_2fa, WhopSDK::Internal::Type::Boolean

      # @!attribute route
      #   The unique URL slug for the account.
      #
      #   @return [String, nil]
      optional :route, String, nil?: true

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails to customers on behalf of this account.
      #
      #   @return [Boolean, nil]
      optional :send_customer_emails, WhopSDK::Internal::Type::Boolean

      # @!attribute show_joined_whops
      #   Whether the account appears in joined whops on other accounts.
      #
      #   @return [Boolean, nil]
      optional :show_joined_whops, WhopSDK::Internal::Type::Boolean

      # @!attribute show_reviews_dtc
      #   Whether reviews are displayed on direct-to-consumer product pages.
      #
      #   @return [Boolean, nil]
      optional :show_reviews_dtc, WhopSDK::Internal::Type::Boolean

      # @!attribute show_user_directory
      #   Whether the account shows users in the user directory.
      #
      #   @return [Boolean, nil]
      optional :show_user_directory, WhopSDK::Internal::Type::Boolean

      # @!attribute social_links
      #   The full list of social links to display for the account.
      #
      #   @return [Array<Hash{Symbol=>Object}>, nil]
      optional :social_links,
               WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]]

      # @!attribute store_page_config
      #   Store page display configuration for the account.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :store_page_config,
               WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown],
               nil?: true

      # @!attribute target_audience
      #   The target audience for this account.
      #
      #   @return [String, nil]
      optional :target_audience, String, nil?: true

      # @!attribute title
      #   The display name of the account.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute use_logo_as_opengraph_image_fallback
      #   Whether the account uses its logo as the fallback Open Graph image.
      #
      #   @return [Boolean, nil]
      optional :use_logo_as_opengraph_image_fallback, WhopSDK::Internal::Type::Boolean

      # @!method initialize(account_id:, affiliate_application_required: nil, affiliate_instructions: nil, banner_image: nil, business_type: nil, country: nil, description: nil, featured_affiliate_product_id: nil, home_preferences: nil, industry_group: nil, industry_type: nil, invoice_prefix: nil, logo: nil, metadata: nil, onboarding_type: nil, opengraph_image: nil, opengraph_image_variant: nil, other_business_description: nil, other_industry_description: nil, require_2fa: nil, route: nil, send_customer_emails: nil, show_joined_whops: nil, show_reviews_dtc: nil, show_user_directory: nil, social_links: nil, store_page_config: nil, target_audience: nil, title: nil, use_logo_as_opengraph_image_fallback: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccountUpdateParams} for more details.
      #
      #   @param account_id [String]
      #
      #   @param affiliate_application_required [Boolean] Whether prospective affiliates must submit an application before promoting this
      #
      #   @param affiliate_instructions [String, nil] Guidelines shown to affiliates promoting this account.
      #
      #   @param banner_image [Hash{Symbol=>Object}, nil] Attachment input for the account banner image.
      #
      #   @param business_type [String, nil] The high-level business category for the account.
      #
      #   @param country [String, nil] The country the account is located in.
      #
      #   @param description [String, nil] A promotional description for the account.
      #
      #   @param featured_affiliate_product_id [String, nil] The ID of the product to feature for affiliates. Pass null to clear.
      #
      #   @param home_preferences [Array<String>] Preferences for the public business home page.
      #
      #   @param industry_group [String, nil] The industry group the account belongs to.
      #
      #   @param industry_type [String, nil] The specific industry vertical the account operates in.
      #
      #   @param invoice_prefix [String, nil] The prefix to use for account invoices.
      #
      #   @param logo [Hash{Symbol=>Object}, nil] Attachment input for the account logo.
      #
      #   @param metadata [Hash{Symbol=>Object}] Arbitrary key/value metadata to store on the account.
      #
      #   @param onboarding_type [String, nil] The type of onboarding the account has completed.
      #
      #   @param opengraph_image [Hash{Symbol=>Object}, nil] Attachment input for the account Open Graph image.
      #
      #   @param opengraph_image_variant [String, nil] The account Open Graph image variant.
      #
      #   @param other_business_description [String, nil] The description of the business type when business_type is other.
      #
      #   @param other_industry_description [String, nil] The description of the industry type when industry_type is other.
      #
      #   @param require_2fa [Boolean] Whether the account requires authorized users to have two-factor authentication
      #
      #   @param route [String, nil] The unique URL slug for the account.
      #
      #   @param send_customer_emails [Boolean] Whether Whop sends transactional emails to customers on behalf of this account.
      #
      #   @param show_joined_whops [Boolean] Whether the account appears in joined whops on other accounts.
      #
      #   @param show_reviews_dtc [Boolean] Whether reviews are displayed on direct-to-consumer product pages.
      #
      #   @param show_user_directory [Boolean] Whether the account shows users in the user directory.
      #
      #   @param social_links [Array<Hash{Symbol=>Object}>] The full list of social links to display for the account.
      #
      #   @param store_page_config [Hash{Symbol=>Object}, nil] Store page display configuration for the account.
      #
      #   @param target_audience [String, nil] The target audience for this account.
      #
      #   @param title [String, nil] The display name of the account.
      #
      #   @param use_logo_as_opengraph_image_fallback [Boolean] Whether the account uses its logo as the fallback Open Graph image.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
