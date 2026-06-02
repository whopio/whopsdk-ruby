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

      # @!attribute social_links
      #   The full list of social links to display for the account.
      #
      #   @return [Array<Hash{Symbol=>Object}>, nil]
      optional :social_links,
               WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]]

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

      # @!method initialize(account_id:, affiliate_application_required: nil, affiliate_instructions: nil, banner_image: nil, business_type: nil, description: nil, featured_affiliate_product_id: nil, industry_group: nil, industry_type: nil, logo: nil, metadata: nil, route: nil, send_customer_emails: nil, social_links: nil, target_audience: nil, title: nil, request_options: {})
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
      #   @param description [String, nil] A promotional description for the account.
      #
      #   @param featured_affiliate_product_id [String, nil] The ID of the product to feature for affiliates. Pass null to clear.
      #
      #   @param industry_group [String, nil] The industry group the account belongs to.
      #
      #   @param industry_type [String, nil] The specific industry vertical the account operates in.
      #
      #   @param logo [Hash{Symbol=>Object}, nil] Attachment input for the account logo.
      #
      #   @param metadata [Hash{Symbol=>Object}] Arbitrary key/value metadata to store on the account.
      #
      #   @param route [String, nil] The unique URL slug for the account.
      #
      #   @param send_customer_emails [Boolean] Whether Whop sends transactional emails to customers on behalf of this account.
      #
      #   @param social_links [Array<Hash{Symbol=>Object}>] The full list of social links to display for the account.
      #
      #   @param target_audience [String, nil] The target audience for this account.
      #
      #   @param title [String, nil] The display name of the account.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
