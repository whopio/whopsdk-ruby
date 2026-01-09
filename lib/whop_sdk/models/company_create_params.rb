# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#create
    class CompanyCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute email
      #   The email of the user who the company will belong to.
      #
      #   @return [String]
      required :email, String

      # @!attribute parent_company_id
      #   The company ID of the platform creating this company.
      #
      #   @return [String]
      required :parent_company_id, String

      # @!attribute title
      #   The name of the company being created.
      #
      #   @return [String]
      required :title, String

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      optional :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      optional :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute logo
      #   The logo for the company in png, jpeg, or gif format
      #
      #   @return [WhopSDK::Models::CompanyCreateParams::Logo, nil]
      optional :logo, -> { WhopSDK::CompanyCreateParams::Logo }, nil?: true

      # @!attribute metadata
      #   Additional metadata for the account
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails to customers on behalf of this company.
      #   Includes: order confirmations, payment failures, refund notifications, upcoming
      #   renewals, and membership cancelations/expirations. When disabled, the platform
      #   is responsible for handling these communications. This is defaulted to true.
      #
      #   @return [Boolean, nil]
      optional :send_customer_emails, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(email:, parent_company_id:, title:, business_type: nil, industry_type: nil, logo: nil, metadata: nil, send_customer_emails: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyCreateParams} for more details.
      #
      #   @param email [String] The email of the user who the company will belong to.
      #
      #   @param parent_company_id [String] The company ID of the platform creating this company.
      #
      #   @param title [String] The name of the company being created.
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param logo [WhopSDK::Models::CompanyCreateParams::Logo, nil] The logo for the company in png, jpeg, or gif format
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Additional metadata for the account
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
        #   The logo for the company in png, jpeg, or gif format
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
