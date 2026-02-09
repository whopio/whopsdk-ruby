# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#create
    class CompanyCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute title
      #   The display name of the company shown to customers.
      #
      #   @return [String]
      required :title, String

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      optional :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute description
      #   A promotional pitch displayed to potential customers on the company's store
      #   page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute email
      #   The email address of the user who will own the connected account. Required when
      #   parent_company_id is provided.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      optional :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute logo
      #   The company's logo image. Accepts PNG, JPEG, or GIF format.
      #
      #   @return [WhopSDK::Models::CompanyCreateParams::Logo, nil]
      optional :logo, -> { WhopSDK::CompanyCreateParams::Logo }, nil?: true

      # @!attribute metadata
      #   A key-value JSON object of custom metadata to store on the company.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute parent_company_id
      #   The unique identifier of the parent platform company. When provided, creates a
      #   connected account under that platform. Omit to create a company for the current
      #   user.
      #
      #   @return [String, nil]
      optional :parent_company_id, String, nil?: true

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails to customers on behalf of this company.
      #   Only applies when creating a connected account.
      #
      #   @return [Boolean, nil]
      optional :send_customer_emails, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(title:, business_type: nil, description: nil, email: nil, industry_type: nil, logo: nil, metadata: nil, parent_company_id: nil, send_customer_emails: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyCreateParams} for more details.
      #
      #   @param title [String] The display name of the company shown to customers.
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param description [String, nil] A promotional pitch displayed to potential customers on the company's store page
      #
      #   @param email [String, nil] The email address of the user who will own the connected account. Required when
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param logo [WhopSDK::Models::CompanyCreateParams::Logo, nil] The company's logo image. Accepts PNG, JPEG, or GIF format.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] A key-value JSON object of custom metadata to store on the company.
      #
      #   @param parent_company_id [String, nil] The unique identifier of the parent platform company. When provided, creates a c
      #
      #   @param send_customer_emails [Boolean, nil] Whether Whop sends transactional emails to customers on behalf of this company.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Logo < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company's logo image. Accepts PNG, JPEG, or GIF format.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
