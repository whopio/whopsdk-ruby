# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#list
    class CompanyListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the company.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      required :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute created_at
      #   The datetime the company was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The creator pitch for the company.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      required :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute logo
      #   The company's logo.
      #
      #   @return [WhopSDK::Models::CompanyListResponse::Logo, nil]
      required :logo, -> { WhopSDK::Models::CompanyListResponse::Logo }, nil?: true

      # @!attribute member_count
      #   The number of members in the company.
      #
      #   @return [Integer]
      required :member_count, Integer

      # @!attribute metadata
      #   A key-value store of data for the account, created/updated by the platform that
      #   made the account.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute owner_user
      #   The user who owns this company
      #
      #   @return [WhopSDK::Models::CompanyListResponse::OwnerUser]
      required :owner_user, -> { WhopSDK::Models::CompanyListResponse::OwnerUser }

      # @!attribute published_reviews_count
      #   The number of reviews that have been published for the company.
      #
      #   @return [Integer]
      required :published_reviews_count, Integer

      # @!attribute route
      #   The slug/route of the company on the Whop site.
      #
      #   @return [String]
      required :route, String

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails to customers on behalf of this company.
      #
      #   @return [Boolean]
      required :send_customer_emails, WhopSDK::Internal::Type::Boolean

      # @!attribute title
      #   The title of the company.
      #
      #   @return [String]
      required :title, String

      # @!attribute updated_at
      #   The datetime the company was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute verified
      #   If the company is Whop Verified
      #
      #   @return [Boolean]
      required :verified, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, business_type:, created_at:, description:, industry_type:, logo:, member_count:, metadata:, owner_user:, published_reviews_count:, route:, send_customer_emails:, title:, updated_at:, verified:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyListResponse} for more details.
      #
      #   A company is a seller on Whop. Companies own products, manage members, and
      #   receive payouts.
      #
      #   @param id [String] The unique identifier for the company.
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param created_at [Time] The datetime the company was created.
      #
      #   @param description [String, nil] The creator pitch for the company.
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param logo [WhopSDK::Models::CompanyListResponse::Logo, nil] The company's logo.
      #
      #   @param member_count [Integer] The number of members in the company.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] A key-value store of data for the account, created/updated by the platform that
      #
      #   @param owner_user [WhopSDK::Models::CompanyListResponse::OwnerUser] The user who owns this company
      #
      #   @param published_reviews_count [Integer] The number of reviews that have been published for the company.
      #
      #   @param route [String] The slug/route of the company on the Whop site.
      #
      #   @param send_customer_emails [Boolean] Whether Whop sends transactional emails to customers on behalf of this company.
      #
      #   @param title [String] The title of the company.
      #
      #   @param updated_at [Time] The datetime the company was last updated.
      #
      #   @param verified [Boolean] If the company is Whop Verified

      # @see WhopSDK::Models::CompanyListResponse#logo
      class Logo < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   This is the URL you use to render optimized attachments on the client. This
        #   should be used for apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CompanyListResponse::Logo} for more details.
        #
        #   The company's logo.
        #
        #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
      end

      # @see WhopSDK::Models::CompanyListResponse#owner_user
      class OwnerUser < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who owns this company
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
