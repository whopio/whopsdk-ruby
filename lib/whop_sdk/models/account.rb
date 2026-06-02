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

      # @!attribute parent_account_id
      #   The parent account ID for connected accounts
      #
      #   @return [String, nil]
      required :parent_account_id, String, nil?: true

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

      # @!attribute social_links
      #
      #   @return [Array<WhopSDK::Models::AccountSocialLink>]
      required :social_links, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AccountSocialLink] }

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

      # @!attribute wallet
      #   The account's primary crypto wallet, or null if none has been provisioned
      #
      #   @return [WhopSDK::Models::AccountWallet, nil]
      required :wallet, -> { WhopSDK::AccountWallet }, nil?: true

      # @!method initialize(id:, banner_image_url:, business_type:, created_at:, description:, email:, industry_group:, industry_type:, logo_url:, metadata:, parent_account_id:, route:, send_customer_emails:, social_links:, target_audience:, title:, wallet:)
      #   @param id [String] The ID of the account, which will look like biz\_******\*******
      #
      #   @param banner_image_url [String, nil] The URL of the account banner image
      #
      #   @param business_type [String, nil] The high-level business category for the account
      #
      #   @param created_at [String] When the account was created, as an ISO 8601 timestamp
      #
      #   @param description [String, nil] A promotional description for the account
      #
      #   @param email [String, nil] The email address of the account owner
      #
      #   @param industry_group [String, nil] The industry group the account belongs to
      #
      #   @param industry_type [String, nil] The specific industry vertical the account operates in
      #
      #   @param logo_url [String, nil] The URL of the account logo image
      #
      #   @param metadata [Object] Arbitrary key/value metadata supplied when the account was created
      #
      #   @param parent_account_id [String, nil] The parent account ID for connected accounts
      #
      #   @param route [String] The account's public route identifier
      #
      #   @param send_customer_emails [Boolean] Whether Whop sends transactional emails to customers on behalf of this account
      #
      #   @param social_links [Array<WhopSDK::Models::AccountSocialLink>]
      #
      #   @param target_audience [String, nil] The target audience for this account
      #
      #   @param title [String] The display name of the account
      #
      #   @param wallet [WhopSDK::Models::AccountWallet, nil] The account's primary crypto wallet, or null if none has been provisioned
    end
  end
end
